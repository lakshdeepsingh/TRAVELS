<%-- 
    Document   : customer_details
    Created on : 30 Sep, 2017, 8:32:39 PM
    Author     : sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CUSTOMER DETAILS</title>
        <link rel ="stylesheet" href="cust_css.css">
    </head>
    <body>
         <header id="head1">
             <a href="customer_details.jsp" id="home" onclick="return false">WELCOME TO SS TRAVELS</a>
        </header><br><br><br><br><br><br>
        <form name="cust_det" action="CustomerServlet" method="post" id="cust">
            <fieldset>
                <legend>&nbsp;&nbsp;<strong>CUSTOMER DETAILS FOR REGISTRATION</strong></legend><br>
                USER - ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;<input type="text" name="uid" value="${uname}" readonly><br><br>
                Customer Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;<input type="text" name="cname" value="" placeholder="Enter Customer Name" required><br><br>
                Customer Address &nbsp;&nbsp; : &nbsp;&nbsp;<input type="text" name="address" value="" placeholder="Enter Customer Address" id="add" required><br><br>
                Contact Number &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;<input type="text" name="contact" value="" placeholder="Enter Contact no." required><br><br>
                E-MAIL Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;<input type="email" name="mail" value="" placeholder="Enter E-Mail Id" required><br><br><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="CONTINUE" id="cont">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="RESET" id="reset">
            </fieldset>
                
        </form>
        
    </body>
</html>
