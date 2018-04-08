<%-- 
    Document   : UttarakhandTours
    Created on : 30 Sep, 2017, 12:08:23 PM
    Author     : sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel ="stylesheet" href="uttarakhandcss.css">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
        <br><br>
        <article id="aboutus">
            <h3>UTTARAKHAND TOURISM</h3>
            Uttarakhand, a state in northern India crossed by the Himalayas, 
            is known for its Hindu pilgrimage sites. Rishikesh, a major centre for 
            yoga study, was made famous by the Beatles’ 1968 visit. The city hosts 
            the evening Ganga Aarti, a spiritual gathering on the sacred Ganges River.
            The state's forested Jim Corbett National Park shelters Bengal tigers
            and other native wildlife. <BR>
            <img src="districts-almora.jpg" align="right">Bordered by Tibet in the north, Nepal in the east, Himachal Pradesh in the west 
            and the Gangetic plains in the south, Uttarakhand, the land of spirituality seems 
            to be a jewel on the crown of Indian Territory. Being the originating point of
            significant Indian rivers, Uttarakhand is the abode of some of the best hill
            stations in north India. 
            While the winter season can offer you the best views of snow packed mountain ranges,
            the same ranges can be the comfort zones in the scorching summer.
            From thrilling mountain climbing to relaxing leisure walk, each single activity is
            delightful and worthy to time spending.<br>
            <img src="1342502751.jpg" align="left">&nbsp;
            Uttarakhand is replete with a vast array of scenic vacation spots as well as pilgrimage
            destinations. Apart from the popular travel destinations of Uttarakhand, there are a 
            couple of lesser known ones too. To know about the top hidden places of Uttarakhand,
            read on Uttarakhand is a land of many marvels and amazing tourist destinations. While some
            like the Char Dhams, Mussoorie, Nainital etc are very well known there are other destinations
            which few tourists know about. Here are the top 10 hidden gems of Uttarakhand that can capture your 
            heart and mind with their exquisite beauty and rich heritage.
            <form name="reserve" action="ReservationServlet" method="get" style="width: 400px; margin-left: 20px;">
                <fieldset>
                    <legend>&nbsp;&nbsp;&nbsp;&nbsp;<b>MAKE A QUICK RESERVATION</b></legend>
                    <br>
                    First Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  : &nbsp;&nbsp;<input type="text" name="firstname" value="" placeholder="First Name"><br><br>
                    Last Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   : &nbsp;&nbsp;<input type="text" name="lastname" value="" placeholder="Last Name"><br><br>
                    Contact No &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;<input type="text" name="contact" value="" placeholder="Contact No."><br><br> 
                    Package Interested &nbsp;: &nbsp;&nbsp;<input type="text" name="package" value="UTTARAKHAND PACKAGE" size="22" readonly><br><br>
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

            
        </article>
    </body>
</html>
