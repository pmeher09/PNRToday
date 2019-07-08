<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ page import="java.util.*"%>
<%@ page import="com.pnrtoday.entiry.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Check IRCTC PNR Status | PNR Today</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/pnrtoday_icon.PNG" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="css/style.css" rel="stylesheet" type="text/css">
<meta name="description" content="Check IRCTC PNR Status" />
<meta name="keywords"
	content="check pnr status, irctc,PNR, rail pnr status, train pnr status,pnr today">

<script type="text/javascript">
	function validate() {
		pnrNumber = document.getElementById("pnrNumber").value;
		if (pnrNumber == "") {
			alert("Please Enter Your PNR Number.");
			document.form.pnrNumber.focus();
			return false;
		}

		return true;
	}
</script>
</head>
<body>
	<!-- Go to www.addthis.com/dashboard to customize your tools -->
	<script type="text/javascript"
		src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-564f6b0566382c2d"
		async="async"></script>
	<jsp:include page="header.html" />
	<div id="container">
		<br />
		<% 
			String msg = (String)request.getAttribute("message");
			Object pnrStatus =request.getAttribute("pnrStatus");
			if(msg==null)
				msg=""; 
			if(msg!=null && msg.length()>1){%>
		<br /> <br />
		<br /> <br />
		<div
			style="text-align: center; color: red; font-size: 25px; border: 1px solid #FFA700;"><%=msg%></div>
		<%}%>
		<% if(pnrStatus!=null) {%>
		<div id="pnrdetails">
			<h2>
				PNR Status for: <span style="color: blue;"><c:out
						value="${pnrStatus.pnr}" escapeXml="false" /></span>
			</h2>


			<table class="mytable">
				<colgroup>
					<col width="80">
					<col width="120">
					<col width="150">
					<col width="150">
					<col width="150">
					<col width="150">
					<col width="60">
					<col width="100">
				</colgroup>
				<thead>
					<tr>
						<th colspan="9"><h3>JOURNEY DETAILS</h3></th>
					</tr>
					<tr>
						<th>Train Number</th>
						<th>Train Name</th>
						<th>Boarding Date<br /> (DD-MM-YYYY)
						</th>
						<th>From</th>
						<th>To</th>
						<th>Boarding<br />Point
						</th>
						<th>Reservation<br /> UpTo
						</th>
						<th>Class</th>
						<th>Number Of <br />Passengers
						</th>

					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a
							href="getTrainRoute?trainNumber=<c:out value="${pnrStatus.trainNum}" escapeXml="false" />"><c:out
									value="${pnrStatus.trainNum}" escapeXml="false" /></a></td>
						<td><a
							href="getTrainRoute?trainNumber=<c:out value="${pnrStatus.trainNum}" escapeXml="false" />"><c:out
									value="${pnrStatus.trainName}" escapeXml="false" /></a></td>
						<td><c:out value="${pnrStatus.doj}" escapeXml="false" /></td>
						<td><c:out value="${pnrStatus.fromStation}" escapeXml="false" />
						</td>
						<td><c:out value="${pnrStatus.toStation}" escapeXml="false" /></td>
						<td><c:out value="${pnrStatus.boardingPoint}"
								escapeXml="false" /></td>
						<td><c:out value="${pnrStatus.reservationUpTo}"
								escapeXml="false" /></td>
						<td><c:out value="${pnrStatus.tktClass}" escapeXml="false" /></td>
						<td><c:out value="${pnrStatus.noOfPassengers}"
								escapeXml="false" /></td>
					</tr>
				</tbody>
			</table>
			' <br />
			<table class="mytable">
				<tr style="background: #ddd; color: #333;">
					<th>Passenger</th>
					<th>Current Status</th>
					<th>Booking Status</th>

				</tr>
				<c:forEach items="${pnrStatus.passengers}" var="passenger">
					<tr style="background: #eee;">
						<td>Passenger - <c:out value="${passenger.sr}"
								escapeXml="false" /></td>
						<td><c:out value="${passenger.currentStatus}"
								escapeXml="false" /></td>
						<td><c:out value="${passenger.bookingStatus}"
								escapeXml="false" /></td>

					</tr>

				</c:forEach>
				<tr>
					<td colspan="9"><h3>
							Charting Status : <span style="color: blue;"><c:out
									value="${pnrStatus.chartPrepared}" escapeXml="false" /> </span>
						</h3></td>
				</tr>

			</table>
			<br />
			<p style="font-size: 14px; color: #777;">&nbsp;Note : In case the
				Final Charts have not been prepared, the Current Status might
				upgrade/downgrade at a later stage.</p>
			<br /> <br />
			<pre>					
<b>Status Code Explained:-</b>
<b>CNF / Confirmed :</b> Confirmed (Coach/Berth number will be available after chart preparation)
<b>RAC : </b>Reservation Against Cancellation
<b>WL : </b>Waiting List Number
<b>GNWL : </b>General Wait List
<b>RLWL : </b>Remote Location Wait List
<b>PQWL : </b>Pooled Quota Wait List
<b>CAN / MOD :</b> Cancelled or Modified Passenger
<b>REGRET/WL : </b>No More Booking Permitted
<b>R# #RAC : </b>Coach Number Berth Number
<b>RELEASEDTicket :</b> Not Cancelled but Alternative Accommodation Provided
</pre>
			<br /> <br /> <br />
			<% }%>
		</div>
		<br />
		<form name="form" action="getPnrStatus " method="post">
			<br />
			<div style="text-align: center; width: 50%; margin: auto;">
				<script async
					src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- Top-add -->
				<ins class="adsbygoogle"
					style="display: inline-block; width: 728px; height: 90px"
					data-ad-client="ca-pub-6274485334555977" data-ad-slot="6858868043"></ins>
				<script>
					(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
			</div>
			<div id="pnrstatusbox" class="gradient1">
				<h1>CHECK PNR STATUS</h1>
				<br /> <input type="number" id="pnrNumber" name="pnrNumber"
					required="required" class="textbox" placeholder="PNR Number">
				<input type="submit" value="CHECK NOW !"
					onclick="return validate();" class="button"> <br /> <br />
				<span style="font-size: 18px; color: #555;">Please enter 10
					digit PNR Number</span><br />
				<br />
				<script async
					src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- mobile -->
				<ins class="adsbygoogle"
					style="display: inline-block; width: 320px; height: 100px"
					data-ad-client="ca-pub-6274485334555977" data-ad-slot="1846680443"></ins>
				<script>
					(adsbygoogle = window.adsbygoogle || []).push({});
				</script>

			</div>
			<br /> <br />
			<div style="text-align: center; width: 50%; margin: auto;">
				<p>Apart from online, you can also check PNR status through sms
					on your mobile or voice calling</p>
				<br />
				<p>
					For getting the Indian Railway PNR status, SMS <b> PNR <10
						digit PNR No> </b>to <b>139</b>
				</p>
				OR
				<p>
					Dial <b>139</b> from your landline or mobile number and follow the
					instructions.
				</p>
			</div>


			<div id="extracontent">
				<div style="float: left; width: 400px;">
					<br />
					<script async
						src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- largesquare -->
					<ins class="adsbygoogle"
						style="display: inline-block; width: 336px; height: 280px"
						data-ad-client="ca-pub-6274485334555977" data-ad-slot="1831409246"></ins>
					<script>
						(adsbygoogle = window.adsbygoogle || []).push({});
					</script>
				</div>
				<div style="float: left; width: 65%;">
					<p id="question-home">What is PNR?</p>
					<p id="answer-home">PNR (Passenger Name Record) : 10 Digit
						Unique Number generated when passenger books a train ticket via
						Online/Offline.</p>
					<br />
					<p id="question-home">How to get my PNR Number?</p>
					<p id="answer-home">When you book a ticket online from IRCTC
						you receive your PNR number on your entered mobile number. This
						service helps you to check PNR for Train online that whether it is
						confirmed or still in waiting.</p>
					<br />
					<p id="question-home">How to Check PNR Status online ?</p>
					<p id="answer-home">Just enter your 10 digit PNR number in the
						above form and click on the CHECK NOW! button
					<p>
				</div>
				<div style="clear: both;"></div>
			</div>
		</form>
	</div>

	<jsp:include page="footer.html" />
</body>
</html>
