

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CUSTOMER LOGIN</title>
        <link rel="stylesheet" href="admin_css.css">
    </head>
    <body>
        <header id="head1">
             <a href="customer_details.jsp" id="home" onclick="return false">WELCOME TO SS TRAVELS</a>
             <nav id="links">
                <a href="Login.jsp" id="link1">BACK TO LOGIN PAGE</a>
            </nav>
        </header><br><br><br><br><br><br>
        <form name="cust_det" action="DetailsServlet" method="post" id="cust">
            <fieldset>
                <legend>&nbsp;&nbsp;<strong>LOGIN TO VIEW YOUR DETAILS</strong></legend><br><br>
                ENTER USERNAME&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;<input type="text" name="username" value="" placeholder="ENTER USERNAME" required><br><br><br>
                ENTER PASSWORD&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;<input type="password" name="password" value="" placeholder="ENTER PASSWORD" required><br><br><br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="LOGIN" id="loginb">
            </fieldset>
        </form>    
        <p style="color: red; font-size: 25px;">${attr}</p>
    </body>
</html>
