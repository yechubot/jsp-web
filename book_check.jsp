<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 
<html>
<head>
    <link rel="stylesheet" type="text/css" href="main.css" />
   <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR&display=swap" rel="stylesheet">
<title>예약확인</title>  

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
				<li onclick="location.href='location.jsp'">찾아오시는 길 </li>
			</ul>
		</nav>
    </header>
     <form name ="bookingForm" method ="post" action="bookDate_proc.jsp">
     <div class = "bookctbl-div">
        <table class="booktbl">
        
         <tr>
                <td>예약하신 성함: </td>
                <td><input type="text" name="name" required placeholder="예약하신 성함을 입력하세요."></td>
            </tr>
            <tr>
                <td>예약하신 전화번호: </td>
                <td><input type="text" name="phone" required 
                placeholder="010-0000-0000"
                pattern ="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}"
                maxlength="14"></td>
            </tr>
            <tr>
            	<td colspan="2" align ="center">
            	<button type="submit" class = "book-done">예약일 확인하기</button>
            </tr>
        </table>
        </div>
         </form>
  
<footer>
		<div class="ny">
			Brooklyn, NY <br> Peter Luger, Inc.<br> 178 Broadway<br> Brooklyn, N.Y. 11211<br> Reservations:<br> 718-387-7400
		</div>
	</footer>
</body>

</html>