package com.pnrtoday.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	public static String getTodayDateForLiveTrain(Date ddate) {
		String date = null;
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		date = format.format(ddate);
		return date;
	}
}
