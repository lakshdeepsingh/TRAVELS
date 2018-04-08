<%-- 
    Document   : Login
    Created on : 27 Sep, 2017, 12:00:59 PM
    Author     : sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel ="stylesheet" href="logincss.css">
        <title>LOGIN FORM</title>
    </head>
    <body>
        <header id="head1">
            <a href="Login.jsp" id="home">WELCOME TO SS TRAVELS</a>
            <nav id="links">
                <a href="view_custdetails_login.jsp" id="link1">VIEW CUSTOMER DETAILS</a>
                <a href="adminlogin.jsp" id="link2">ADMIN LOGIN</a>
            </nav>
        </header><br><br><br><br>
        <form name="loginform" action="LoginServlet" method="post" style="font-size: 15px; font-family: Open Sans,Segoe UI; width: 350px; padding: 5px; float: left; height: 260px" id="loginform">
            <fieldset>
                <legend>&nbsp;&nbsp;&nbsp;<b>LOGIN (IF ALREADY REGISTERED)</b></legend><br><br>
                ENTER USERNAME : <input type="text" name="username" value="" placeholder="ENTER USERNAME"><br><br><br>
                ENTER PASSWORD : <input type="password" name="password" value="" placeholder="ENTER PASSWORD"><br><br><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="LOGIN" id="loginb">
            </fieldset>
        </form>   
        <form name="registration" action="EnterDBServlet" method="post" style="font-size: 15px; font-family: Open Sans,Segoe UI; width: 450px; padding: 5px; float: right; margin-right: 15px; height: 260px;" id="registrationdb">
            <fieldset>
                <legend>&nbsp;&nbsp;&nbsp;<b>REGSITER WITH US HERE</b></legend><br><br>
                ENTER DESIRED USERNAME : &nbsp;&nbsp;<input type="text" name="desiredusername" value="" placeholder="USERNAME" required><br><br><br>
                ENTER DESIRED PASSWORD : &nbsp;&nbsp;<input type="password" name="desiredpassword" value="" placeholder="PASSWORD" required><br><br><br>
                CONFIRM PASSWORD &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;<input type="password" name="confirmedpassword" value="" placeholder="CONFIRM PASSWORD" required><br><br><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="REGISTER" id="regb">
            </fieldset>
        </form>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <p style="color: red">
        ${attr}
        </p>
        <P style="color: green; float: right; margin-left: 15px">${attr1}</P>
    </body>
</html>
