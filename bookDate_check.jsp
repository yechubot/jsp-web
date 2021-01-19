<%@ page contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>

<%

	String name = (String) session.getAttribute("nKey");

	String result = (String) session.getAttribute("dKey");
	
%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="main.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR&display=swap" rel="stylesheet">
<title>����Ȯ��</title>
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
				<li onclick="location.href='location.jsp'">ã�ƿ��ô� �� </li>
				<li onclick="location.href='review.jsp'">�湮 �ı�</li>
			</ul>
		</nav>
	</header>

	<div class="booktbl-div">
		<table class="booktbl">

			<tr>
				<td><%=name%> ������ ��������</td>

			</tr>

			<tr>
				<td><%=result%>�Դϴ�.</td>

			</tr>
			<tr>
				<td><button class="btn_check" type="submit" onclick="location.href='main.jsp'">Ȩ���� ���ư���</button></td>
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