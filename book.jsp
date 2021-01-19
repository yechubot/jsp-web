<%@ page contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="main.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR&display=swap" rel="stylesheet">
<title>�����ϱ�</title>

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
	<div class="note">
		�̹� �����Ͻ� ��쿹�� ����Ȯ���� ���ּ���<br> �ߺ� ������ �Ұ����մϴ�.
	</div>
	<form name="bookingForm" method="post" action="bookingCheck.jsp">
		<div class="booktbl-div">
			<table class="booktbl">

				<tr>
					<td>�̸�:</td>
					<td><input type="text" name="name" required placeholder="������ ������ �Է��ϼ���. "></td>
				</tr>
				<tr>
					<td>��ȭ��ȣ:</td>
					<td><input type="text" name="phone" required placeholder="010-0000-0000" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" maxlength="14"></td>
				</tr>
				<tr>
					<td>��¥ :</td>
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
					<td>�ð�:</td>
					<td><select name="hr" required>
							<%
								for (int i = 10; i <= 21; i++) {
								out.println("<option value='" + i + "'>" + i);
							}
							%>
					</select>�� <select name="min" required>
							<option value="00">00
							<option value="15">15
							<option value="30">30
							<option value="15">50
					</select>��</td>
				<tr>
					<td colspan="2" align="center">
						<button type="submit" class="book-done">����Ϸ�</button>
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