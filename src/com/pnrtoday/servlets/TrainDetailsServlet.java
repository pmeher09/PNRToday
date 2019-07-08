package com.pnrtoday.servlets;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
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

@WebServlet("/trainDetails")
public class TrainDetailsServlet extends HttpServlet {
	private static final String pbapikey = "16180a5b4ca0f35155d3534665cdc50e";
	private static final String pbapisign = "721713c36adabbfbad4520a15f8601bfe7f28a3d";
	private static final String apikey="wckfl8999";

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String message = "";
		String trainNumber = req.getParameter("trainNumber");
		System.out.println("trainNumber: " + trainNumber);
		String pnrResponse = getRouteScheduled(trainNumber, "json");
		System.out.println(pnrResponse);

		if (pnrResponse.equals("101")) {
			message = "Invalid train.";
		} else if (pnrResponse.equals("102")) {
			message = "Invalid train.";
		} else {

			JSONParser parser = new JSONParser();
			List<PNRPassenger> passengersList = new ArrayList<>();
			try {
				Object obj = parser.parse(pnrResponse);

				JSONObject jsonObject = (JSONObject) obj;
				long responseCode = (long) jsonObject.get("response_code");

				if (responseCode == 200) {
					
					
				} else {

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
			//req.setAttribute("pnrStatus", pnrStatus);
		}
		req.setAttribute("message", message);
		RequestDispatcher dispatcher = req.getRequestDispatcher("trainDetails.jsp");
		dispatcher.forward(req, resp);

	}

	
	public static String getRouteScheduled(String train, String format) {
		if (train == null || train.trim().length() != 5) {
			// Some more validations like only numeric are used etc can be
			// added.
			return "101";
		}

		format = format == null || format.trim().equals("") ? "xml" : format;
		String endpoint = "http://api.railwayapi.com/name_number/"+train+"/bhopal/apikey/" + apikey; 
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
