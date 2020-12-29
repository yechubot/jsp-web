<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@page import ="steakhouse.ReviewBean" %>
<%@page import="java.util.Vector"%>
<jsp:useBean id="mgr" class="steakhouse.ReviewMgr" />
<%
	int num =0;
	if(!(request.getParameter("num")==null|| request.getParameter("num").equals(""))){
		
	num = Integer.parseInt(request.getParameter("num"));
	}
	ReviewBean bean = mgr.getEach(num);
	//Vector<ReviewBean> vlist =mgr.getEach(num);	
	//ReviewBean rvBean = vlist.get(num-1);
%>
<html>
<script>
//alert("<%=bean.getTitle()%>");

</script>
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
	<div class="rv-title">
		고객님들의 소중한 후기 
	</div>
<table class="tbl-review">
			<tr>
				<td>제목:</td>
				<td><%=bean.getTitle() %></td>
			</tr>
			<tr>
				<td>닉네임:</td>
				<td><%=bean.getNickname() %></td>
			</tr>
			<tr>
				<td>방문 날짜 :</td>
				<td><%=bean.getVisitDate()%></td>
			</tr>
			<tr>
				<td>내용:</td>
				<td><%=bean.getDetails()%></td>
			</tr>
			<tr>
				<td colspan="2" class="td-btn">
				
				<button onclick="location.href='review.jsp'">이전으로 돌아가기 </button>
					
				</td>
			</tr>
		</table>


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