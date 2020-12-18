<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="main.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR&display=swap" rel="stylesheet">
<title>갤러리</title>

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
	<div class="imgs-div">
		<img src="img/winter.jpg" alt="winter" />

		<img src="img/bar.jpg" alt="bar" />
	
		<img src="img/bar2.jpg" alt="bar2" />
		
		<img src="img/dinning.jpg" alt="dinning" />
	
	</div>


	<footer>
		<div class="ny">
			Brooklyn, NY <br> Peter Luger, Inc.<br> 178 Broadway<br> Brooklyn, N.Y. 11211<br> Reservations:<br> 718-387-7400
		</div>
	</footer>
</body>

</html>