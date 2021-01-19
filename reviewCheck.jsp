<%@ page contentType="text/html; charset=UTF-8" pageEncoding="euc-kr"%>
<jsp:useBean id="mgr" class="steakhouse.ReviewMgr" />
<jsp:useBean id="bean" class="steakhouse.ReviewBean" />
<jsp:setProperty property="*" name="bean" />
<%
	String title, nickname, visitDate, details, msg, loc;

	title = new String(request.getParameter("title").getBytes("ISO-8859-1"),"euc-kr");
	nickname = new String(request.getParameter("nickname").getBytes("ISO-8859-1"),"euc-kr");
	details = new String(request.getParameter("details").getBytes("ISO-8859-1"),"euc-kr");
	visitDate = request.getParameter("year") + "년" + " " + request.getParameter("month") + "월" + " "
			+ request.getParameter("day") + "일";
	bean.setTitle(title);
	bean.setNickname(nickname);
	bean.setVisitDate(visitDate);
	bean.setDetails(details);
	
	boolean result = mgr.insertReview(bean);
	//set 하기 전에 써서 date null 나왔었음...
	//set 안해도 타이틀, 닉네임, 디테일 어떻게 나왔지..
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