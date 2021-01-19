<%@ page contentType="text/html; charset=euc-kr"%>

<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="main.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR&display=swap" rel="stylesheet">
<title>�湮 �ı�</title>
</head>

<body>
	<header>
		<div class="logo">
			<img src="img/peter-luger-logo.png" alt="Peter Luger's steakhouse" onclick="location.href='main.jsp'" />
		</div>
		<nav class="header-list">
			<ul>
				<li onclick="location.href='about.jsp'">������� �Ұ�</li>
				<li onclick="location.href='gallery.jsp'">������</li>
				<li onclick="location.href='location.jsp'">ã�ƿ��ô� ��</li>
				<li onclick="location.href='review.jsp'">�湮 �ı�</li>
			</ul>
		</nav>
	</header>
	<form name="reviewForm" method="post" action="reviewCheck.jsp">
		<table class="tbl-review">
			<tr>
				<td>����:</td>
				<td><input type="text" name="title" required></td>
			</tr>
			<tr>
				<td>�г���:</td>
				<td><input type="text" name="nickname" required></td>
			</tr>
			<tr>
				<td> �湮 ��¥ :</td>
				<td><select name="year" required>
						<option value="2020">2020
						<option value="2021">2021
				</select>�� <select name="month" required>
						<%
							for (int i = 1; i <= 12; i++) {
							out.println("<option value='" + i + "'>" + i);
						}
						%>
				</select>�� <select name="day" required>
						<%
							for (int i = 1; i <= 31; i++) {
							out.println("<option value='" + i + "'>" + i);
						}
						%>
				</select>��</td>
			</tr>
			<tr>
				<td>����:</td>
				<td><textarea name="details" class="txtarea" maxlength="300" required></textarea></td>
			</tr>
			<tr>
				<td colspan="2" class="td-btn">
					<button type="submit" class="done">����</button>
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