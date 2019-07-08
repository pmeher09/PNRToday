package com.pnrtoday.entiry;

public class Days {
	private String dayCode;
	private String runs;

	public Days(String dayCode, String runs) {
		this.dayCode = dayCode;
		this.runs = runs;
	}

	public String getDayCode() {
		return dayCode;
	}

	public void setDayCode(String dayCode) {
		this.dayCode = dayCode;
	}

	public String getRuns() {
		return runs;
	}

	public void setRuns(String runs) {
		this.runs = runs;
	}

}
