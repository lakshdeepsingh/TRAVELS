<%-- 
    Document   : admin
    Created on : 4 Oct, 2017, 3:16:52 AM
    Author     : sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN</title>
    </head>
    <body>
        <jsp:include page="header2.jsp"></jsp:include>
        <nav style="margin-left: 50px">
            <a href="AdminDetailsServlet" style="text-decoration: none">VIEW ALL CUSTOMER RECORDS</a><br><br>
            <a href="update.jsp" style="text-decoration: none">UPDATE CUSTOMER DETAILS</a><br><br>
            <a href="delete.jsp" style="text-decoration: none">REMOVE CUSTOMER</a>
            
        </nav>
        <br><br>
        <p style="color: red; font-size: 25px;">${attr}</p>
        <P style="color: green; margin-left: 48px; font-size: 20px">${attr1}</P>
    </body>
</html>
