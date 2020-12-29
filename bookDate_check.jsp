<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%
	String name = (String) session.getAttribute("nKey");
	String result = (String) session.getAttribute("dKey");
%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="main.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR&display=swap" rel="stylesheet">
<title>예약확인</title>
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
				<li onclick="location.href='location.jsp'">찾아오시는 길 </li>
			</ul>
		</nav>
	</header>

	<div class="booktbl-div">
		<table class="booktbl">

			<tr>
				<td><%=name%> 고객님의 예약일은</td>

			</tr>

			<tr>
				<td><%=result%>입니다.</td>

			</tr>
			<tr>
				<td><button class="btn_check" type="submit" onclick="location.href='main.jsp'">홈으로 돌아가기</button></td>
			</tr>
		</table>
	</div>


	<footer>
		<div class="ny">
			Brooklyn, NY <br> Peter Luger, Inc.<br> 178 Broadway<br> Brooklyn, N.Y. 11211<br> Reservations:<br> 718-387-7400
		</div>
	</footer>
</body>

</html>