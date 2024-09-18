/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author supri
 */
public class servlet extends HttpServlet
{
 
    @Override
    protected void doPost(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
        PrintWriter out = resp.getWriter();
        String myname=req.getParameter("name");
        String myemail=req.getParameter("email");
        String mynumber=req.getParameter("number");
        String appdate=req.getParameter("date");
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/contact_db","root","12345");
        //create statement
        PreparedStatement ps=con.prepareStatement("insert into appointments(name, email, number, date) values(?,?,?,?)");
        ps.setString(1,myname);
        ps.setString(2,myemail);
        ps.setString(3, mynumber);
        ps.setString(4,appdate);
        //ecexute query
        int result= ps.executeUpdate();
        if(result>0)
        {
            resp.setContentType("text/html");
            out.print("Appointment made successfully");
           RequestDispatcher rd=req.getRequestDispatcher("/index.jsp");
        }else {
            resp.setContentType("text/html");
            out.print("Appointment unsuccessful Please retry!");
           RequestDispatcher rd=req.getRequestDispatcher("/index.jsp");
         }
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(servlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(servlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
