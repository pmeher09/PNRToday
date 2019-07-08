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

import com.pnrtoday.entiry.Classes;
import com.pnrtoday.entiry.Days;
import com.pnrtoday.entiry.Route;
import com.pnrtoday.entiry.TrainRoute;

@WebServlet("/getTrainRoute")
public class TrainRouteServlet extends HttpServlet {
	private static final String apikey = "wckfl8999";

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String message = "";
		String trainNumber = req.getParameter("trainNumber");
		System.out.println("trainNumber: " + trainNumber);
		String pnrResponse = getRouteScheduled(trainNumber, "json");
		System.out.println(pnrResponse);

		TrainRoute trainRoute = new TrainRoute();
		trainRoute.setTrainNum(trainNumber);
		if (pnrResponse.equals("101")) {
			message = "Invalid train.";
		} else if (pnrResponse.equals("102")) {
			message = "Invalid train.";
		} else {

			JSONParser parser = new JSONParser();
			List<Route> routes = new ArrayList<>();
			try {
				Object obj = parser.parse(pnrResponse);

				JSONObject jsonObject = (JSONObject) obj;
				long responseCode = (long) jsonObject.get("response_code");

				if (responseCode == 200) {
					System.out.println(jsonObject.get("route"));
					Object routeObject = jsonObject.get("route");
					if (routeObject != null) {
						JSONArray jsonArray = (JSONArray) routeObject;
						System.out.println(jsonArray);
						for (int i = 0; i < jsonArray.size(); i++) {

							JSONObject routeJSON = (JSONObject) parser
									.parse(jsonArray.get(i).toString());
							Route route = new Route();
							route.setCode(routeJSON.get("code").toString());
							route.setDay((long) routeJSON.get("day"));
							route.setDistance((long) routeJSON.get("distance"));
							route.setFullname(routeJSON.get("fullname")
									.toString());
							route.setHalt(routeJSON.get("halt").toString());
							route.setLat(routeJSON.get("lat").toString());
							route.setLng(routeJSON.get("lng").toString());
							route.setNo((long) routeJSON.get("no"));
							route.setRoute((long) routeJSON.get("route"));
							route.setScharr(routeJSON.get("scharr").toString());
							route.setSchdep(routeJSON.get("schdep").toString());
							route.setState(routeJSON.get("state").toString());

							routes.add(route);
						}
					}

					trainRoute.setRoutes(routes);
					System.out.println(jsonObject.get("train"));
					JSONObject trainObject = (JSONObject) jsonObject
							.get("train");

					if (trainObject != null) {
						String trainName = trainObject.get("name").toString();
						trainRoute.setTrainName(trainName);
						ArrayList<Classes> classesList = new ArrayList<>();
						JSONArray classesArray = (JSONArray) trainObject
								.get("classes");
						System.out.println(classesArray);
						for (int i = 0; i < classesArray.size(); i++) {

							JSONObject classesJSON = (JSONObject) parser
									.parse(classesArray.get(i).toString());

							Classes classes = new Classes(classesJSON.get(
									"available").toString(), classesJSON.get(
									"class-code").toString());
							classesList.add(classes);
						}
						trainRoute.setClasses(classesList);

						ArrayList<Days> daysList = new ArrayList<>();
						JSONArray daysArray = (JSONArray) trainObject
								.get("days");
						System.out.println(daysArray);
						for (int i = 0; i < daysArray.size(); i++) {

							JSONObject daysJSON = (JSONObject) parser
									.parse(daysArray.get(i).toString());

							Days days = new Days(daysJSON.get("day-code")
									.toString(), daysJSON.get("runs")
									.toString());
							daysList.add(days);
						}
						trainRoute.setDays(daysList);
					}
				} else {
					message = "Invalid train number, please Enter 5 Digit Correct Train Number";
				}

			} catch (ParseException pe) {
				System.out.println("position: " + pe.getPosition());
				System.out.println(pe);
			} catch (Exception e) {
				System.out.println("Exception");
				System.out.println(e);
				System.out.println(e.getMessage());
			}
			System.out.println("LIST : " + routes);
			req.setAttribute("trainRoute", trainRoute);
		}
		req.setAttribute("message", message);
		RequestDispatcher dispatcher = req
				.getRequestDispatcher("trainRoute.jsp");
		dispatcher.forward(req, resp);

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String message = "";
		String trainNumber = req.getParameter("trainNumber");
		System.out.println("trainNumber: " + trainNumber);
		String pnrResponse = getRouteScheduled(trainNumber, "json");
		System.out.println(pnrResponse);

		TrainRoute trainRoute = new TrainRoute();
		trainRoute.setTrainNum(trainNumber);
		if (pnrResponse.equals("101")) {
			message = "Invalid train number,  please Enter 5 Digit Correct Train Number";
		} else if (pnrResponse.equals("102")) {
			message = "Invalid train,  please Enter 5 Digit Correct Train Number";
		} else {

			JSONParser parser = new JSONParser();
			List<Route> routes = new ArrayList<>();
			try {
				Object obj = parser.parse(pnrResponse);

				JSONObject jsonObject = (JSONObject) obj;
				long responseCode = (long) jsonObject.get("response_code");

				if (responseCode == 200) {
					System.out.println(jsonObject.get("route"));
					Object routeObject = jsonObject.get("route");
					if (routeObject != null) {
						JSONArray jsonArray = (JSONArray) routeObject;
						System.out.println(jsonArray);
						for (int i = 0; i < jsonArray.size(); i++) {

							JSONObject routeJSON = (JSONObject) parser
									.parse(jsonArray.get(i).toString());
							Route route = new Route();
							route.setCode(routeJSON.get("code").toString());
							route.setDay((long) routeJSON.get("day"));
							route.setDistance((long) routeJSON.get("distance"));
							route.setFullname(routeJSON.get("fullname")
									.toString());
							route.setHalt(routeJSON.get("halt").toString());
							route.setLat(routeJSON.get("lat").toString());
							route.setLng(routeJSON.get("lng").toString());
							route.setNo((long) routeJSON.get("no"));
							route.setRoute((long) routeJSON.get("route"));
							route.setScharr(routeJSON.get("scharr").toString());
							route.setSchdep(routeJSON.get("schdep").toString());
							if (routeJSON.get("state") != null) {
								route.setState(routeJSON.get("state")
										.toString());
							}

							routes.add(route);
						}
					}

					trainRoute.setRoutes(routes);
					System.out.println(jsonObject.get("train"));
					JSONObject trainObject = (JSONObject) jsonObject
							.get("train");

					if (trainObject != null) {
						String trainName = trainObject.get("name").toString();
						trainRoute.setTrainName(trainName);
						ArrayList<Classes> classesList = new ArrayList<>();
						JSONArray classesArray = (JSONArray) trainObject
								.get("classes");
						System.out.println(classesArray);
						for (int i = 0; i < classesArray.size(); i++) {

							JSONObject classesJSON = (JSONObject) parser
									.parse(classesArray.get(i).toString());

							Classes classes = new Classes(classesJSON.get(
									"available").toString(), classesJSON.get(
									"class-code").toString());
							classesList.add(classes);
						}
						trainRoute.setClasses(classesList);

						ArrayList<Days> daysList = new ArrayList<>();
						JSONArray daysArray = (JSONArray) trainObject
								.get("days");
						System.out.println(daysArray);
						for (int i = 0; i < daysArray.size(); i++) {

							JSONObject daysJSON = (JSONObject) parser
									.parse(daysArray.get(i).toString());

							Days days = new Days(daysJSON.get("day-code")
									.toString(), daysJSON.get("runs")
									.toString());
							daysList.add(days);
						}
						trainRoute.setDays(daysList);
					}
				} else {
					message = "Invalid train,  please Enter 5 Digit Correct Train Number";
				}

			} catch (ParseException pe) {
				pe.printStackTrace();
				System.out.println("position: " + pe.getPosition());
				System.out.println(pe);
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("Exception");
				System.out.println(e);
				System.out.println(e.getMessage());
			}
			System.out.println("LIST : " + routes);
			req.setAttribute("trainRoute", trainRoute);
		}
		req.setAttribute("message", message);
		RequestDispatcher dispatcher = req
				.getRequestDispatcher("trainRoute.jsp");
		dispatcher.forward(req, resp);

	}

	public static String getRouteScheduled(String train, String format) {
		if (train == null || train.trim().length() != 5) {
			// Some more validations like only numeric are used etc can be
			// added.
			return "101";
		}

		format = format == null || format.trim().equals("") ? "xml" : format;
		String endpoint = "http://api.railwayapi.com/route/train/" + train
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
