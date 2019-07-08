<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ page import="java.util.*"%>
<%@ page import="com.pnrtoday.entiry.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>PNR Status | PNR Today</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/pnrtoday_icon.PNG" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="css/style.css" rel="stylesheet" type="text/css">

<script type="text/javascript">
	function validate() {
		trainNumber = document.getElementById("trainNumber").value;
		if (trainNumber == "") {
			alert("Please Enter Your Train Number.");
			document.form.trainNumber.focus();
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
		<% 
			String msg = (String)request.getAttribute("message");
			Object pnrStatus =request.getAttribute("pnrStatus");
			if(msg==null)
				msg=""; 
			if(msg!=null && msg.length()>1){%>
		<br />
		<div
			style="text-align: center; color: red; font-size: 25px; border: 1px solid #FFA700;"><%=msg%></div>
		<br />
		<%}%>
		<% if(pnrStatus!=null) {%>
		<br />
		<div style="text-align: left;">
			<h2>
				PNR Status for: <span style="color: blue;"><c:out
						value="${pnrStatus.pnr}" escapeXml="false" /></span>
			</h2>
			<br />

			<table class="mytable">

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
						<td><c:out value="${pnrStatus.trainNum}" escapeXml="false" /></td>
						<td><c:out value="${pnrStatus.trainName}" escapeXml="false" /></td>
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
			<p style="font-size: 14px; color: #777;"> &nbsp;Note : In case the Final Charts have not been prepared, the Current Status might upgrade/downgrade at a later stage.</p>
			<br />
			<br />
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
			<br />	<br />

			<hr>
			<br />
			<% }%>

			<form name="form" action="trainDetails " method="post">

				<h1>Train Details:</h1>
				<div style="width: 100%;">
					<div
						style="width: 520px; background: #fafafa; padding: 35px; border: 1px solid #379cbd; border-radius: 5px;">
						<table border="0" style="width: 500px; text-align: center;">
							<tr>
								<td><input type="text" id="trainNumber" name="trainNumber"
									required="required" class="textbox" placeholder="Train Number"></td>
								<td><input type="submit" value="CHECK NOW !"
									onclick="return validate();" class="button"></td>
							</tr>
							<tr>
								<td style="font-size: 18px; color: #bbb;">Please enter 5
									digit Train Number</td>
								<td></td>
							</tr>
						</table>
					</div>
					<br />
					<br />
					<div style="text-align: center; width: 580px;">
					<p>Apart from online, you can also check PNR status through sms on
					your mobile or voice calling </p><br />
					<p>For getting
					the Indian Railway PNR status, SMS <b> PNR <10 digit PNR No> </b>to <b>139</b> </p>OR<p>
					Dial <b>139</b> from your landline or mobile number and follow the
					instructions.</p>
					</div><br/><br/><br/>
					<hr>
					<div style="color: #555; text-align: left;">
					<br />
					<p id="question-home">What is PNR?</p> 
					<p id="answer-home">PNR (Passenger Name Record) : 10 Digit Unique Number generated when passenger books a train ticket via Online/Offline.</p>
					<br />
					<p id="question-home">How to get my PNR Number?</p> 
					<p id="answer-home">When you book a ticket online from IRCTC you receive your PNR number on your entered mobile number. This service helps you to check PNR for Train online that whether it is confirmed or still in waiting.</p>
					<br />
					<p id="question-home">How to Check PNR Status online ?</p>
					<p id="answer-home">Just enter your 10 digit PNR number in the above form and click on the CHECK NOW! button<p>
					<br />

			</div>
				</div>
				<div style="width: 50%; float: right;"></div>

			</form>
		</div>
	</div>
	<jsp:include page="footer.html" />
</body>
</html>
