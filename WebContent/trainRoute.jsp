<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ page import="java.util.*"%>
<%@ page import="com.pnrtoday.entiry.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Train Route | PNR Today</title>
<link rel="shortcut icon" type="image/x-icon"
	href="images/pnrtoday_icon.PNG" />
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="description" content="Train Route" />
<meta name="keywords"
	content="train route, indian train route, indian rail, irctc train route , pnr today">
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
		<br />
		<% 
			String msg = (String)request.getAttribute("message");
			Object trainRoute =request.getAttribute("trainRoute");
			if(msg==null)
				msg=""; 
			if(msg!=null && msg.length()>1){%>
		<br /> <br /> <br /> <br />
		<div
			style="text-align: center; color: red; font-size: 25px; border: 1px solid #FFA700;"><%=msg%></div>
		<%}%>
		<% if(trainRoute!=null) {%>
		<div id="pnrdetails">
			<h2>
				Train Route Details for: <span style="color: blue;"><c:out
						value="${trainRoute.trainNum}" escapeXml="false" /></span>
			</h2>

			<table class="mytable">

				<thead>
					<tr>
						<th colspan="9"><h3>TRAIN DETAILS</h3></th>
					</tr>
					<tr>
						<th>Train Number</th>
						<th>Train Name</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><c:out value="${trainRoute.trainNum}" escapeXml="false" /></td>
						<td><c:out value="${trainRoute.trainName}" escapeXml="false" /></td>
					</tr>
				</tbody>
			</table>
			' <br />
			<table class="mytable">
				<tr style="background: #ddd; color: #333;">
					<th>Stop No</th>
					<th>Stoppage Station</th>
					<th>Station Code</th>
					<th>Arrival Time</th>
					<th>Departure Time</th>
					<th>Halt</th>
					<th>Distance</th>
					<th>State</th>
					<th>Day No</th>


				</tr>
				<c:forEach items="${trainRoute.routes}" var="troute">
					<tr >
						<td><c:out value="${troute.no}" escapeXml="false" /></td>
						<td><c:out value="${troute.fullname}" escapeXml="false" /></td>
						<td><c:out value="${troute.code}" escapeXml="false" /></td>
						<td><c:out value="${troute.scharr}" escapeXml="false" /></td>
						<td><c:out value="${troute.schdep}" escapeXml="false" /></td>
						<td><c:out value="${troute.halt}" escapeXml="false" /></td>
						<td><c:out value="${troute.distance}" escapeXml="false" />
							KM</td>
						<td><c:out value="${troute.state}" escapeXml="false" /></td>
						<td><c:out value="${troute.day}" escapeXml="false" /></td>

					</tr>

				</c:forEach>
			</table>
			<br /> <br />
			<% }%>
		</div>
		<br />
		<form name="form" action="getTrainRoute" method="post">
			<div id="pnrstatusbox" class="gradient1">
				<h1>TRAIN ROUTE DETAILS</h1>
				<br /> <input type="text" id="trainNumber" name="trainNumber"
					required="required" class="textbox" placeholder="Train Number">
				<input type="submit" value="CHECK NOW !"
					onclick="return validate();" class="button"><br /> <br />
				<span style="font-size: 18px; color: #555;"> Please enter 5
					digit Train Number</span><br /> <br />
				<!-- mobile -->
				<ins class="adsbygoogle"
					style="display: inline-block; width: 320px; height: 100px"
					data-ad-client="ca-pub-6274485334555977" data-ad-slot="1846680443"></ins>
				<script>
					(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
			</div>
			<br /><br />
			<div style="text-align: center; width: 50%; margin: auto;">
			
				Apart from online, you can also check train details through sms on
				your mobile or voice calling<br /><br /> For getting the Indian
				Railway Train Details,<br /> <br /> SMS <b>TN< TrainName ></b> OR
				<b>TN< Train Number></b> to <b>139</b>
			</div>
		</form>
		<div style="text-align: center; width: 50%; margin: auto;">
			<br />
			<script async
				src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
			<!-- Top-add -->
			<ins class="adsbygoogle"
				style="display: inline-block; width: 728px; height: 90px"
				data-ad-client="ca-pub-6274485334555977" data-ad-slot="6858868043"></ins>
			<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
			</script>
			<br />
		</div>

		<div id="extracontent">
			<div style="float: left; width: 60%">
				<h2 style="padding: 10px;">MOST SEARCHED TRAINS</h2>
				<table class="table1">
					<tr>
						<td><a href="getTrainRoute?trainNumber=12137">12137</a></td>
						<td>Punjab Mail</td>
						<td>MUMBAI CST - FIROZPUR CANT</td>
					</tr>
					<tr>
						<td><a href="getTrainRoute?trainNumber=22406">22406</a></td>
						<td>Garib Rath</td>
						<td>ANAND VIHAR TRM - BHAGALPUR</td>
					</tr>
					<tr>
						<td><a href="getTrainRoute?trainNumber=12802">12802</a></td>
						<td>Purshottam Express</td>
						<td>NEW DELHI - PURI</td>
					</tr>
					<tr>
						<td><a href="getTrainRoute?trainNumber=18477">18477</a></td>
						<td>Utkal Express</td>
						<td>PURI - HARIDWAR JN</td>
					</tr>
					<tr>
						<td><a href="getTrainRoute?trainNumber=12617">12617</a></td>
						<td>MANGALA LDWEEP</td>
						<td>ERNAKULAM JN - H NIZAMUDDIN</td>
					</tr>
					<tr>
						<td><a href="getTrainRoute?trainNumber=12401">12401</a></td>
						<td>Magadh Express</td>
						<td>ISLAMPUR - NEW DELHI</td>
					</tr>
					<tr>
						<td><a href="getTrainRoute?trainNumber=12138">12138</a></td>
						<td>Punjab Mail</td>
						<td>FIROZPUR CANT - MUMBAI CST</td>
					</tr>
					<tr>
						<td><a href="getTrainRoute?trainNumber=22405">22405</a></td>
						<td>Garib Rath</td>
						<td>BHAGALPUR - ANAND VIHAR TRM</td>
					</tr>

				</table>
			</div>
			<div style="float: left; width: 35%">
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
			<div style="clear: both;"></div>
		</div>
	</div>
	<jsp:include page="footer.html" />
</body>
</html>
