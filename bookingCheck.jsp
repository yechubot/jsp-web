<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="mgr" class = "steakhouse.BookingMgr"/>
    <jsp:useBean id="bean" class = "steakhouse.BookingBean"/>
    <jsp:setProperty property ="*" name ="bean"/>
   
    <%
    String msg, location;
    String name =request.getParameter("name");
    String phone = request.getParameter("phone");
    
    String date = 
    		request.getParameter("year")+"년"+" "+
    		request.getParameter("month")+"월"+" "+
    		request.getParameter("day")+"일"; 
    String time = 
    		request.getParameter("hr")+"시"+" "+
    		request.getParameter("min")+"분";
    
    boolean phoneResult = mgr.checkPhone(phone);
    
    if(phoneResult){//중복
    	msg= "예약한 번호가 이미 존재합니다.중복 예약은 불가능합니다.";
        location = "book.jsp";
    }else {//중복 아님 
	    bean.setDate(date);
	    bean.setName(name);
	    bean.setPhone(phone);
	    bean.setTime(time);
	    msg= "예약에 실패했습니다.";
	    location = "book.jsp";	
	    
	    //예약 추가 
	    boolean result = mgr.insertBooking(bean);
	       if(result){
	     	msg ="예약되었습니다.";
	     	location = "main.jsp";	
	     }	         
    }      
   %>
<script>
	alert("<%=msg%>");
	location.href = "<%=location%>";
</script>