<%-- 
    Document   : view_details
    Created on : 1 Oct, 2017, 5:56:03 PM
    Author     : sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="viewdetails.css">
    </head>
    <body>
        <header id="head1">
             <a href="customer_details.jsp" id="home" onclick="return false">WELCOME TO SS TRAVELS</a>
             <nav id="links">
                <a href="Login.jsp" id="link1">BACK TO LOGIN PAGE</a>
            </nav>
        </header><br><br><br><br><br><br>
        <table id="details_table">
            <tr>
                <th>CUSTOMER NAME</th>
                <th>USER - ID</th>
                <th>CUSTOMER ADDRESS</th>
                <th>CONTACT NUMBER</th>
                <th>E-MAIL ID</th>
            </tr>
            <tr>
                <td>${cname}</td>
                <td>${uname}</td>
                <td>${add}</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${cno}</td>
                <td>${mail}</td>
            </tr>
        </table>
    </body>
</html>
