<%@ page contentType="text/html; charset=euc-kr" pageEncoding="euc-kr" %>
<jsp:useBean id="bookMgr" class="steakhouse.BookingMgr" />
<%
    String name = "";
	String phone = "";
	String result ="";
	if(request.getParameter("name") != null)  
	   name  = new String(request.getParameter("name").getBytes("ISO-8859-1"),"euc-kr");
	if(request.getParameter("phone") != null) 
		phone  = request.getParameter("phone");
	result = bookMgr.getBooking(name, phone);
	if(result!=""){
		session.setAttribute("nKey",name);
		session.setAttribute("dKey", result);
%>
	<script> 
	  alert("������ ã�ҽ��ϴ�. Ȯ�� �������� �̵��մϴ�.");
      location.href="bookDate_check.jsp";
	</script>
<%	}else{ %>
	<script>
	alert("����� ������ �����ϴ�. ������������ �̵��մϴ�.");
	location.href = "book.jsp";
	</script>
<%}%>