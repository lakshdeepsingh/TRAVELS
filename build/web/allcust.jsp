<%-- 
    Document   : view_all_details
    Created on : 3 Oct, 2017, 6:15:45 PM
    Author     : sunny
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="viewdetails.css">
    </head>
    <body>
        <jsp:include page="header2.jsp"></jsp:include>
        <br><br>
        <table id="details_table">
            <tr>
                <th>CUSTOMER NAME</th>
                <th>USER - ID</th>
                <th>CUSTOMER ADDRESS</th>
                <th>CONTACT NUMBER</th>
                <th>E-MAIL ID</th>
                <th>PASSWORD</th>
            </tr>
            <c:forEach items="${list}" var="ob" >
          <tr>
             <td>${ob.cname}</td>
             <td>${ob.uname}</td>
             <td>${ob.add}</td>
             <td>${ob.cno}</td>
             <td>${ob.mail}</td>
             <td>${ob.pass}</td>
          </tr>  
          </c:forEach>
        </table>
        
    </body>
</html>
