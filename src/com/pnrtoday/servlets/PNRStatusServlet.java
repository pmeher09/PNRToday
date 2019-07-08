package com.pnrtoday.servlets;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.pnrtoday.entiry.PNRPassenger;
import com.pnrtoday.entiry.PNRStatus;

@WebServlet("/getPnrStatus")
public class PNRStatusServlet extends HttpServlet {
	private static final String apikey = "wckfl8999";

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String message = "";
		PNRStatus pnrStatus = new PNRStatus();
		String pnrNumber = req.getParameter("pnrNumber");
		System.out.println("pnrNumber: " + pnrNumber);
		String pnrResponse = getPnrResponse(pnrNumber, "json");
		System.out.println(pnrResponse);

		if (pnrResponse.equals("101")) {
			message = "Invalid PNR";
		} else if (pnrResponse.equals("102")) {
			message = "Invalid PNR";
		} else {

			JSONParser parser = new JSONParser();
			List<PNRPassenger> passengersList = new ArrayList<>();
			try {
				Object obj = parser.parse(pnrResponse);

				JSONObject jsonObject = (JSONObject) obj;
				long responseCode = (long) jsonObject.get("response_code");

				if (responseCode == 200) {
					String pnr = (String) jsonObject.get("pnr");
					String trainNum = (String) jsonObject.get("train_num");
					String doj = (String) jsonObject.get("doj");
					String tktClass = (String) jsonObject.get("class");
					String trainName = (String) jsonObject.get("train_name");

					JSONObject from = (JSONObject) jsonObject
							.get("from_station");
					JSONObject to = (JSONObject) jsonObject.get("to_station");
					JSONObject upto = (JSONObject) jsonObject
							.get("reservation_upto");
					JSONObject boarding = (JSONObject) jsonObject
							.get("boarding_point");

					String fromStation = (String) from.get("name");
					String toStation = (String) to.get("name");
					String upToStation = (String) upto.get("name");
					String boardingPoint = (String) boarding.get("name");

					String noOfPassengers = (long) jsonObject
							.get("total_passengers") + "";
					String chartPrepared = (String) jsonObject
							.get("chart_prepared");
					if (chartPrepared.equals("N")) {
						chartPrepared = "CHAT NOT PREPARED";
					} else if (chartPrepared.equals("Y")) {
						chartPrepared = "CHAT PREPARED";
					} else {
						chartPrepared = "-";
					}
					pnrStatus = new PNRStatus(pnr, trainNum, doj, tktClass,
							noOfPassengers, chartPrepared);
					pnrStatus.setFromStation(fromStation);
					pnrStatus.setToStation(toStation);
					pnrStatus.setReservationUpTo(upToStation);
					pnrStatus.setBoardingPoint(boardingPoint);
					pnrStatus.setTrainName(trainName);

					Object passengersObject = jsonObject.get("passengers");
					if (passengersObject != null) {
						JSONArray jsonArray = (JSONArray) passengersObject;
						System.out.println(jsonArray);
						for (int i = 0; i < jsonArray.size(); i++) {

							JSONObject passengerJSON = (JSONObject) parser
									.parse(jsonArray.get(i).toString());
							PNRPassenger pnrPassenger = new PNRPassenger(
									passengerJSON.get("current_status")
											.toString(), passengerJSON.get(
											"booking_status").toString(),
									passengerJSON.get("no").toString());
							passengersList.add(pnrPassenger);

						}
						pnrStatus.setPassengers(passengersList);
					}
				} else if(responseCode==204){
					message="Unable to get PNR status. <br />May be your PNR has been flushed or PNR has not yet been generated.";
				}else{
					message="Unable to get PNR status. <br />Please come back after 10 or 15 minutes and try to check again.";
				}

			} catch (ParseException pe) {
				System.out.println("position: " + pe.getPosition());
				System.out.println(pe);
			} catch (Exception e) {
				System.out.println("Exception");
				System.out.println(e);
				System.out.println(e.getMessage());
			}
			System.out.println("LIST : " + passengersList);
			req.setAttribute("pnrStatus", pnrStatus);
		}
		req.setAttribute("message", message);
		RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
		dispatcher.forward(req, resp);

	}

	public static String getPnrResponse(String pnr, String format) {
		if (pnr == null || pnr.trim().length() != 10) {
			// Some more validations like only numeric are used etc can be
			// added.
			return "101";
		}

		format = format == null || format.trim().equals("") ? "xml" : format;
		// More validations can be added like format is one of xml or json.
		// String endpoint = "http://railpnrapi.com/test/check_pnr/pnr/" + pnr
		// + "/format/" + format + "/pbapikey/" + pbapikey + "/pbapisign/"
		// + pbapisign;
		String endpoint = "http://api.railwayapi.com/pnr_status/pnr/" + pnr
				+ "/apikey/" + apikey;
		System.out.println(endpoint);

		HttpURLConnection request = null;
		BufferedReader rd = null;
		StringBuilder response = null;

		try {
			URL endpointUrl = new URL(endpoint);
			request = (HttpURLConnection) endpointUrl.openConnection();
			request.setRequestMethod("GET");
			request.connect();

			rd = new BufferedReader(new InputStreamReader(
					request.getInputStream()));
			response = new StringBuilder();
			String line = null;
			while ((line = rd.readLine()) != null) {
				response.append(line + "\n");
			}
		} catch (UnknownHostException uhe) {
			System.out.println("Exception: " + uhe.getMessage());
			// Unable to connect
		} catch (MalformedURLException e) {
			System.out.println("Exception: " + e.getMessage());
			e.printStackTrace();
		} catch (ProtocolException e) {
			System.out.println("Exception: " + e.getMessage());
			e.printStackTrace();
		} catch (IOException e) {
			System.out.println("Exception: " + e.getMessage());
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("Exception: " + e.getMessage());
			e.printStackTrace();
		} finally {
			try {
				request.disconnect();
			} catch (Exception e) {
			}

			if (rd != null) {
				try {
					rd.close();
				} catch (IOException ex) {
				}
				rd = null;
			}
		}

		return response != null ? response.toString() : "102";
	}

}
