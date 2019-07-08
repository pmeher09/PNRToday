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
<link href="css/style.css" rel="stylesheet" type="text/css">

</head>
<body>
	<!-- Go to www.addthis.com/dashboard to customize your tools -->
	<script type="text/javascript"
		src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-564f6b0566382c2d"
		async="async"></script>
	<jsp:include page="header.html" />
	<div id="container">
		<div id="pnrdetails">
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
			<h2>LIST OF ALL EXPRESS TRAINS</h2>
			<br />
			<div style="float: left; width: 80%;">
				<table dir="ltr" border="1" class="mytable" cellspacing="0"
					cellpadding="0">
					<colgroup>
						<col width="80">
						<col width="100">
						<col width="130">
						<col width="150">
						<col width="150">
						<col width="120">
						<col width="120">
						<col width="100">
					</colgroup>
					<tbody>
						<tr>
							<th></th>
							<th data-sheets-value="[null,2,&quot;Train No&quot;]">Train
								No</th>
							<th data-sheets-value="[null,2,&quot;Train Type&quot;]">Train
								Type</th>
							<th
								data-sheets-value="[null,2,&quot;Source \u2013 Destination&quot;]">Source
							</th>
							<th>Destination</th>
							<th data-sheets-value="[null,2,&quot;Stops&quot;]">Stops</th>
							<th data-sheets-value="[null,2,&quot;Distance km (mile)&quot;]">Distance
								km (mile)</th>
							<th data-sheets-value="[null,2,&quot;Total time&quot;]">Total
								time</th>
						</tr>

						<tr>
							<td data-sheets-value="[null,3,null,2]">1</td>
							<td data-sheets-value="[null,3,null,12002]">12002</td>
							<td data-sheets-value="[null,2,&quot;Shatabdi&quot;]">Shatabdi</td>
							<td
								data-sheets-value="[null,2,&quot;New Delhi \u2013Habibganj (Bhopal)&quot;]">New
								Delhi</td>
							<td>Habibganj (Bhopal)</td>
							<td data-sheets-value="[null,3,null,8]">8</td>
							<td data-sheets-value="[null,2,&quot;707 (436)&quot;]">707
								(436)</td>
							<td data-sheets-value="[null,3,null,0.3506944444444444]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">8:25</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,3]">2</td>
							<td data-sheets-value="[null,3,null,12034]">12034</td>
							<td data-sheets-value="[null,2,&quot;Shatabdi&quot;]">Shatabdi</td>
							<td
								data-sheets-value="[null,2,&quot;New Delhi \u2013 Kanpur&quot;]">New
								Delhi</td>
							<td>Kanpur</td>
							<td data-sheets-value="[null,3,null,2]">2</td>
							<td data-sheets-value="[null,2,&quot;437 (270)&quot;]">437
								(270)</td>
							<td data-sheets-value="[null,3,null,0.20833333333333334]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">5:00</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,1]">3</td>
							<td data-sheets-value="[null,3,null,12951]">12951</td>
							<td data-sheets-value="[null,2,&quot;Rajdhani&quot;]">Rajdhani</td>
							<td
								data-sheets-value="[null,2,&quot;Mumbai Central \u2013New Delhi&quot;]">Mumbai
								Central</td>
							<td>New Delhi</td>
							<td data-sheets-value="[null,3,null,5]">5</td>
							<td data-sheets-value="[null,2,&quot;1384 (860)&quot;]">1384
								(860)</td>
							<td data-sheets-value="[null,3,null,0.6493055555555556]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">15:35</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,4]">4</td>
							<td data-sheets-value="[null,3,null,12249]">12249</td>
							<td data-sheets-value="[null,2,&quot;Yuva&quot;]">Yuva</td>
							<td
								data-sheets-value="[null,2,&quot;Howrah \u2013 New Delhi&quot;]">Howrah
							</td>
							<td>New Delhi</td>
							<td data-sheets-value="[null,3,null,5]">5</td>
							<td data-sheets-value="[null,2,&quot;1447 (899)&quot;]">1447
								(899)</td>
							<td data-sheets-value="[null,3,null,0.7013888888888888]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">16:50</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,5]">5</td>
							<td data-sheets-value="[null,3,null,22913]">22913</td>
							<td data-sheets-value="[null,2,&quot;Premium&quot;]">Premium</td>
							<td data-sheets-value="[null,2,&quot;Mumbai-New Delhi&quot;]">Mumbai</td>
							<td>New Delhi</td>
							<td data-sheets-value="[null,3,null,2]">2</td>
							<td data-sheets-value="[null,2,&quot;1386(861)&quot;]">1386(861)</td>
							<td data-sheets-value="[null,3,null,0.6666666666666666]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">16:00</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,6]">6</td>
							<td data-sheets-value="[null,3,null,12260]">12260</td>
							<td data-sheets-value="[null,2,&quot;Duronto&quot;]">Duronto</td>
							<td
								data-sheets-value="[null,2,&quot;New Delhi \u2013 Sealdah&quot;]">New
								Delhi</td>
							<td>Sealdah</td>
							<td data-sheets-value="[null,3,null,3]">3</td>
							<td data-sheets-value="[null,2,&quot;1453 (906)&quot;]">1453
								(906)</td>
							<td data-sheets-value="[null,3,null,0.7048611111111112]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">16:55</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,7]">7</td>
							<td data-sheets-value="[null,3,null,12302]">12302</td>
							<td data-sheets-value="[null,2,&quot;Rajdhani&quot;]">Rajdhani</td>
							<td
								data-sheets-value="[null,2,&quot;New Delhi \u2013 Howrah&quot;]">New
								Delhi</td>
							<td>Howrah</td>
							<td data-sheets-value="[null,3,null,6]">6</td>
							<td data-sheets-value="[null,2,&quot;1447 (902)&quot;]">1447
								(902)</td>
							<td data-sheets-value="[null,3,null,0.7083333333333334]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">17:00</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,8]">8</td>
							<td data-sheets-value="[null,3,null,12274]">12274</td>
							<td data-sheets-value="[null,2,&quot;Duronto&quot;]">Duronto</td>
							<td
								data-sheets-value="[null,2,&quot;New Delhi \u2013 Howrah&quot;]">New
								Delhi</td>
							<td>Howrah</td>
							<td data-sheets-value="[null,3,null,3]">3</td>
							<td data-sheets-value="[null,2,&quot;1446 (893)&quot;]">1446
								(893)</td>
							<td data-sheets-value="[null,3,null,0.71875]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">17:15</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,9]">9</td>
							<td data-sheets-value="[null,3,null,12910]">12910</td>
							<td data-sheets-value="[null,2,&quot;Garib Rath&quot;]">Garib
								Rath</td>
							<td
								data-sheets-value="[null,2,&quot;H. Nizamuddin \u2013Bandra&quot;]">H.
								Nizamuddin</td>
							<td>Bandra</td>
							<td data-sheets-value="[null,3,null,7]">7</td>
							<td data-sheets-value="[null,2,&quot;1366 (849)&quot;]">1366
								(849)</td>
							<td data-sheets-value="[null,3,null,0.6909722222222222]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">16:35</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,10]">10</td>
							<td data-sheets-value="[null,3,null,12313]">12313</td>
							<td data-sheets-value="[null,2,&quot;Rajdhani&quot;]">Rajdhani</td>
							<td
								data-sheets-value="[null,2,&quot;Sealdah \u2013 New Delhi&quot;]">Sealdah
							</td>
							<td>New Delhi</td>
							<td data-sheets-value="[null,3,null,6]">6</td>
							<td data-sheets-value="[null,2,&quot;1458 (906)&quot;]">1458
								(906)</td>
							<td data-sheets-value="[null,3,null,0.7326388888888888]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">17:35</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,11]">11</td>
							<td data-sheets-value="[null,3,null,12276]">12276</td>
							<td data-sheets-value="[null,2,&quot;Duronto&quot;]">Duronto</td>
							<td
								data-sheets-value="[null,2,&quot;New Delhi \u2013Allahabad&quot;]">New
								Delhi</td>
							<td>Allahabad</td>
							<td data-sheets-value="[null,3,null,1]">1</td>
							<td data-sheets-value="[null,2,&quot;634 (394)&quot;]">634
								(394)</td>
							<td data-sheets-value="[null,3,null,0.3125]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">7:30</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,12]">12</td>
							<td data-sheets-value="[null,3,null,12309]">12309</td>
							<td data-sheets-value="[null,2,&quot;Rajdhani&quot;]">Rajdhani</td>
							<td
								data-sheets-value="[null,2,&quot;Rajendranagar \u2013New Delhi&quot;]">Rajendranagar
							</td>
							<td>New Delhi</td>
							<td data-sheets-value="[null,3,null,4]">4</td>
							<td data-sheets-value="[null,2,&quot;1001 (623)&quot;]">1001
								(623)</td>
							<td data-sheets-value="[null,3,null,0.5104166666666666]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">12:15</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,13]">13</td>
							<td data-sheets-value="[null,3,null,12953]">12953</td>
							<td data-sheets-value="[null,2,&quot;Rajdhani&quot;]">Rajdhani</td>
							<td
								data-sheets-value="[null,2,&quot;Mumbai Central \u2013 H. Nizamuddin (August Kranti)&quot;]">Mumbai
								Central</td>
							<td>H. Nizamuddin (August Kranti)</td>
							<td data-sheets-value="[null,3,null,12]">12</td>
							<td data-sheets-value="[null,2,&quot;1377 (856)&quot;]">1377
								(856)</td>
							<td data-sheets-value="[null,3,null,0.7152777777777778]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">17:10</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,14]">14</td>
							<td data-sheets-value="[null,3,null,12004]">12004</td>
							<td data-sheets-value="[null,2,&quot;Shatabdi&quot;]">Shatabdi</td>
							<td
								data-sheets-value="[null,2,&quot;New Delhi \u2013Lucknow (Swarna Shatabdi)&quot;]">New
								Delhi</td>
							<td>Lucknow (Swarna Shatabdi)</td>
							<td data-sheets-value="[null,3,null,5]">5</td>
							<td data-sheets-value="[null,2,&quot;511 (315)&quot;]">511
								(315)</td>
							<td data-sheets-value="[null,3,null,0.2708333333333333]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">6:30</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,15]">15</td>
							<td data-sheets-value="[null,3,null,12285]">12285</td>
							<td data-sheets-value="[null,2,&quot;Duronto&quot;]">Duronto</td>
							<td
								data-sheets-value="[null,2,&quot;Secunderabad- H. Nizamuddin&quot;]">Secunderabad</td>
							<td>H. Nizamuddin</td>
							<td data-sheets-value="[null,3,null,4]">4</td>
							<td data-sheets-value="[null,2,&quot;1660 (1030)&quot;]">1660
								(1030)</td>
							<td data-sheets-value="[null,3,null,0.8784722222222222]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">21:05</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,16]">16</td>
							<td data-sheets-value="[null,3,null,12281]">12281</td>
							<td data-sheets-value="[null,2,&quot;Duronto&quot;]">Duronto</td>
							<td
								data-sheets-value="[null,2,&quot;Bhubaneswar \u2013 New Delhi&quot;]">Bhubaneswar
							</td>
							<td>New Delhi</td>
							<td data-sheets-value="[null,3,null,4]">4</td>
							<td data-sheets-value="[null,2,&quot;1726 (1072)&quot;]">1726
								(1072)</td>
							<td data-sheets-value="[null,3,null,0.9236111111111112]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">22:10</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,17]">17</td>
							<td data-sheets-value="[null,3,null,12306]">12306</td>
							<td data-sheets-value="[null,2,&quot;Rajdhani&quot;]">Rajdhani</td>
							<td
								data-sheets-value="[null,2,&quot;New Delhi \u2013 Howrah&quot;]">New
								Delhi</td>
							<td>Howrah</td>
							<td data-sheets-value="[null,3,null,6]">6</td>
							<td data-sheets-value="[null,2,&quot;1531 (951)&quot;]">1531
								(951)</td>
							<td data-sheets-value="[null,3,null,0.8229166666666666]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">19:45</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,18]">18</td>
							<td data-sheets-value="[null,3,null,12290]">12290</td>
							<td data-sheets-value="[null,2,&quot;Duronto&quot;]">Duronto</td>
							<td
								data-sheets-value="[null,2,&quot;Mumbai CST \u2013Nagpur&quot;]">Mumbai
								CST</td>
							<td>Nagpur</td>
							<td data-sheets-value="[null,3,null,3]">3</td>
							<td data-sheets-value="[null,2,&quot;837 (521)&quot;]">837
								(521)</td>
							<td data-sheets-value="[null,3,null,0.4618055555555556]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">11:05</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,19]">19</td>
							<td data-sheets-value="[null,3,null,12269]">12269</td>
							<td data-sheets-value="[null,2,&quot;Duronto&quot;]">Duronto</td>
							<td
								data-sheets-value="[null,2,&quot;Chennai \u2013 H. Nizamuddin&quot;]">Chennai
							</td>
							<td>H. Nizamuddin</td>
							<td data-sheets-value="[null,3,null,6]">6</td>
							<td data-sheets-value="[null,2,&quot;2175 (1343)&quot;]">2175
								(1343)</td>
							<td data-sheets-value="[null,3,null,1.1631944444444444]"
								data-sheets-numberformat="[null,6,&quot;[h]:mm:ss&quot;,1]">27:55</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,20]">20</td>
							<td data-sheets-value="[null,3,null,12439]">12439</td>
							<td data-sheets-value="[null,2,&quot;Rajdhani&quot;]">Rajdhani</td>
							<td
								data-sheets-value="[null,2,&quot;Ranchi \u2013 New Delhi&quot;]">Ranchi
							</td>
							<td>New Delhi</td>
							<td data-sheets-value="[null,3,null,6]">6</td>
							<td data-sheets-value="[null,2,&quot;1305 (813)&quot;]">1305
								(813)</td>
							<td data-sheets-value="[null,3,null,0.7048611111111112]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">16:55</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,21]">21</td>
							<td data-sheets-value="[null,3,null,12247]">12247</td>
							<td data-sheets-value="[null,2,&quot;Yuva&quot;]">Yuva</td>
							<td
								data-sheets-value="[null,2,&quot;H. Nizamuddin \u2013Bandra&quot;]">H.
								Nizamuddin</td>
							<td>Bandra</td>
							<td data-sheets-value="[null,3,null,5]">5</td>
							<td data-sheets-value="[null,2,&quot;1366 (849)&quot;]">1366
								(849)</td>
							<td data-sheets-value="[null,3,null,0.7395833333333334]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">17:45</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,22]">22</td>
							<td data-sheets-value="[null,3,null,12433]">12433</td>
							<td data-sheets-value="[null,2,&quot;Rajdhani&quot;]">Rajdhani</td>
							<td
								data-sheets-value="[null,2,&quot;Chennai \u2013 H. Nizamuddin&quot;]">Chennai
							</td>
							<td>H. Nizamuddin</td>
							<td data-sheets-value="[null,3,null,7]">7</td>
							<td data-sheets-value="[null,2,&quot;2174 (1351)&quot;]">2174
								(1351)</td>
							<td data-sheets-value="[null,3,null,1.1770833333333333]"
								data-sheets-numberformat="[null,6,&quot;[h]:mm:ss&quot;,1]">28:15</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,23]">23</td>
							<td data-sheets-value="[null,3,null,12437]">12437</td>
							<td data-sheets-value="[null,2,&quot;Rajdhani&quot;]">Rajdhani</td>
							<td
								data-sheets-value="[null,2,&quot;Secunderabad \u2013 H. Nizamuddin&quot;]">Secunderabad
							</td>
							<td>H. Nizamuddin</td>
							<td data-sheets-value="[null,3,null,5]">5</td>
							<td data-sheets-value="[null,2,&quot;1658 (1030)&quot;]">1658
								(1030)</td>
							<td data-sheets-value="[null,3,null,0.8993055555555556]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">21:35</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,24]">24</td>
							<td data-sheets-value="[null,3,null,12187]">12187</td>
							<td data-sheets-value="[null,2,&quot;Garib Rath&quot;]">Garib
								Rath</td>
							<td
								data-sheets-value="[null,2,&quot;Jabalpur Junction \u2013Mumbai CST&quot;]">Jabalpur
								Junction</td>
							<td>Mumbai CST</td>
							<td data-sheets-value="[null,3,null,10]">10</td>
							<td data-sheets-value="[null,2,&quot;1726 (1072)&quot;]">1726
								(1072)</td>
							<td data-sheets-value="[null,3,null,0.9444444444444444]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">22:40</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,25]">25</td>
							<td data-sheets-value="[null,3,null,12224]">12224</td>
							<td data-sheets-value="[null,2,&quot;Duronto&quot;]">Duronto</td>
							<td
								data-sheets-value="[null,2,&quot;Ernakulam \u2013Lokmanya Tilak (T)&quot;]">Ernakulam
							</td>
							<td>Lokmanya Tilak (T)</td>
							<td data-sheets-value="[null,3,null,4]">4</td>
							<td data-sheets-value="[null,2,&quot;1598 (993)&quot;]">1598
								(993)</td>
							<td data-sheets-value="[null,3,null,0.8645833333333334]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">20:45</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,26]">26</td>
							<td data-sheets-value="[null,3,null,12213]">12213</td>
							<td data-sheets-value="[null,2,&quot;Duronto&quot;]">Duronto</td>
							<td
								data-sheets-value="[null,2,&quot;Yesvantpur \u2013 Sarai Rohilla&quot;]">Yesvantpur
							</td>
							<td>Sarai Rohilla</td>
							<td data-sheets-value="[null,3,null,7]">7</td>
							<td data-sheets-value="[null,2,&quot;2384 (1481)&quot;]">2384
								(1481)</td>
							<td data-sheets-value="[null,3,null,1.2986111111111112]"
								data-sheets-numberformat="[null,6,&quot;[h]:mm:ss&quot;,1]">31:10</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,27]">27</td>
							<td data-sheets-value="[null,3,null,12877]">12877</td>
							<td data-sheets-value="[null,2,&quot;Garib Rath&quot;]">Garib
								Rath</td>
							<td
								data-sheets-value="[null,2,&quot;Ranchi \u2013 New Delhi&quot;]">Ranchi
							</td>
							<td>New Delhi</td>
							<td data-sheets-value="[null,3,null,11]">11</td>
							<td data-sheets-value="[null,2,&quot;1341 (833)&quot;]">1341
								(833)</td>
							<td data-sheets-value="[null,3,null,0.7361111111111112]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">17:40</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,28]">28</td>
							<td data-sheets-value="[null,3,null,12264]">12264</td>
							<td data-sheets-value="[null,2,&quot;Duronto&quot;]">Duronto</td>
							<td
								data-sheets-value="[null,2,&quot;H. Nizamuddin \u2013Pune&quot;]">H.
								Nizamuddin</td>
							<td>Pune</td>
							<td data-sheets-value="[null,3,null,6]">6</td>
							<td data-sheets-value="[null,2,&quot;1509 (938)&quot;]">1509
								(938)</td>
							<td data-sheets-value="[null,3,null,0.8333333333333334]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">20:00</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,29]">29</td>
							<td data-sheets-value="[null,3,null,12262]">12262</td>
							<td data-sheets-value="[null,2,&quot;Duronto&quot;]">Duronto</td>
							<td
								data-sheets-value="[null,2,&quot;Howrah \u2013 Mumbai CST&quot;]">Howrah
							</td>
							<td>Mumbai CST</td>
							<td data-sheets-value="[null,3,null,5]">5</td>
							<td data-sheets-value="[null,2,&quot;1968 (1223)&quot;]">1968
								(1223)</td>
							<td data-sheets-value="[null,3,null,1.0902777777777777]"
								data-sheets-numberformat="[null,6,&quot;[h]:mm:ss&quot;,1]">26:10</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,30]">30</td>
							<td data-sheets-value="[null,3,null,12453]">12453</td>
							<td data-sheets-value="[null,2,&quot;Rajdhani&quot;]">Rajdhani</td>
							<td
								data-sheets-value="[null,2,&quot;Ranchi \u2013 New Delhi&quot;]">Ranchi
							</td>
							<td>New Delhi</td>
							<td data-sheets-value="[null,3,null,4]">4</td>
							<td data-sheets-value="[null,2,&quot;1341 (833)&quot;]">1341
								(833)</td>
							<td data-sheets-value="[null,3,null,0.7361111111111112]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">17:40</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,31]">31</td>
							<td data-sheets-value="[null,3,null,12222]">12222</td>
							<td data-sheets-value="[null,2,&quot;Duronto&quot;]">Duronto</td>
							<td data-sheets-value="[null,2,&quot;Howrah \u2013 Pune&quot;]">Howrah
							</td>
							<td>Pune</td>
							<td data-sheets-value="[null,3,null,6]">6</td>
							<td data-sheets-value="[null,2,&quot;2021 (1256)&quot;]">2021
								(1256)</td>
							<td data-sheets-value="[null,3,null,1.1354166666666667]"
								data-sheets-numberformat="[null,6,&quot;[h]:mm:ss&quot;,1]">27:15</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,32]">32</td>
							<td data-sheets-value="[null,3,null,12156]">12156</td>
							<td data-sheets-value="[null,2,&quot;Superfast&quot;]">Superfast</td>
							<td
								data-sheets-value="[null,2,&quot;Hazrat Nizamuddin \u2013Bhopal Habibganj&quot;]">Hazrat
								Nizamuddin</td>
							<td>Bhopal Habibganj</td>
							<td data-sheets-value="[null,3,null,7]">7</td>
							<td data-sheets-value="[null,2,&quot;800 (635)&quot;]">800
								(635)</td>
							<td data-sheets-value="[null,3,null,0.4270833333333333]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">10:15</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,33]">33</td>
							<td data-sheets-value="[null,3,null,22824]">22824</td>
							<td data-sheets-value="[null,2,&quot;Rajdhani&quot;]">Rajdhani</td>
							<td
								data-sheets-value="[null,2,&quot;New Delhi \u2013Bhubaneswar&quot;]">New
								Delhi</td>
							<td>Bhubaneswar</td>
							<td data-sheets-value="[null,3,null,10]">10</td>
							<td data-sheets-value="[null,2,&quot;1800 (1118)&quot;]">1800
								(1118)</td>
							<td data-sheets-value="[null,3,null,1.0069444444444444]"
								data-sheets-numberformat="[null,6,&quot;[h]:mm:ss&quot;,1]">24:10</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,34]">34</td>
							<td data-sheets-value="[null,3,null,12009]">12009</td>
							<td data-sheets-value="[null,2,&quot;Shatabdi&quot;]">Shatabdi</td>
							<td
								data-sheets-value="[null,2,&quot;Mumbai Central \u2013Ahmedabad&quot;]">Mumbai
								Central</td>
							<td>Ahmedabad</td>
							<td data-sheets-value="[null,3,null,7]">7</td>
							<td data-sheets-value="[null,2,&quot;493 (306)&quot;]">493
								(306)</td>
							<td data-sheets-value="[null,3,null,0.28125]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">6:45</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,35]">35</td>
							<td data-sheets-value="[null,3,null,12060]">12060</td>
							<td data-sheets-value="[null,2,&quot;Jan Shatabdi&quot;]">Jan
								Shatabdi</td>
							<td
								data-sheets-value="[null,2,&quot;Hazrat Nizamuddin \u2013Kota&quot;]">Hazrat
								Nizamuddin</td>
							<td>Kota</td>
							<td data-sheets-value="[null,3,null,8]">8</td>
							<td data-sheets-value="[null,2,&quot;458 (285)&quot;]">458
								(285)</td>
							<td data-sheets-value="[null,3,null,0.2638888888888889]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">6:20</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,36]">36</td>
							<td data-sheets-value="[null,3,null,12243]">12243</td>
							<td data-sheets-value="[null,2,&quot;Duronto&quot;]">Duronto</td>
							<td
								data-sheets-value="[null,2,&quot;Chennai \u2013Coimbatore&quot;]">Chennai
							</td>
							<td>Coimbatore</td>
							<td data-sheets-value="[null,3,null,1]">1</td>
							<td data-sheets-value="[null,2,&quot;496 (308)&quot;]">496
								(308)</td>
							<td data-sheets-value="[null,3,null,0.2777777777777778]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">6:40</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,37]">37</td>
							<td data-sheets-value="[null,3,null,12013]">12013</td>
							<td data-sheets-value="[null,2,&quot;Shatabdi&quot;]">Shatabdi</td>
							<td
								data-sheets-value="[null,2,&quot;New Delhi \u2013 Amritsar&quot;]">New
								Delhi</td>
							<td>Amritsar</td>
							<td data-sheets-value="[null,3,null,5]">5</td>
							<td data-sheets-value="[null,2,&quot;449 (279)&quot;]">449
								(279)</td>
							<td data-sheets-value="[null,3,null,0.2534722222222222]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">6:05</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,38]">38</td>
							<td data-sheets-value="[null,3,null,12029]">12029</td>
							<td data-sheets-value="[null,2,&quot;Shatabdi&quot;]">Shatabdi</td>
							<td
								data-sheets-value="[null,2,&quot;New Delhi \u2013 Amritsar&quot;]">New
								Delhi</td>
							<td>Amritsar</td>
							<td data-sheets-value="[null,3,null,5]">5</td>
							<td data-sheets-value="[null,2,&quot;449 (279)&quot;]">449
								(279)</td>
							<td data-sheets-value="[null,3,null,0.2534722222222222]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">6:05</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,39]">39</td>
							<td data-sheets-value="[null,3,null,12031]">12031</td>
							<td data-sheets-value="[null,2,&quot;Shatabdi&quot;]">Shatabdi</td>
							<td
								data-sheets-value="[null,2,&quot;New Delhi \u2013 Amritsar&quot;]">New
								Delhi</td>
							<td>Amritsar</td>
							<td data-sheets-value="[null,3,null,5]">5</td>
							<td data-sheets-value="[null,2,&quot;449 (279)&quot;]">449
								(279)</td>
							<td data-sheets-value="[null,3,null,0.2534722222222222]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">6:05</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,40]">40</td>
							<td data-sheets-value="[null,3,null,12268]">12268</td>
							<td data-sheets-value="[null,2,&quot;Duronto&quot;]">Duronto</td>
							<td
								data-sheets-value="[null,2,&quot;Ahmedabad \u2013Mumbai Central&quot;]">Ahmedabad
							</td>
							<td>Mumbai Central</td>
							<td data-sheets-value="[null,3,null,0]">0</td>
							<td data-sheets-value="[null,2,&quot;493 (306)&quot;]">493
								(306)</td>
							<td data-sheets-value="[null,3,null,0.2708333333333333]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">6:30</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,41]">41</td>
							<td data-sheets-value="[null,3,null,22203]">22203</td>
							<td data-sheets-value="[null,2,&quot;Duronto&quot;]">Duronto</td>
							<td
								data-sheets-value="[null,2,&quot;Visakhapatnam \u2013Secunderabad&quot;]">Visakhapatnam
							</td>
							<td>Secunderabad</td>
							<td data-sheets-value="[null,3,null,1]">1</td>
							<td data-sheets-value="[null,2,&quot;701 (436)&quot;]">701
								(436)</td>
							<td data-sheets-value="[null,3,null,0.3958333333333333]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">9:30</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,42]">42</td>
							<td data-sheets-value="[null,3,null,22424]">22424</td>
							<td data-sheets-value="[null,2,&quot;Rajdhani&quot;]">Rajdhani</td>
							<td
								data-sheets-value="[null,2,&quot;New Delhi \u2013Guwahati&quot;]">New
								Delhi</td>
							<td>Guwahati</td>
							<td data-sheets-value="[null,3,null,11]">11</td>
							<td data-sheets-value="[null,2,&quot;1908 (1186)&quot;]">1908
								(1186)</td>
							<td data-sheets-value="[null,3,null,1.1388888888888888]"
								data-sheets-numberformat="[null,6,&quot;[h]:mm:ss&quot;,1]">27:20</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,43]">43</td>
							<td data-sheets-value="[null,3,null,12429]">12429</td>
							<td data-sheets-value="[null,2,&quot;Rajdhani&quot;]">Rajdhani</td>
							<td
								data-sheets-value="[null,2,&quot;H. Nizamuddin \u2013Bangalore&quot;]">H.
								Nizamuddin</td>
							<td>Bangalore</td>
							<td data-sheets-value="[null,3,null,11]">11</td>
							<td data-sheets-value="[null,2,&quot;2383 (1481)&quot;]">2383
								(1481)</td>
							<td data-sheets-value="[null,3,null,1.3958333333333333]"
								data-sheets-numberformat="[null,6,&quot;[h]:mm:ss&quot;,1]">33:30</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,44]">44</td>
							<td data-sheets-value="[null,3,null,12026]">12026</td>
							<td data-sheets-value="[null,2,&quot;Shatabdi&quot;]">Shatabdi</td>
							<td
								data-sheets-value="[null,2,&quot;Secunderabad \u2013Pune&quot;]">Secunderabad
							</td>
							<td>Pune</td>
							<td data-sheets-value="[null,3,null,6]">6</td>
							<td data-sheets-value="[null,2,&quot;597 (371)&quot;]">597
								(371)</td>
							<td data-sheets-value="[null,3,null,0.3472222222222222]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">8:20</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,45]">45</td>
							<td data-sheets-value="[null,3,null,12028]">12028</td>
							<td data-sheets-value="[null,2,&quot;Shatabdi&quot;]">Shatabdi</td>
							<td
								data-sheets-value="[null,2,&quot;Bangalore \u2013 Chennai&quot;]">Bangalore
							</td>
							<td>Chennai</td>
							<td data-sheets-value="[null,3,null,2]">2</td>
							<td data-sheets-value="[null,2,&quot;362 (225)&quot;]">362
								(225)</td>
							<td data-sheets-value="[null,3,null,0.20833333333333334]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">5:00</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,46]">46</td>
							<td data-sheets-value="[null,3,null,12024]">12024</td>
							<td data-sheets-value="[null,2,&quot;Jan Shatabdi&quot;]">Jan
								Shatabdi</td>
							<td data-sheets-value="[null,2,&quot;Patna \u2013 Howrah&quot;]">Patna
							</td>
							<td>Howrah</td>
							<td data-sheets-value="[null,3,null,12]">12</td>
							<td data-sheets-value="[null,2,&quot;532 (331)&quot;]">532
								(331)</td>
							<td data-sheets-value="[null,3,null,0.3194444444444444]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">7:40</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,47]">47</td>
							<td data-sheets-value="[null,3,null,12007]">12007</td>
							<td data-sheets-value="[null,2,&quot;Shatabdi&quot;]">Shatabdi</td>
							<td
								data-sheets-value="[null,2,&quot;Chennai \u2013 Mysore&quot;]">Chennai
							</td>
							<td>Mysore</td>
							<td data-sheets-value="[null,3,null,1]">1</td>
							<td data-sheets-value="[null,2,&quot;500 (311)&quot;]">500
								(311)</td>
							<td data-sheets-value="[null,3,null,0.2916666666666667]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">7:00</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,48]">48</td>
							<td data-sheets-value="[null,3,null,12155]">12155</td>
							<td data-sheets-value="[null,2,&quot;Superfast&quot;]">Superfast</td>
							<td
								data-sheets-value="[null,2,&quot;Habibganj \u2013 H. Nizamuddin (Shaan \u2013 E \u2013 Bhopal)&quot;]">Habibganj
							</td>
							<td>H. Nizamuddin (Shaan-E-Bhopal)</td>
							<td data-sheets-value="[null,3,null,8]">8</td>
							<td data-sheets-value="[null,2,&quot;701 (436)&quot;]">701
								(436)</td>
							<td data-sheets-value="[null,3,null,0.4201388888888889]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">10:05</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,49]">49</td>
							<td data-sheets-value="[null,3,null,12278]">12278</td>
							<td data-sheets-value="[null,2,&quot;Duronto&quot;]">Duronto</td>
							<td data-sheets-value="[null,2,&quot;Puri-Howrah&quot;]">Puri</td>
							<td>Howrah</td>
							<td data-sheets-value="[null,3,null,2]">2</td>
							<td data-sheets-value="[null,2,&quot;500 (311)&quot;]">500
								(311)</td>
							<td data-sheets-value="[null,3,null,0.3020833333333333]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">7:15</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,50]">50</td>
							<td data-sheets-value="[null,3,null,12394]">12394</td>
							<td data-sheets-value="[null,2,&quot;Superfast&quot;]">Superfast</td>
							<td
								data-sheets-value="[null,2,&quot;New Delhi \u2013Rajendranagar(Sampoorna Kranti Express)&quot;]">New
								Delhi</td>
							<td>Rajendranagar(Sampoorna Kranti Express)</td>
							<td data-sheets-value="[null,3,null,2]">2</td>
							<td data-sheets-value="[null,2,&quot;1002 (623)&quot;]">1002
								(623)</td>
							<td data-sheets-value="[null,3,null,0.5868055555555556]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">14:05</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,51]">51</td>
							<td data-sheets-value="[null,3,null,12227]">12227</td>
							<td data-sheets-value="[null,2,&quot;Duronto&quot;]">Duronto</td>
							<td
								data-sheets-value="[null,2,&quot;Indore \u2013 Mumbai Central&quot;]">Indore
							</td>
							<td>Mumbai Central</td>
							<td data-sheets-value="[null,3,null,3]">3</td>
							<td data-sheets-value="[null,2,&quot;828 (514)&quot;]">828
								(514)</td>
							<td data-sheets-value="[null,3,null,0.5]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">12:00</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,52]">52</td>
							<td data-sheets-value="[null,3,null,12397]">12397</td>
							<td data-sheets-value="[null,2,&quot;Superfast&quot;]">Superfast</td>
							<td
								data-sheets-value="[null,2,&quot;Gaya \u2013 New Delhi(Mahabodhi Express)&quot;]">Gaya
							</td>
							<td>New Delhi(Mahabodhi Express)</td>
							<td data-sheets-value="[null,3,null,13]">13</td>
							<td data-sheets-value="[null,2,&quot;993 (617)&quot;]">993
								(617)</td>
							<td data-sheets-value="[null,3,null,0.6041666666666666]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">14:30</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,53]">53</td>
							<td data-sheets-value="[null,3,null,12415]">12415</td>
							<td data-sheets-value="[null,2,&quot;Superfast&quot;]">Superfast</td>
							<td
								data-sheets-value="[null,2,&quot;Indore \u2013 Hazrat Nizamuddin&quot;]">Indore
							</td>
							<td>Hazrat Nizamuddin</td>
							<td data-sheets-value="[null,3,null,17]">17</td>
							<td data-sheets-value="[null,2,&quot;818 (720)&quot;]">818
								(720)</td>
							<td data-sheets-value="[null,3,null,0.47708333333333336]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">11:27</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,54]">54</td>
							<td data-sheets-value="[null,3,null,12676]">12676</td>
							<td data-sheets-value="[null,2,&quot;Superfast&quot;]">Superfast</td>
							<td
								data-sheets-value="[null,2,&quot;Coimbatore \u2013Chennai (Kovai Express)&quot;]">Coimbatore
							</td>
							<td>Chennai (Kovai Express)</td>
							<td data-sheets-value="[null,3,null,10]">10</td>
							<td data-sheets-value="[null,2,&quot;496 (308)&quot;]">496
								(308)</td>
							<td data-sheets-value="[null,3,null,0.3055555555555556]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">7:20</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,55]">55</td>
							<td data-sheets-value="[null,3,null,12431]">12431</td>
							<td data-sheets-value="[null,2,&quot;Rajdhani&quot;]">Rajdhani</td>
							<td
								data-sheets-value="[null,2,&quot;Thiruvananthapuram\u2013 H. Nizamuddin&quot;]">Thiruvananthapuram</td>
							<td>H. Nizamuddin</td>
							<td data-sheets-value="[null,3,null,15]">15</td>
							<td data-sheets-value="[null,2,&quot;2847 (1769)&quot;]">2847
								(1769)</td>
							<td data-sheets-value="[null,3,null,1.7256944444444444]"
								data-sheets-numberformat="[null,6,&quot;[h]:mm:ss&quot;,1]">41:25</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,56]">56</td>
							<td data-sheets-value="[null,3,null,12074]">12074</td>
							<td data-sheets-value="[null,2,&quot;Jan Shatabdi&quot;]">Jan
								Shatabdi</td>
							<td
								data-sheets-value="[null,2,&quot;Bhubaneswar \u2013Howrah&quot;]">Bhubaneswar
							</td>
							<td>Howrah</td>
							<td data-sheets-value="[null,3,null,7]">7</td>
							<td data-sheets-value="[null,2,&quot;437 (272)&quot;]">437
								(272)</td>
							<td data-sheets-value="[null,3,null,0.2708333333333333]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">6:30</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,57]">57</td>
							<td data-sheets-value="[null,3,null,12042]">12042</td>
							<td data-sheets-value="[null,2,&quot;Shatabdi&quot;]">Shatabdi</td>
							<td
								data-sheets-value="[null,2,&quot;New Jalpaiguri \u2013Howrah&quot;]">New
								Jalpaiguri</td>
							<td>Howrah</td>
							<td data-sheets-value="[null,3,null,3]">3</td>
							<td data-sheets-value="[null,2,&quot;566 (352)&quot;]">566
								(352)</td>
							<td data-sheets-value="[null,3,null,0.3333333333333333]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">8:00</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,58]">58</td>
							<td data-sheets-value="[null,3,null,12452]">12452</td>
							<td data-sheets-value="[null,2,&quot;Superfast&quot;]">Superfast</td>
							<td
								data-sheets-value="[null,2,&quot;New Delhi \u2013 Kanpur(Shram Shakti Express)&quot;]">New
								Delhi</td>
							<td>Kanpur(Shram Shakti Express)</td>
							<td data-sheets-value="[null,3,null,0]">0</td>
							<td data-sheets-value="[null,2,&quot;441 (274)&quot;]">441
								(274)</td>
							<td data-sheets-value="[null,3,null,0.2604166666666667]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">6:15</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,59]">59</td>
							<td data-sheets-value="[null,3,null,12493]">12493</td>
							<td data-sheets-value="[null,2,&quot;Rajdhani&quot;]">Rajdhani</td>
							<td
								data-sheets-value="[null,2,&quot;H. Nizamuddin \u2013Bangalore&quot;]">H.
								Nizamuddin</td>
							<td>Bangalore</td>
							<td data-sheets-value="[null,3,null,7]">7</td>
							<td data-sheets-value="[null,2,&quot;2293 (1425)&quot;]">2293
								(1425)</td>
							<td data-sheets-value="[null,3,null,1.3958333333333333]"
								data-sheets-numberformat="[null,6,&quot;[h]:mm:ss&quot;,1]">33:30</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,60]">60</td>
							<td data-sheets-value="[null,3,null,12303]">12303</td>
							<td data-sheets-value="[null,2,&quot;Superfast&quot;]">Superfast</td>
							<td
								data-sheets-value="[null,2,&quot;Howrah \u2013 New Delhi(Poorva Express)&quot;]">Howrah
							</td>
							<td>New Delhi(Poorva Express)</td>
							<td data-sheets-value="[null,3,null,22]">22</td>
							<td data-sheets-value="[null,2,&quot;1531 (951)&quot;]">1531
								(951)</td>
							<td data-sheets-value="[null,3,null,0.9652777777777778]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">23:10</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,63]">61</td>
							<td data-sheets-value="[null,3,null,12958]">12958</td>
							<td data-sheets-value="[null,2,&quot;Rajdhani&quot;]">Rajdhani</td>
							<td
								data-sheets-value="[null,2,&quot;New Delhi \u2013Ahmedabad (Swarna Jayanti)&quot;]">New
								Delhi</td>
							<td>Ahmedabad (Swarna Jayanti)</td>
							<td data-sheets-value="[null,3,null,6]">6</td>
							<td data-sheets-value="[null,2,&quot;935 (581)&quot;]">935
								(581)</td>
							<td data-sheets-value="[null,3,null,0.5694444444444444]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">13:40</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,64]">62</td>
							<td data-sheets-value="[null,3,null,12423]">12423</td>
							<td data-sheets-value="[null,2,&quot;Rajdhani&quot;]">Rajdhani</td>
							<td
								data-sheets-value="[null,2,&quot;Dibrugarh \u2013 New Delhi&quot;]">Dibrugarh
							</td>
							<td>New Delhi</td>
							<td data-sheets-value="[null,3,null,17]">17</td>
							<td data-sheets-value="[null,2,&quot;2473 (1537)&quot;]">2473
								(1537)</td>
							<td data-sheets-value="[null,3,null,1.5798611111111112]"
								data-sheets-numberformat="[null,6,&quot;[h]:mm:ss&quot;,1]">37:55</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,61]">63</td>
							<td data-sheets-value="[null,3,null,12246]">12246</td>
							<td data-sheets-value="[null,2,&quot;Duronto&quot;]">Duronto</td>
							<td
								data-sheets-value="[null,2,&quot;Yesvantpur \u2013Howrah&quot;]">Yesvantpur
							</td>
							<td>Howrah</td>
							<td data-sheets-value="[null,3,null,4]">4</td>
							<td data-sheets-value="[null,2,&quot;1960 (1218)&quot;]">1960
								(1218)</td>
							<td data-sheets-value="[null,3,null,1.1979166666666667]"
								data-sheets-numberformat="[null,6,&quot;[h]:mm:ss&quot;,1]">28:45</td>
						</tr>
						<tr>
							<td data-sheets-value="[null,3,null,62]">64</td>
							<td data-sheets-value="[null,3,null,12005]">12005</td>
							<td data-sheets-value="[null,2,&quot;Shatabdi&quot;]">Shatabdi</td>
							<td
								data-sheets-value="[null,2,&quot;New Delhi \u2013 Kalka&quot;]">New
								Delhi</td>
							<td>Kalka</td>
							<td data-sheets-value="[null,3,null,3]">3</td>
							<td data-sheets-value="[null,2,&quot;269 (167)&quot;]">269
								(167)</td>
							<td data-sheets-value="[null,3,null,0.1701388888888889]"
								data-sheets-numberformat="[null,6,&quot;h:mm&quot;,1]">4:05</td>
						</tr>

					</tbody>
				</table>
			</div>
			<div style="float: right; width: 18%;">
				<script async
					src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- 160-600 -->
				<ins class="adsbygoogle"
					style="display: inline-block; width: 160px; height: 600px"
					data-ad-client="ca-pub-6274485334555977" data-ad-slot="5862826042"></ins>
				<script>
					(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
				<br /><br /><br />
				<script async
					src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- 160-600 -->
				<ins class="adsbygoogle"
					style="display: inline-block; width: 160px; height: 600px"
					data-ad-client="ca-pub-6274485334555977" data-ad-slot="5862826042"></ins>
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
