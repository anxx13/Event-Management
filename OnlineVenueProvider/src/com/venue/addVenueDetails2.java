package com.venue;

import java.io.IOException;
import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;
import java.io.*;

@MultipartConfig(maxFileSize = 16177215)
@WebServlet("/addVenueDetails2")
public class addVenueDetails2 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s1,s2,s3,s4,s5,s6,s7,s8,s9;
		s1=request.getParameter("vname");
	   	s2=request.getParameter("vaddress");
	 	s3=request.getParameter("cperson");
	    s4=request.getParameter("pno");
	    s5=request.getParameter("seating");
	    s6=request.getParameter("dining");
	    s7=request.getParameter("parking");
	    s8=request.getParameter("other");
        InputStream inputStream = null;
        Part filePart = request.getPart("file");
        if (filePart != null) {
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            inputStream = filePart.getInputStream();
        }
         
        Connection con = null;  
        try {
        	DBConnection dbcon = new DBConnection();
            con = dbcon.getCon();   
            HttpSession session = request.getSession(true);
            String uid=(String)session.getAttribute("name");
            System.out.println("Welcome"+uid);
            String sql = "INSERT INTO venue_details (uname,vname,vaddress,cperson,cpnum,seating,dining,parking,other,picture) values (?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, uid);
            statement.setString(2, s1);
            statement.setString(3, s2);
            statement.setString(4, s3);
            statement.setString(5, s4);
            statement.setString(6, s5);
            statement.setString(7, s6);
            statement.setString(8, s7);
            statement.setString(9, s8);
            
             
            if (inputStream != null) {
                statement.setBlob(10, inputStream);
            }
            int c = statement.executeUpdate();
            if (c > 0) {
                System.out.println("File uploaded and saved into database");
                response.sendRedirect("success.jsp");
            }
            else
            	response.sendRedirect("failure.jsp");
         }
        catch (SQLException ex) {
            ex.printStackTrace();
        } 
        finally {
            if (con != null) {
                try {
                    con.close();
                } 
                catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        }
	}

}
