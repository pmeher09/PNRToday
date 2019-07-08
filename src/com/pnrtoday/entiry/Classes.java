package com.pnrtoday.entiry;
public class Classes {
	private String available;
	private String classCode;

	public Classes(String available, String classCode) {
		this.available = available;
		this.classCode = classCode;
	}

	public String getAvailable() {
		return available;
	}

	public void setAvailable(String available) {
		this.available = available;
	}

	public String getClassCode() {
		return classCode;
	}

	public void setClassCode(String classCode) {
		this.classCode = classCode;
	}

}