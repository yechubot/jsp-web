<!DOCTYPE html>

<head>
    <link rel="stylesheet" type="text/css" href="main.css" />
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap" rel="stylesheet">
    <title>예약하기</title>
</head>

<body>
    <header>
        <nav class="header-list">
            <ul>
                <li>레스토랑 소개</li>
                <li><img src="img/peter-luger-logo.png" alt="Peter Luger's steakhouse" />
                </li>
                <li>갤러리</li>
            </ul>
        </nav>
    </header>

    <div class="book-main">
        <table class="book">
            <tr>
                <td>이름: </td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>전화번호: </td>
                <td><input type="number" name="phone"></td>
            </tr>
            <tr>
                <td>날짜 :</td>
                <td>
                    <select name="year">
                        <option value="2020">2020
                        <option value="2021">2021
                    </select>년
                    <select name="month">
                        <%
                        for (int i = 1; i <= 12; i++) {
                            out.println("<option value='" + i + "'>" + i);
                        }
                    %>
                    </select>월
                    <select name="date">
                        <%
								for (int i = 1; i <= 31; i++) {
									out.println("<option value='" + i + "'>" + i);
								}
							%>
                    </select>일
                </td>
            </tr>
        </table>
    </div>


</body>
<footer>
    <div class="ny">Brooklyn, NY <br>
        Peter Luger, Inc.<br>
        178 Broadway<br>
        Brooklyn, N.Y. 11211<br>
        Reservations:<br>
        718-387-7400</div>

</footer>

</html>