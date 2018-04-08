<%-- 
    Document   : Header
    Created on : 30 Sep, 2017, 11:54:51 AM
    Author     : sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel ="stylesheet" href="headercss.css">
        <title>JSP Page</title>
    </head>
    <body>
        <header id="head1">
            <a href="home.jsp" id="home">SS TRAVELS</a>
            <nav id="links">
                <a href="home.jsp" id="link1" onclick="return false">WELCOME ${name}</a>
                <a href="home.jsp" id="link2">HOME</a>
                <a href="LogOutServlet" id="link3">LOGOUT</a>
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
                <li><a href="home.jsp" id="tourplaces" onclick="return false">HIMACHAL - IN THE LAP OF THE NATURE<br><br></a></li>
                <li><a href="home.jsp" id="tourplaces" onclick="return false">RAJASTHAN - THE PLETHORA OF INDIAN HERITAGE AND CULTURE<br><br></a></li>
                <li><a href="home.jsp" id="tourplaces" onclick="return false">THE GOLDEN TRIANGLE TOUR<br><br></a></li>
                
            </ul>   
        </nav>
                
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
        </script>
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
    </body>
</html>
