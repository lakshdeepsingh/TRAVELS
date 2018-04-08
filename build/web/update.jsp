<%-- 
    Document   : update
    Created on : 4 Oct, 2017, 8:26:13 PM
    Author     : sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE PAGE</title>
        <style>
            #go
            {
                width: 115px;
                border: none;
                color: black;
                padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                cursor: pointer;
                border-radius: 12px;
                border-color: black;
                transition-duration: 0.5s;
                -webkit-transition-duration: 0.5s;
                margin-left: 175px;
            }
            #go:hover
            {
                background-color: black;
                color: green;
                font-weight: 600;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header2.jsp"></jsp:include>
        <form action="UpdateCheckServlet" method="post">
            ENTER THE USERNAME TO BE UPDATED :<input type="text" name="user" style="margin-left: 60px" required><br><br>
            <input type="submit" value="GO" id="go">  
        </form>
        <br><br>
        <p style="color: red; font-size: 20px">
        ${attr}
        </p>
        
    </body>
</html>
