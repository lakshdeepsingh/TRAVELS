/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SERVLETS;

import Beans.CustomerBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
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
public class AdminDetailsServlet extends HttpServlet {

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
            out.println("<title>Servlet AdminDetailsServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminDetailsServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            String nothing = "NO RECORDS PRESENT";
            int flag=0,i=0;
             List<CustomerBean> clist = new ArrayList<CustomerBean>();
             try
             {
                
                    //out.print(name+password);
                    //List<CustomerBean> clist = new ArrayList<CustomerBean>();
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/abc","root","1234");
                    PreparedStatement stmt=con.prepareCall("select * from emp1,cust where emp1.userid=cust.userid") ;
                    ResultSet rs=stmt.executeQuery();
                    out.print("hello in try block");
                    while(rs.next())
                    {
                        flag=1;
                        out.print("RECORD PRESENT!!!!");
                        String userid = rs.getString(1);
                        String pass = rs.getString(2);
                        String cname = rs.getString(3);
                        String add = rs.getString(4);
                        String cno = rs.getString(5);
                        String mail = rs.getString(6);
                        out.print(userid);
                        out.print(pass);
                        out.print(cname);
                        out.print(add);
                        out.print(mail);
                        out.print(cno);
                        CustomerBean ob = new CustomerBean();
                        ob.setCname(cname);
                        ob.setUname(userid);
                        ob.setAdd(add);
                        ob.setCno(cno);
                        ob.setMail(mail);
                        ob.setPass(pass);
                        out.print("<br>"+ob.getUname());
                        out.print("<br>"+ob.getCname());
                        out.print("<br>"+ob.getAdd());
                        out.print("<br>"+ob.getCno());
                        out.print("<br>"+ob.getMail());
                        out.print("<br>"+ob.getPass());
                        clist.add(ob);
                        out.print("<br>");
                    }
                    /*if(flag==1)
                    {
                        request.setAttribute("list", clist);
                        RequestDispatcher rd = request.getRequestDispatcher("allcust.jsp");
                        rd.forward(request, response);
                    }
                    
                    if(flag==0)
                    {
                        request.setAttribute("attr", nothing);
                        RequestDispatcher rd1 = request.getRequestDispatcher("adminlogin.jsp");
                        rd1.forward(request, response);
                    }*/
                 
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(AdminDetailsServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(AdminDetailsServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
             if(flag==1)
                    {
                        request.setAttribute("list", clist);
                        RequestDispatcher rd = request.getRequestDispatcher("allcust.jsp");
                        rd.forward(request, response);
                    }
                    
                    if(flag==0)
                    {
                        request.setAttribute("attr", nothing);
                        RequestDispatcher rd1 = request.getRequestDispatcher("admin.jsp");
                        rd1.forward(request, response);
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
