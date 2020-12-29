<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="mgr" class="steakhouse.ReviewMgr" />
<jsp:useBean id="bean" class="steakhouse.ReviewBean" />
<jsp:setProperty property="*" name="bean" />
<%
	String title, nickname, visitDate, details, msg, loc;

	title = request.getParameter("title");
	nickname = request.getParameter("nickname");
	details = request.getParameter("details");
	visitDate = request.getParameter("year") + "년" + " " + request.getParameter("month") + "월" + " "
			+ request.getParameter("day") + "일";
	
	boolean result = mgr.insertReview(bean);
	bean.setTitle(title);
	bean.setNickname(nickname);
	bean.setVisitDate(visitDate);
	bean.setDetails(details);
	
	if(result){
		msg ="후기가 등록되었습니다.";
		loc ="review.jsp";
		
	}else {
		msg ="후기 등록에 실패했습니다.";
		loc ="main.jsp";
	}
%>
<script>
alert("<%=msg%>");

location.href = "<%=loc%>";
</script>