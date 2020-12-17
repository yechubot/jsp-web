<%@ page contentType="text/html; charset=utf-8" %>
<jsp:useBean id="bookMgr" class="steakhouse.BookingMgr" />
<%
    String name = "";
	String phone = "";
	String date ="";
	if(request.getParameter("name") != null)  
	   name  = request.getParameter("name");
	if(request.getParameter("phone") != null) 
		phone  = request.getParameter("phone");
	  	date = bookMgr.getBooking(name, phone);
	if(date!=""){
		session.setAttribute("nKey",name);
		session.setAttribute("dKey", date);
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