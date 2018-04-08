
package SERVLETS;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sunny
 */
public class DetailsServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DetailsServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DetailsServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            String name = request.getParameter("username");
            String pass = request.getParameter("password");
            String unsuccess = "Username Or Password Incorrect !!!";
            int flag=0;
            String cname = null,add = null,cno = null,mail = null;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/abc","root","1234");
                PreparedStatement stmt=con.prepareCall("select * from emp1,cust where emp1.userid=cust.userid") ;
                ResultSet rs=stmt.executeQuery();
                while(rs.next())
                {
                    if(name.equals(rs.getString(1)))
                    {
                        if(pass.equals(rs.getString(2)))
                        {
                            flag=1;
                            out.print("RECORD PRESENT!!!!");
                             cname = rs.getString(3);
                             add = rs.getString(4);
                             cno = rs.getString(5);
                             mail = rs.getString(6);
                        }
                    }
                }
                if(flag==0)
            {
                request.setAttribute("attr", unsuccess);
                RequestDispatcher rd = request.getRequestDispatcher("view_custdetails_login.jsp");
                rd.forward(request, response);
            }
                out.print(cname);
                out.print(add);
                out.print(cno);
                out.print(mail);
                request.setAttribute("cname", cname);
                request.setAttribute("add", add);
                request.setAttribute("cno", cno);
                request.setAttribute("mail", mail);
                request.setAttribute("uname", name);
                RequestDispatcher rd = request.getRequestDispatcher("view_details.jsp");
                rd.forward(request, response);
                
        }   catch (ClassNotFoundException ex) {           
                Logger.getLogger(DetailsServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(DetailsServlet.class.getName()).log(Level.SEVERE, null, ex);
            }    
            
    }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
