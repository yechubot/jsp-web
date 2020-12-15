<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="mgr" class = "steakhouse.BookingMgr"/>
    <jsp:useBean id="bean" class = "steakhouse.BookingBean"/>
    <jsp:setProperty property ="*" name ="bean"/>
   
    <%
    
    String name =request.getParameter("name");
    String phone = request.getParameter("phone");
    String date = 
    		request.getParameter("year")+"년"+" "+
    		request.getParameter("month")+"월"+" "+
    		request.getParameter("day")+"일";
    bean.setDate(date);
    bean.setName(name);
    bean.setPhone(phone);
    boolean result = mgr.insertBooking(bean);
    String msg= "예약에 실패했습니다.";
    String location = "book.jsp";
    
    if(result){
    	msg ="예약되었습니다.";
    	location = "main.jsp";
    }
   %>
<script>
	alert("<%=msg%>");
	location.href = "<%=location%>";
</script>