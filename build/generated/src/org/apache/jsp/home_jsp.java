package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0,text/html\">\n");
      out.write("        <title>HOME</title>\n");
      out.write("        <link rel =\"stylesheet\" href=\"mycss1travels.css\">\n");
      out.write("    </head>\n");
      out.write("    <body >\n");
      out.write("        <header id=\"head1\">\n");
      out.write("            <a href=\"home.jsp\" id=\"home\" onclick=\"return false\">SS TRAVELS</a>\n");
      out.write("            <nav id=\"links\">\n");
      out.write("                <a href=\"home.jsp\" id=\"link1\" onclick=\"return false\">WELCOME ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a>\n");
      out.write("                <a href=\"LogOutServlet\" id=\"link2\">LOGOUT</a>\n");
      out.write("            </nav>\n");
      out.write("            \n");
      out.write("                <br><br><br>\n");
      out.write("                <div class=\"myslideshow\">\n");
      out.write("                    <img class=\"mySlides\" src=\"8+2-seater.jpg\" style=\"width:920px;height: 350px\">\n");
      out.write("                    <img class=\"mySlides\" src=\"tempo1.jpg\" style=\"width:920px;height: 350px\">\n");
      out.write("                    <img class=\"mySlides\" src=\"tempo2.jpg\" style=\"width:920px;height: 350px\">\n");
      out.write("                    <a href=\"#\" class=\"left\" onclick=\"plusDivs(-1)\">&#10094;</a>\n");
      out.write("                    <a href=\"#\" class=\"right\" onclick=\"plusDivs(1)\">&#10095;</a>\n");
      out.write("                    <br>\n");
      out.write("                </div>\n");
      out.write("        </header>\n");
      out.write("        <nav id=\"tours\">\n");
      out.write("            <a href=\"home.jsp\" id=\"tourshead\">OUR AMAZING TOURS</a><br><br>\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"CharDham.jsp\" id=\"tourplaces\">CHAR DHAM YATRA<br><br></a></li>\n");
      out.write("                <li><a href=\"UttarakhandTours.jsp\" id=\"tourplaces\">MESMERIZING UTTARAKHAND<br><br></a></li>\n");
      out.write("                <li><a href=\"home.jsp\" id=\"tourplaces\">HIMACHAL - IN THE LAP OF THE NATURE<br><br></a></li>\n");
      out.write("                <li><a href=\"home.jsp\" id=\"tourplaces\">RAJASTHAN - THE PLETHORA OF INDIAN HERITAGE AND CULTURE<br><br></a></li>\n");
      out.write("                <li><a href=\"home.jsp\" id=\"tourplaces\">THE GOLDEN TRIANGLE TOUR<br><br></a></li>\n");
      out.write("                \n");
      out.write("            </ul>   \n");
      out.write("        </nav>\n");
      out.write("        \n");
      out.write("        <article id=\"aboutus\">\n");
      out.write("            <h3>WELCOME TO SS TRAVELS</h3>\n");
      out.write("            The official website of <strong>SS TRAVELS</strong>, where you witness the Incredible India\n");
      out.write("            and the diverse geographical locales of India.\n");
      out.write("            Bounded by the majestic Himalayan ranges in the north and edged by an endless stretch of golden beaches,\n");
      out.write("            India offers a wide array of places to see and things to do. The enchanting backwaters, hill stations and landscapes make India a Hot Destination\n");
      out.write("            for tourists from around the Globe.<br>\n");
      out.write("            We at SS TRAVELS offer you some attractive packages for exploring \n");
      out.write("            the Incredible India at some Reasonable prices and rates without\n");
      out.write("            compromising on the grounds of the Quality of Services provided.<br><br>\n");
      out.write("            <form name=\"reserve\" action=\"ReservationServlet\" method=\"get\" style=\"width: 400px; margin-left: 20px;\">\n");
      out.write("                <fieldset>\n");
      out.write("                    <legend>&nbsp;&nbsp;&nbsp;&nbsp;<b>MAKE A QUICK RESERVATION</b></legend>\n");
      out.write("                    <br>\n");
      out.write("                    First Name &nbsp;&nbsp;  : &nbsp;&nbsp;<input type=\"text\" name=\"firstname\" value=\"\" placeholder=\"First Name\"><br><br>\n");
      out.write("                    Last Name &nbsp;&nbsp;   : &nbsp;&nbsp;<input type=\"text\" name=\"lastname\" value=\"\" placeholder=\"Last Name\"><br><br>\n");
      out.write("                    Contact No &nbsp;        : &nbsp;&nbsp;<input type=\"text\" name=\"contact\" value=\"\" placeholder=\"Contact No.\"><br><br> \n");
      out.write("                    Source &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp; <input type=\"text\" name=\"source\" value=\"\" placeholder=\"Enter the City for pickup\"><br><br>\n");
      out.write("                    Destination &nbsp;       :&nbsp;&nbsp; <input type=\"text\" name=\"destination\" value=\"\" placeholder=\"Enter your Destination\"><br><br>\n");
      out.write("                    Traveller Type : &nbsp;<select name=\"type\">                       \n");
      out.write("                        <option value=\"16\">16 SEATER</option>\n");
      out.write("                        <option value=\"12\">12 SEATER</option>\n");
      out.write("                    </select><br><br>\n");
      out.write("                    Date Of Travel : <input type=\"date\" name=\"date\" value=\"\"><br><br>\n");
      out.write("                    E-MAIL ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input type=\"email\" name=\"email\" value=\"\" placeholder=\"E-Mail Address\"><br><br><br>\n");
      out.write("                    <input type=\"submit\" value=\"GO !!!\" id=\"submi\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                    <input type=\"reset\" value=\"RESET DETAILS\" id=\"reset\">\n");
      out.write("                    \n");
      out.write("                </fieldset>\n");
      out.write("            </form>\n");
      out.write("        </article>\n");
      out.write("        <table class=\"contact\">\n");
      out.write("            <tr style=\"\">\n");
      out.write("                <td style=\"border: 2px solid #0086f7 ; padding: 10px; border-radius: 8px\"><strong>CONTACT US HERE : </strong></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td style=\"padding: 6px\">MOBILE :</td> \n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td style=\"padding: 6px\">MR.SANDEEP SINGH</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td style=\"padding: 6px; border-bottom: 2px solid #0086f7;\">\n");
      out.write("                    +919650165445 , \n");
      out.write("                    +919868104283<br>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td style=\"padding: 6px\">E-MAIL :</td>> \n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td style=\"padding: 6px\"><a href=\"\" onclick=\"return false\" style=\"text-decoration: none\">sstravels@gmail.com</a></td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("        <script>\n");
      out.write("            var slideIndex = 1;\n");
      out.write("            showDivs(slideIndex);\n");
      out.write("\n");
      out.write("            function plusDivs(n) {\n");
      out.write("                showDivs(slideIndex += n);\n");
      out.write("                }       \n");
      out.write("\n");
      out.write("            function showDivs(n) {\n");
      out.write("                var i;\n");
      out.write("                var x = document.getElementsByClassName(\"mySlides\");\n");
      out.write("                if (n > x.length) {\n");
      out.write("                    slideIndex = 1;\n");
      out.write("                }    \n");
      out.write("                if (n < 1) {\n");
      out.write("                    slideIndex = x.length;\n");
      out.write("                }\n");
      out.write("                for (i = 0; i < x.length; i++) {\n");
      out.write("                    x[i].style.display = \"none\";  \n");
      out.write("                    }\n");
      out.write("                x[slideIndex-1].style.display = \"block\";  \n");
      out.write("                }\n");
      out.write("                /*function chardham()\n");
      out.write("                {\n");
      out.write("                    document.getElementById(\"aboutus\").innerHTML=\"<h3>CHAR DHAM YATRA WELCOMES YOU</h3>\n");
      out.write("                    It is the most important Hindu religious path in the Himalayas, which is found in the Garhwal region \n");
      out.write("                    of Uttarakhand state, in the past which was part of Uttar Pradesh. \n");
      out.write("                    The path passes through four Hindu pilgrimage destination - Yamunotri, Gangotri, Kedarnath and Badrinath.\n");
      out.write("                    Badrinath is also one of the four seats of a larger Vaishnava pilgrimage route Char Dham. Char dham was originally\n");
      out.write("                    called the popular pilgrimage path in the four holy places of Hinduism, positioned at opposite ends of the Indian subcontinent - \n");
      out.write("                    Puri, Rameshvaram, Dwarka, and Badrinath. It is believed that the custom of pilgrimage to Char dham, a Hindu truth-seeker and started \n");
      out.write("                    the VIII century reformer Shankara. Only later, the last of the four sites Char dham, Badrinath, a holy place has become a main Himalayan\n");
      out.write("                    pilgrimage path that became known as 'Char Dham'\";\n");
      out.write("                }*/\n");
      out.write("        </script>\n");
      out.write("            \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
