
package SERVLETS;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;

public class UpdateServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            String name = request.getParameter("cname");
            String add = request.getParameter("address");
            String cno = request.getParameter("contact");
            String mail = request.getParameter("mail");
            String userid = request.getParameter("uid");
            String success = "RECORD UPDATED";
            int i=0,flag=0;
            out.print(name);
            out.print(add);
            out.print(cno);
            out.print(mail);
            out.print(userid);
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/abc","root","1234");
                PreparedStatement stmt=con.prepareCall("update cust set cname=?,address=?,cno=?,mail_id=? where cust.userid=?");
                stmt.setString(5, userid);
                stmt.setString(1, name);
                stmt.setString(2, add);
                stmt.setString(3, cno);
                stmt.setString(4, mail);
                i=stmt.executeUpdate();
                out.print("RECORD UPDATED!!!!"); 
                    if(i>0)
                    {
                        
                            flag=1;
                            out.print("RECORD UPDATED!!!!"); 
                            request.setAttribute("attr1", success);
                            RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
                            rd.forward(request, response);
                        
                    }
            }   catch (SQLException ex) {
                Logger.getLogger(UpdateServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(UpdateServlet.class.getName()).log(Level.SEVERE, null, ex);
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
