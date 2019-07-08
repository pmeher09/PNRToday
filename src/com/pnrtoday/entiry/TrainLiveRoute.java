package com.pnrtoday.entiry;

public class TrainLiveRoute {
	private String no;
	private String station;
	private String hadArrived;
	private String hadDeparted;
	private String day;
	private String distance;
	private String scharr;
	private String schdep;
	private String actarr;
	private String actdep;
	private String actarrDate;
	private String actdepDate;
	private String late;

	public TrainLiveRoute(String no, String station, String hadArrived,
			String hadDeparted, String day, String distance, String scharr,
			String schdep, String actarr, String actdep, String actarrDate,
			String actdepDate, String late) {
		this.no = no;
		this.station = station;
		this.hadArrived = hadArrived;
		this.hadDeparted = hadDeparted;
		this.day = day;
		this.distance = distance;
		this.scharr = scharr;
		this.schdep = schdep;
		this.actarr = actarr;
		this.actdep = actdep;
		this.actarrDate = actarrDate;
		this.actdepDate = actdepDate;
		this.late = late;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getStation() {
		return station;
	}

	public void setStation(String station) {
		this.station = station;
	}

	public String getHadArrived() {
		return hadArrived;
	}

	public void setHadArrived(String hadArrived) {
		this.hadArrived = hadArrived;
	}

	public String getHadDeparted() {
		return hadDeparted;
	}

	public void setHadDeparted(String hadDeparted) {
		this.hadDeparted = hadDeparted;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getDistance() {
		return distance;
	}

	public void setDistance(String distance) {
		this.distance = distance;
	}

	public String getScharr() {
		return scharr;
	}

	public void setScharr(String scharr) {
		this.scharr = scharr;
	}

	public String getSchdep() {
		return schdep;
	}

	public void setSchdep(String schdep) {
		this.schdep = schdep;
	}

	public String getActarr() {
		return actarr;
	}

	public void setActarr(String actarr) {
		this.actarr = actarr;
	}

	public String getActdep() {
		return actdep;
	}

	public void setActdep(String actdep) {
		this.actdep = actdep;
	}

	public String getActarrDate() {
		return actarrDate;
	}

	public void setActarrDate(String actarrDate) {
		this.actarrDate = actarrDate;
	}

	public String getActdepDate() {
		return actdepDate;
	}

	public void setActdepDate(String actdepDate) {
		this.actdepDate = actdepDate;
	}

	public String getLate() {
		return late;
	}

	public void setLate(String late) {
		this.late = late;
	}

	@Override
	public String toString() {
		return "TrainLiveRoute [no=" + no + ", station=" + station
				+ ", hadArrived=" + hadArrived + ", hadDeparted=" + hadDeparted
				+ ", day=" + day + ", distance=" + distance + ", scharr="
				+ scharr + ", schdep=" + schdep + ", actarr=" + actarr
				+ ", actdep=" + actdep + ", actarrDate=" + actarrDate
				+ ", actdepDate=" + actdepDate + ", late=" + late + "]";
	}

}