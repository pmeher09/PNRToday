package com.pnrtoday.entiry;

import java.util.List;

public class TrainLiveStatus {
	private String trainNum = "-";
	private String trainName = "-";
	private String doj = "-";
	private String position = "-";
	private List<TrainLiveRoute> liveRoutes;

	public TrainLiveStatus(String trainNum, String trainName, String doj,
			String position) {
		this.trainNum = trainNum;
		this.trainName = trainName;
		this.doj = doj;
		this.position = position;
	}

	public TrainLiveStatus() {
	}

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

	public String getDoj() {
		return doj;
	}

	public void setDoj(String doj) {
		this.doj = doj;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public List<TrainLiveRoute> getLiveRoutes() {
		return liveRoutes;
	}

	public void setLiveRoutes(List<TrainLiveRoute> liveRoutes) {
		this.liveRoutes = liveRoutes;
	}

	@Override
	public String toString() {
		return "TrainLiveStatus [trainNum=" + trainNum + ", trainName="
				+ trainName + ", doj=" + doj + ", position=" + position
				+ ", liveRoutes=" + liveRoutes + "]";
	}

}