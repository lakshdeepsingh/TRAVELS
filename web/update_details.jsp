<%-- 
    Document   : update_details
    Created on : 4 Oct, 2017, 8:47:34 PM
    Author     : sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE</title>
        <style>
            #cust
            {
                align-self: center;
                font-family: "Open Sans","Segoe UI";
                width: 68%;
                font-size: 20px;
                margin-left: 170px;  
            }
            input[type=text]
            {
                padding: 8px;
                width: 220px;
                font-size: 16px;
                text-decoration: none;
            }
            input[type=email]
            {
                padding: 8px;
                width: 220px;
                font-size: 16px;
                text-decoration: none;
            }
            #add
            {
                width: 420px;
            }
            strong
            {
                font-weight: 600;
            }
            #cont
            {
                width: 150px;
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
            }
            #cont:hover
            {
                background-color: black;
                color: green;
                font-weight: 600;
            }
            #reset
            {
                width: 150px;
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
            }
            #reset:hover
            {
                background-color: black;
                color: green;
                font-weight: 600;
            }
            </style>
    </head>
    <body>
        <jsp:include page="header2.jsp"></jsp:include>
        <form name="cust_det" action="UpdateServlet" method="post" id="cust">
            <fieldset>
                <legend>&nbsp;&nbsp;<strong>CUSTOMER DETAILS FOR UPDATION</strong></legend><br>
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
