
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
import javax.servlet.http.HttpSession;

public class UpdateCheckServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateCheckServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateCheckServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            String name = request.getParameter("user");
            String unsuccess = "Username Incorrect !!!";
            int flag=0;
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
                        
                            flag=1;
                            out.print("RECORD PRESENT!!!!");
                            request.setAttribute("uname", name);
                            RequestDispatcher rd = request.getRequestDispatcher("update_details.jsp");
                            rd.forward(request, response);
                        
                    }
                
                }
                if(flag==0)
                {
                    request.setAttribute("attr", unsuccess);
                    RequestDispatcher rd = request.getRequestDispatcher("update.jsp");
                    rd.forward(request, response);
                }
            }   catch (ClassNotFoundException ex) {
                Logger.getLogger(UpdateCheckServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(UpdateCheckServlet.class.getName()).log(Level.SEVERE, null, ex);
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
