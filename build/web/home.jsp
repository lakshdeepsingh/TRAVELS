<%-- 
    Document   : home
    Created on : 18 Aug, 2017, 8:10:22 PM
    Author     : sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0,text/html">
        <title>HOME</title>
        <link rel ="stylesheet" href="mycss1travels.css">
    </head>
    <body >
        <header id="head1">
            <a href="home.jsp" id="home" onclick="return false">SS TRAVELS</a>
            <nav id="links">
                <a href="home.jsp" id="link1" onclick="return false">WELCOME ${name}</a>
                <a href="LogOutServlet" id="link2">LOGOUT</a>
            </nav>
            
                <br><br><br>
                <div class="myslideshow">
                    <img class="mySlides" src="8+2-seater.jpg" style="width:920px;height: 350px">
                    <img class="mySlides" src="tempo1.jpg" style="width:920px;height: 350px">
                    <img class="mySlides" src="tempo2.jpg" style="width:920px;height: 350px">
                    <a href="#" class="left" onclick="plusDivs(-1)">&#10094;</a>
                    <a href="#" class="right" onclick="plusDivs(1)">&#10095;</a>
                    <br>
                </div>
        </header>
        <nav id="tours">
            <a href="home.jsp" id="tourshead">OUR AMAZING TOURS</a><br><br>
            <ul>
                <li><a href="CharDham.jsp" id="tourplaces">CHAR DHAM YATRA<br><br></a></li>
                <li><a href="UttarakhandTours.jsp" id="tourplaces">MESMERIZING UTTARAKHAND<br><br></a></li>
                <li><a href="home.jsp" id="tourplaces">HIMACHAL - IN THE LAP OF THE NATURE<br><br></a></li>
                <li><a href="home.jsp" id="tourplaces">RAJASTHAN - THE PLETHORA OF INDIAN HERITAGE AND CULTURE<br><br></a></li>
                <li><a href="home.jsp" id="tourplaces">THE GOLDEN TRIANGLE TOUR<br><br></a></li>
                
            </ul>   
        </nav>
        
        <article id="aboutus">
            <h3>WELCOME TO SS TRAVELS</h3>
            The official website of <strong>SS TRAVELS</strong>, where you witness the Incredible India
            and the diverse geographical locales of India.
            Bounded by the majestic Himalayan ranges in the north and edged by an endless stretch of golden beaches,
            India offers a wide array of places to see and things to do. The enchanting backwaters, hill stations and landscapes make India a Hot Destination
            for tourists from around the Globe.<br>
            We at SS TRAVELS offer you some attractive packages for exploring 
            the Incredible India at some Reasonable prices and rates without
            compromising on the grounds of the Quality of Services provided.<br><br>
            <form name="reserve" action="ReservationServlet" method="get" style="width: 400px; margin-left: 20px;">
                <fieldset>
                    <legend>&nbsp;&nbsp;&nbsp;&nbsp;<b>MAKE A QUICK RESERVATION</b></legend>
                    <br>
                    First Name &nbsp;&nbsp;  : &nbsp;&nbsp;<input type="text" name="firstname" value="" placeholder="First Name"><br><br>
                    Last Name &nbsp;&nbsp;   : &nbsp;&nbsp;<input type="text" name="lastname" value="" placeholder="Last Name"><br><br>
                    Contact No &nbsp;        : &nbsp;&nbsp;<input type="text" name="contact" value="" placeholder="Contact No."><br><br> 
                    Source &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp; <input type="text" name="source" value="" placeholder="Enter the City for pickup"><br><br>
                    Destination &nbsp;       :&nbsp;&nbsp; <input type="text" name="destination" value="" placeholder="Enter your Destination"><br><br>
                    Traveller Type : &nbsp;<select name="type">                       
                        <option value="16">16 SEATER</option>
                        <option value="12">12 SEATER</option>
                    </select><br><br>
                    Date Of Travel : <input type="date" name="date" value=""><br><br>
                    E-MAIL ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input type="email" name="email" value="" placeholder="E-Mail Address"><br><br><br>
                    <input type="submit" value="GO !!!" id="submi">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="reset" value="RESET DETAILS" id="reset">
                    
                </fieldset>
            </form>
        </article>
        <table class="contact">
            <tr style="">
                <td style="border: 2px solid #0086f7 ; padding: 10px; border-radius: 8px"><strong>CONTACT US HERE : </strong></td>
            </tr>
            <tr>
                <td style="padding: 6px">MOBILE :</td> 
            </tr>
            <tr>
                <td style="padding: 6px">MR.SANDEEP SINGH</td>
            </tr>
            <tr>
                <td style="padding: 6px; border-bottom: 2px solid #0086f7;">
                    +919650165445 , 
                    +919868104283<br>
                </td>
            </tr>
            <tr>
                <td style="padding: 6px">E-MAIL :</td>> 
            </tr>
            <tr>
                <td style="padding: 6px"><a href="" onclick="return false" style="text-decoration: none">sstravels@gmail.com</a></td>
            </tr>
        </table>
        <script>
            var slideIndex = 1;
            showDivs(slideIndex);

            function plusDivs(n) {
                showDivs(slideIndex += n);
                }       

            function showDivs(n) {
                var i;
                var x = document.getElementsByClassName("mySlides");
                if (n > x.length) {
                    slideIndex = 1;
                }    
                if (n < 1) {
                    slideIndex = x.length;
                }
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";  
                    }
                x[slideIndex-1].style.display = "block";  
                }
                /*function chardham()
                {
                    document.getElementById("aboutus").innerHTML="<h3>CHAR DHAM YATRA WELCOMES YOU</h3>
                    It is the most important Hindu religious path in the Himalayas, which is found in the Garhwal region 
                    of Uttarakhand state, in the past which was part of Uttar Pradesh. 
                    The path passes through four Hindu pilgrimage destination - Yamunotri, Gangotri, Kedarnath and Badrinath.
                    Badrinath is also one of the four seats of a larger Vaishnava pilgrimage route Char Dham. Char dham was originally
                    called the popular pilgrimage path in the four holy places of Hinduism, positioned at opposite ends of the Indian subcontinent - 
                    Puri, Rameshvaram, Dwarka, and Badrinath. It is believed that the custom of pilgrimage to Char dham, a Hindu truth-seeker and started 
                    the VIII century reformer Shankara. Only later, the last of the four sites Char dham, Badrinath, a holy place has become a main Himalayan
                    pilgrimage path that became known as 'Char Dham'";
                }*/
        </script>
            
        
    </body>
</html>
