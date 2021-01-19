<%@ page contentType="text/html; charset=UTF-8" pageEncoding="euc-kr"%>
<jsp:useBean id="mgr" class="steakhouse.ReviewMgr" />
<jsp:useBean id="bean" class="steakhouse.ReviewBean" />
<jsp:setProperty property="*" name="bean" />
<%
	String title, nickname, visitDate, details, msg, loc;

	title = new String(request.getParameter("title").getBytes("ISO-8859-1"),"euc-kr");
	nickname = new String(request.getParameter("nickname").getBytes("ISO-8859-1"),"euc-kr");
	details = new String(request.getParameter("details").getBytes("ISO-8859-1"),"euc-kr");
	visitDate = request.getParameter("year") + "��" + " " + request.getParameter("month") + "��" + " "
			+ request.getParameter("day") + "��";
	bean.setTitle(title);
	bean.setNickname(nickname);
	bean.setVisitDate(visitDate);
	bean.setDetails(details);
	
	boolean result = mgr.insertReview(bean);
	//set �ϱ� ���� �Ἥ date null ���Ծ���...
	//set ���ص� Ÿ��Ʋ, �г���, ������ ��� ������..
	if(result){
		msg ="�ıⰡ ��ϵǾ����ϴ�.";
		loc ="review.jsp";
		
	}else {
		msg ="�ı� ��Ͽ� �����߽��ϴ�.";
		loc ="main.jsp";
	}
%>
<script>
alert("<%=msg%>");

location.href = "<%=loc%>";
</script>