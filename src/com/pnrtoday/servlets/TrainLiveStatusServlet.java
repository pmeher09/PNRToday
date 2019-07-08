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
import java.util.Date;
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

import com.pnrtoday.constants.PnrTodayConstants;
import com.pnrtoday.entiry.TrainLiveRoute;
import com.pnrtoday.entiry.TrainLiveStatus;
import com.pnrtoday.util.DateUtil;

@WebServlet("/getTrainLiveStatus")
public class TrainLiveStatusServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String message = "";
		TrainLiveStatus trainLiveStatus = new TrainLiveStatus();
		String trainNumber = req.getParameter("trainNumber");
		System.out.println("trainNumber: " + trainNumber);
		String liveResponse = getLiveStatusResponse(trainNumber, "json");
		System.out.println(liveResponse);

		if (liveResponse.equals("101")) {
			message = "Invalid Train";
		} else if (liveResponse.equals("102")) {
			message = "Invalid Train";
		} else {

			JSONParser parser = new JSONParser();
			try {
				Object obj = parser.parse(liveResponse);

				JSONObject jsonObject = (JSONObject) obj;
				long responseCode = (long) jsonObject.get("response_code");

				if (responseCode == 200) {

					String train_number = (String) jsonObject
							.get("train_number");
					String position = (String) jsonObject.get("position");
					trainLiveStatus.setTrainNum(train_number);
					trainLiveStatus.setPosition(position);
					Object routesObject = jsonObject.get("route");

					if (routesObject != null) {
						JSONArray jsonArray = (JSONArray) routesObject;
						System.out.println(jsonArray);
						List liveRoutes = new ArrayList<TrainLiveRoute>();
						for (int i = 0; i < jsonArray.size(); i++) {

							JSONObject routeJSON = (JSONObject) parser
									.parse(jsonArray.get(i).toString());

							String station = (String) routeJSON.get("station");
							String scharr = (String) routeJSON.get("scharr");
							String schdep = (String) routeJSON.get("schdep");
							String actarr = (String) routeJSON.get("actarr");
							String actdep = (String) routeJSON.get("actdep");
							String scharr_date = (String) routeJSON
									.get("scharr_date");
							String actarr_date = (String) routeJSON
									.get("actarr_date");
							String no = routeJSON.get("no") + "";
							String day = routeJSON.get("day") + "";
							String distance = (long) routeJSON.get("distance")
									+ "";
							long late = (long) routeJSON.get("latemin");
							String latemin = late + " mins";
							if (late > 0) {
								latemin = "<span style='color:red;'>" + late
										+ " mins </span>";
							}
							if (late < 0) {
								latemin = "<span style='color:green;'>" + late
										+ " mins </span>";
							}
							boolean has_arrived = (boolean) routeJSON
									.get("has_arrived");
							boolean has_departed = (boolean) routeJSON
									.get("has_departed");

							String hadArrived = "NO";
							String hadDeparted = "NO";
							if (has_arrived) {
								hadArrived = "<span style='color:red;'>YES</span>";
							}
							if (has_departed) {
								hadArrived = "<span style='color:red;'>YES</span>";
								hadDeparted = "<span style='color:red;'>YES</span>";
							}
							TrainLiveRoute liveRoute = new TrainLiveRoute(no,
									station, hadArrived, hadDeparted, day,
									distance, scharr, schdep, actarr, actdep,
									scharr_date, actarr_date, latemin);
							liveRoutes.add(liveRoute);
						}
						trainLiveStatus.setLiveRoutes(liveRoutes);
					}

				} else if (responseCode == 204) {
					message = "Unable to get live status. <br />May be your train number is not valid.";
				} else {
					message = "Unable to get live status. <br />Please come back after 10 or 15 minutes and try to check again.";
				}

			} catch (ParseException pe) {
				System.out.println("position: " + pe.getPosition());
				System.out.println(pe);
			} catch (Exception e) {
				System.out.println("Exception");
				System.out.println(e);
				System.out.println(e.getMessage());
			}
			req.setAttribute("trainLiveStatus", trainLiveStatus);
		}
		req.setAttribute("message", message);
		RequestDispatcher dispatcher = req
				.getRequestDispatcher("liveTrain.jsp");
		dispatcher.forward(req, resp);

	}

	public static String getLiveStatusResponse(String trainNumber, String format) {
		if (trainNumber == null || trainNumber.trim().length() != 5) {
			// Some more validations like only numeric are used etc can be
			// added.
			return "101";
		}
		String dateOfJourney = DateUtil.getTodayDateForLiveTrain(new Date());
		System.out.println("Date: " + dateOfJourney);
		format = format == null || format.trim().equals("") ? "xml" : format;
		// http://api.railwayapi.com/live/train/<train
		// number>/doj/<yyyymmdd>/apikey/<apikey>
		String endpoint = "http://api.railwayapi.com/live/train/" + trainNumber
				+ "/doj/" + dateOfJourney + "/apikey/"
				+ PnrTodayConstants.apikey;
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
