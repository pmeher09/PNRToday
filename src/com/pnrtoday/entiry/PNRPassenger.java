package com.pnrtoday.entiry;

public class PNRPassenger {
	private String currentStatus;
	private String bookingStatus;
	private String sr;

	public PNRPassenger(String currentStatus, String bookingStatus, String sr) {
		this.currentStatus = currentStatus;
		this.bookingStatus = bookingStatus;
		this.sr = sr;
	}

	public String getCurrentStatus() {
		return currentStatus;
	}

	public void setCurrentStatus(String currentStatus) {
		this.currentStatus = currentStatus;
	}

	public String getBookingStatus() {
		return bookingStatus;
	}

	public void setBookingStatus(String bookingStatus) {
		this.bookingStatus = bookingStatus;
	}

	public String getSr() {
		return sr;
	}

	public void setSr(String sr) {
		this.sr = sr;
	}

	@Override
	public String toString() {
		return "PNRStatus [currentStatus=" + currentStatus + ", bookingStatus="
				+ bookingStatus + ", sr=" + sr + "]";
	}

}