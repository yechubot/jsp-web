<%@ page contentType="text/html; charset=utf-8" %>
<jsp:useBean id="bookMgr" class="steakhouse.BookingMgr" />
<%
    String name = "";
	String phone = "";
	String result ="";
	if(request.getParameter("name") != null)  
	   name  = request.getParameter("name");
	if(request.getParameter("phone") != null) 
		phone  = request.getParameter("phone");
	result = bookMgr.getBooking(name, phone);
	if(result!=""){
		session.setAttribute("nKey",name);
		session.setAttribute("dKey", result);
%>
	<script> 
	  alert("예약을 찾았습니다. 확인 페이지로 이동합니다.");
      location.href="bookDate_check.jsp";
	</script>
<%	}else{ %>
	<script>
	alert("예약된 내역이 없습니다. 예약페이지로 이동합니다.");
	location.href = "book.jsp";
	</script>
<%}%>