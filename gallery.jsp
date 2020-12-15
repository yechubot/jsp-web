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
		<nav class="header-list">
			<ul>
				<li onclick="location.href='about.jsp'">레스토랑 소개</li>
				<li><img src="img/peter-luger-logo.png" alt="Peter Luger's steakhouse" onclick="location.href='main.jsp'" /></li>
				<li onclick="location.href='gallery.jsp'">갤러리</li>
			</ul>
		</nav>
	</header>
	<div class="imgs-div">
		<img src="img/winter.jpg" alt="winter" />
		<div class="img-txt">
			<div class="txt">겨울의 스테이크 하우스</div>
		</div>
		<img src="img/bar.jpg" alt="bar" />
	<!-- 	<div class="img-txt">
			<h2 class="txt">사람들과 얘기할 수 있는 바 공간</h2>
		</div> -->
		<img src="img/bar2.jpg" alt="bar2" />
		<!-- <div class="img-txt">
			<h2 class="txt">다양하게 준비된 바</h2>
		</div> -->
		<img src="img/dinning.jpg" alt="dinning" />
	<!-- 	<div class="img-txt">
			<h2 class="txt">음식을 즐길 수 있는 여유로운 다이닝 공간</h2>
		</div> -->
	</div>


	<footer>
		<div class="ny">
			Brooklyn, NY <br> Peter Luger, Inc.<br> 178 Broadway<br> Brooklyn, N.Y. 11211<br> Reservations:<br> 718-387-7400
		</div>
	</footer>
</body>

</html>