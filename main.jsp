<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="main.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR&display=swap" rel="stylesheet">
<title>Peter's Luger 홈페이지에 오신것을 환영합니다.</title>
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
	<div class="main">
		<img src="img/steak.jpg" alt="" srcset="" class="main-img" />
	</div>
	<div class="book">
		<div class="call">
			전화 예약<br> <span id="inner">10명 이하만 가능</span><br> <span id="inner2">BROOKLYN, NY<br> 718-387-7400
			</span>
		</div>
		<div class="online">
			온라인 예약<br>
			<button class="btn_book" type="submit" onclick="location.href='book.jsp'">예약하기</button>
		</div>
		<div class="online-check">
			예약확인<br>
			<button class="btn_check" type="submit" onclick="location.href='book_check.jsp'">예약확인</button>

		</div>
	</div>
	<div class ="btn-div">
		<button class="go" onclick="location.href='https://peterluger.com/'">go to English page!</button>

	</div>


	<footer>
		<div class="ny">
			Brooklyn, NY <br> Peter Luger, Inc.<br> 178 Broadway<br> Brooklyn, N.Y. 11211<br> Reservations:<br> 718-387-7400
		</div>
	</footer>
</body>
</html>