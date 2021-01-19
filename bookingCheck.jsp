<%@ page contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
    <jsp:useBean id="mgr" class = "steakhouse.BookingMgr"/>
    <jsp:useBean id="bean" class = "steakhouse.BookingBean"/>
    <jsp:setProperty property ="*" name ="bean"/>
   
    <%
    String msg, location;
    String name =new String(request.getParameter("name").getBytes("ISO-8859-1"),"euc-kr");
    String phone = request.getParameter("phone");
    
    String date = 
    		request.getParameter("year")+"��"+" "+
    		request.getParameter("month")+"��"+" "+
    		request.getParameter("day")+"��"; 
    String time = 
    		request.getParameter("hr")+"��"+" "+
    		request.getParameter("min")+"��";
    
    boolean phoneResult = mgr.checkPhone(phone);
    
    if(phoneResult){//�ߺ�
    	msg= "������ ��ȣ�� �̹� �����մϴ�.�ߺ� ������ �Ұ����մϴ�.";
        location = "book.jsp";
    }else {//�ߺ� �ƴ� 
	    bean.setDate(date);
	    bean.setName(name);
	    bean.setPhone(phone);
	    bean.setTime(time);
	    
	    msg= "���࿡ �����߽��ϴ�.";
	    location = "book.jsp";	
	    
	    //���� �߰� 
	    boolean result = mgr.insertBooking(bean);
	       if(result){
	     	msg ="����Ǿ����ϴ�.";
	     	location = "main.jsp";	
	     }	         
    }      
   %>
<script>
	alert("<%=msg%>");
	location.href = "<%=location%>";
</script>