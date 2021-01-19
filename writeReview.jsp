<%@ page contentType="text/html; charset=euc-kr"%>

<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="main.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR&display=swap" rel="stylesheet">
<title>방문 후기</title>
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
	<form name="reviewForm" method="post" action="reviewCheck.jsp">
		<table class="tbl-review">
			<tr>
				<td>제목:</td>
				<td><input type="text" name="title" required></td>
			</tr>
			<tr>
				<td>닉네임:</td>
				<td><input type="text" name="nickname" required></td>
			</tr>
			<tr>
				<td> 방문 날짜 :</td>
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
				<td>내용:</td>
				<td><textarea name="details" class="txtarea" maxlength="300" required></textarea></td>
			</tr>
			<tr>
				<td colspan="2" class="td-btn">
					<button type="submit" class="done">제출</button>
				</td>
			</tr>
		</table>
	</form>


	<div class="btn-div">
		<button class="go" onclick="location.href='https://peterluger.com/'">go to English page!</button>

	</div>


	<footer>
		<div class="ny">
			Brooklyn, NY <br> Peter Luger, Inc.<br> 178 Broadway<br> Brooklyn, N.Y. 11211<br> Reservations:<br> 718-387-7400
		</div>
	</footer>
</body>
</html>