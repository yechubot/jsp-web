<%@page import="steakhouse.ReviewBean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="mgr" class="steakhouse.ReviewMgr" />

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
	<div class="rv-title">고객님들의 소중한 후기</div>


	<table class="rv-tbl">
		<tr class="row0">
			<td width="50px">번호</td>
			<td>제목</td>
			<td width="100px">방문일</td>
			<td width="130px">닉네임</td>
		</tr>
		<%
			Vector<ReviewBean> vlist = mgr.getList();
		int count = vlist.size();

		for (int i = 0; i < vlist.size(); i++) {
			ReviewBean rbean = vlist.get(i);
			//int num = rbean.getNum();
			String title = rbean.getTitle();
			String visitDate = rbean.getVisitDate();
			String nickname = rbean.getNickname();

			out.println("<tr><td align='center'>" + count + "</td>"); //번호
			out.println("<td><a href='seeReview.jsp?num=" + count + "'>" + title + "</a></td>"); //제목
			out.println("<td>" + visitDate + "</td>");
			out.println("<td>" + nickname + "</td></tr>");
			count = count - 1; //1개씩 세니까 줄어드는 건가
		}
		%>

	</table>
	<div class="btns-div">
		<button>이전</button>
		<button>다음</button>
	</div>
	<h2 onclick="location.href='writeReview.jsp'" class="go-write">방문후기 작성하러가기</h2>

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