<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="mgr" class="steakhouse.BookingMgr" />
<%
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");

if (!mgr.isBooked(name, phone)) {
%>
<script>
	alert("예약된 내역이 없습니다. 예약페이지로 이동합니다.");
	location.href = "book.jsp";
</script>
<%
	}
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
		<nav class="header-list">
			<ul>
				<li onclick="location.href='about.jsp'">레스토랑 소개</li>
				<li><img src="img/peter-luger-logo.png" alt="Peter Luger's steakhouse" onclick="location.href='main.jsp'" /></li>
				<li onclick="location.href='gallery.jsp'">갤러리</li>
			</ul>
		</nav>
	</header>

	<div class="booktbl-div">
		<table class="booktbl">

			<tr>
				<td><%=name%> 고객님의 예약 날짜는</td>

			</tr>

			<tr>
				<td> 입니다.</td>

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