<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="main.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR&display=swap" rel="stylesheet">
<title>예약하기</title>

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
			</ul>
		</nav>
	</header>
	<div class="note">
		이미 예약하신 경우예는 예약확인을 해주세요<br> 중복 예약은 불가능합니다.
	</div>
	<form name="bookingForm" method="post" action="bookingCheck.jsp">
		<div class="booktbl-div">
			<table class="booktbl">

				<tr>
					<td>이름:</td>
					<td><input type="text" name="name" required placeholder="귀하의 성함을 입력하세요. "></td>
				</tr>
				<tr>
					<td>전화번호:</td>
					<td><input type="text" name="phone" required placeholder="010-0000-0000" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" maxlength="14"></td>
				</tr>
				<tr>
					<td>날짜 :</td>
					<td><select name="year" required>
							<option value="2020">2020
							<option value="2021">2021
					</select>년 <select name="month" required>
							<%
								for (int i = 1; i <= 12; i++) {
								out.println("<option value='" + i + "'>" + i);
							}
							%>
					</select>월 <select name="day" required>
							<%
								for (int i = 1; i <= 31; i++) {
								out.println("<option value='" + i + "'>" + i);
							}
							%>
					</select>일</td>
				</tr>
				<tr>
					<td>시간:</td>
					<td><select name="hr" required>
							<%
								for (int i = 10; i <= 21; i++) {
								out.println("<option value='" + i + "'>" + i);
							}
							%>
					</select>시 <select name="min" required>
							<option value="00">00
							<option value="15">15
							<option value="30">30
							<option value="15">50
					</select>분</td>
				<tr>
					<td colspan="2" align="center">
						<button type="submit" class="book-done">예약완료</button>
				</tr>
			</table>


		</div>

	</form>

	<footer>
		<div class="ny">
			Brooklyn, NY <br> Peter Luger, Inc.<br> 178 Broadway<br> Brooklyn, N.Y. 11211<br> Reservations:<br> 718-387-7400
		</div>
	</footer>
</body>
</html>