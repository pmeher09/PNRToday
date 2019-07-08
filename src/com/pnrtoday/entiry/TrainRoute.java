package com.pnrtoday.entiry;

import java.util.List;

public class TrainRoute {
	private String trainNum = "-";
	private String trainName = "-";

	private List<Route> routes;
	private List<Classes> classes;
	private List<Days> days;

	public String getTrainNum() {
		return trainNum;
	}

	public void setTrainNum(String trainNum) {
		this.trainNum = trainNum;
	}

	public String getTrainName() {
		return trainName;
	}

	public void setTrainName(String trainName) {
		this.trainName = trainName;
	}

	public List<Route> getRoutes() {
		return routes;
	}

	public void setRoutes(List<Route> routes) {
		this.routes = routes;
	}

	public List<Classes> getClasses() {
		return classes;
	}

	public void setClasses(List<Classes> classes) {
		this.classes = classes;
	}

	public List<Days> getDays() {
		return days;
	}

	public void setDays(List<Days> days) {
		this.days = days;
	}

}


