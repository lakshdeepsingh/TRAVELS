<%-- 
    Document   : CharDham
    Created on : 30 Sep, 2017, 3:09:06 PM
    Author     : sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Char Dham Yatra</title>
        <link rel ="stylesheet" href="chardhamcss.css">
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
        <br><br>
        <article id="aboutus">
            <h3>CHAR DHAM YATRA</h3>
            It is the most important Hindu religious path in the Himalayas, which is found in the Garhwal region of Uttarakhand state, in the past which was part of Uttar Pradesh. 
            The path passes through four Hindu pilgrimage destination - Yamunotri, Gangotri, Kedarnath and Badrinath.
            Badrinath is also one of the four seats of a larger Vaishnava pilgrimage route Char Dham.
            <img src="chard.jpg" align="right">
            Char dham was originally called the popular pilgrimage path in the four holy places of Hinduism, positioned at opposite ends of the Indian subcontinent - 
            Puri, Rameshvaram, Dwarka, and Badrinath.
            It is believed that the custom of pilgrimage to Char dham, a Hindu truth-seeker and started 
            the VIII century reformer Shankara. Only later, the last of the four sites Char dham, Badrinath, a holy place has become a main Himalayan
            pilgrimage path that became known as 'Char Dham'
            <br><br>
            <form name="reserve" action="ReservationServlet" method="get" style="width: 400px; margin-left: 20px;">
                <fieldset>
                    <legend>&nbsp;&nbsp;&nbsp;&nbsp;<b>MAKE A QUICK RESERVATION</b></legend>
                    <br>
                    First Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  : &nbsp;&nbsp;<input type="text" name="firstname" value="" placeholder="First Name"><br><br>
                    Last Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   : &nbsp;&nbsp;<input type="text" name="lastname" value="" placeholder="Last Name"><br><br>
                    Contact No &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;<input type="text" name="contact" value="" placeholder="Contact No."><br><br> 
                    Package Interested &nbsp;: &nbsp;&nbsp;<input type="text" name="package" value="CHAR DHAM YATRA" readonly><br><br>
                    Source &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp; <input type="text" name="source" value="" placeholder="Enter the City for pickup"><br><br>
                    Traveller Type &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;<select name="type">   
                        <option value="SELECT">SELECT</option>
                        <option value="16">16 SEATER</option>
                        <option value="12">12 SEATER</option>
                    </select><br><br>
                    Date Of Travel &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp; <input type="date" name="date" value=""><br><br>
                    E-MAIL ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp; <input type="email" name="email" value="" placeholder="E-Mail Address"><br><br><br>
                    &nbsp;&nbsp;&nbsp;<input type="submit" value="GO !!!" id="submi">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="reset" value="RESET DETAILS" id="reset">
                </fieldset>
            </form>    
        </article>
    </body>
</html>
