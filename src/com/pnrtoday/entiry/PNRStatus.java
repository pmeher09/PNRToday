package com.pnrtoday.entiry;

import java.util.List;

public class PNRStatus {
	private String pnr = "-";
	private String trainNum = "-";
	private String trainName = "-";
	private String doj = "-";
	private String tktClass = "-";
	private String noOfPassengers = "-";
	private String chartPrepared = "-";
	private String fromStation = "";
	private String toStation = "";
	private String reservationUpTo = "";
	private String boardingPoint = "";
	
	private List<PNRPassenger> passengers;

	public PNRStatus(String pnr, String trainNum, String doj, String tktClass,
			String noOfPassengers, String chartPrepared) {
		super();
		this.pnr = pnr;
		this.trainNum = trainNum;
		this.doj = doj;
		this.tktClass = tktClass;
		this.noOfPassengers = noOfPassengers;
		this.chartPrepared = chartPrepared;
	}

	public PNRStatus() {
	}

	public String getPnr() {
		return pnr;
	}

	public void setPnr(String pnr) {
		this.pnr = pnr;
	}

	public String getTrainNum() {
		return trainNum;
	}

	public void setTrainNum(String trainNum) {
		this.trainNum = trainNum;
	}

	public String getDoj() {
		return doj;
	}

	public void setDoj(String doj) {
		this.doj = doj;
	}

	public String getTktClass() {
		return tktClass;
	}

	public void setTktClass(String tktClass) {
		this.tktClass = tktClass;
	}

	public String getNoOfPassengers() {
		return noOfPassengers;
	}

	public void setNoOfPassengers(String noOfPassengers) {
		this.noOfPassengers = noOfPassengers;
	}

	public String getChartPrepared() {
		return chartPrepared;
	}

	public void setChartPrepared(String chartPrepared) {
		this.chartPrepared = chartPrepared;
	}

	public List<PNRPassenger> getPassengers() {
		return passengers;
	}

	public void setPassengers(List<PNRPassenger> passengers) {
		this.passengers = passengers;
	}

	public String getTrainName() {
		return trainName;
	}

	public void setTrainName(String trainName) {
		this.trainName = trainName;
	}

	public String getFromStation() {
		return fromStation;
	}

	public void setFromStation(String fromStation) {
		this.fromStation = fromStation;
	}

	public String getToStation() {
		return toStation;
	}

	public void setToStation(String toStation) {
		this.toStation = toStation;
	}

	public String getBoardingPoint() {
		return boardingPoint;
	}

	public void setBoardingPoint(String boardingPoint) {
		this.boardingPoint = boardingPoint;
	}

	public String getReservationUpTo() {
		return reservationUpTo;
	}

	public void setReservationUpTo(String reservationUpTo) {
		this.reservationUpTo = reservationUpTo;
	}

	@Override
	public String toString() {
		return "PNRStatus [pnr=" + pnr + ", trainNum=" + trainNum + ", doj="
				+ doj + ", tktClass=" + tktClass + ", noOfPassengers="
				+ noOfPassengers + ", chartPrepared=" + chartPrepared + "]";
	}

}