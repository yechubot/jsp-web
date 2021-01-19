<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="main.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR&display=swap" rel="stylesheet">
<title>찾아오시는 길</title>

</head>
<body>
	<header>
		<div class="logo">
			<img src="img/peter-luger-logo.png" alt="Peter Luger's steakhouse" onclick="location.href='main.jsp'" />
		</div>
		<nav class="header-list">
			<ul>
				<li onclick="location.href='about.jsp'">레스토랑 소개</li>
				<li onclick="location.href='gallery.jsp'">갤러리</li>
				<li onclick="location.href='location.jsp'">찾아오시는 길</li>
				<li onclick="location.href='review.jsp'">방문 후기</li>
			</ul>
		</nav>
	</header>
	<div class="location-div">
		<div class="loc-title">
			<span>찾아오시는 길</span>
		</div>
		<div class="addr">
			BROOKLYN, NY <br>178 Broadway<br> Brooklyn, N.Y. 11211
		</div>
		<div class="line"></div>
		<div class="loc-title">
			<span>운영시간</span>
		</div>

		<table class="loc-table">
			<tr>
				<td>Monday - Thursday:</td>
				<td>11:45 am - 9:45 pm (last seating)</td>

			</tr>
			<tr>
				<td>Friday & Saturday:</td>
				<td>11:45 am - 10:45 pm (last seating, Brooklyn)</td>

			</tr>
			<tr>
				<td>Sunday:</td>
				<td>12:45 pm - 9:45 pm (last seating)</td>

			</tr>
		</table>
		<div class="line"></div>
		<div class ="bottom">
			Upstairs banquet facilities can be reserved for 45 people.<br> To make a banquet reservation of parties of more than 10 please call<br> Maria at 718-387-0500 x113. Please call the restaurants directly for parties of 10 or less at Brooklyn at 718-387-7400<br> Our fax number is 718-387-3523.
		</div>

	</div>


	<footer>
		<div class="ny">
			Brooklyn, NY <br> Peter Luger, Inc.<br> 178 Broadway<br> Brooklyn, N.Y. 11211<br> Reservations:<br> 718-387-7400
		</div>
	</footer>
</body>

</html>
