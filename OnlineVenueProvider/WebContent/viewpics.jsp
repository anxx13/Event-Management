<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.venue.DBConnection"%>
<%@ page import="java.sql.*,java.io.*"  %>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
</head>
<body>

<div id="wrap">

<div id="header">
<h1><a href="#">Online Venue Booking</a></h1>
<h2>Reserve Your Place Any Time, Any Where</h2>
</div>

 <%!
   
     Connection con=null;
     ResultSet rs; 
     Statement stmt=null; 
     String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,vname;
    %>
    
    <% 
    try{
    DBConnection dbcon = new DBConnection();
    con = dbcon.getCon();
    String vid=(String)session.getAttribute("vname");
    System.out.println(vid);
    System.out.println(con+"..........connection created");   
    stmt=con.createStatement();
    String Query="select picture from venue_details where vname='"+vid+"'";
    System.out.println(Query);
    rs=stmt.executeQuery(Query);
    System.out.println(rs);
    System.out.println("Query Executed");  
    if (rs.next()){  
    System.out.println("entered............");
    byte[] imgData = rs.getBytes("picture");//Here....... r1.getBytes() extract byte data from resultSet 
    System.out.println(imgData);
    response.setHeader("expires", "0");
    response.setContentType("image/jpg");

    OutputStream os = response.getOutputStream(); // output with the help of outputStream 
   	os.write(imgData);
  	response.getOutputStream().flush();
  	response.getOutputStream().close();
   	//System.out.println(s1);
    //System.out.println(s2);
    //os.flush();
  	//os.close();
  	return;
    
    
    }
     rs.close();
    stmt.close();
    con.close();
    }catch(Exception e)
    {
    e.printStackTrace();
    }
    
  %>  
    <div id="right">
		<%
		%>
	</div>

	<div id="left"> 

	<jsp:include page="./pmenu.html" />
	</div>
	<div style="clear: both;"> </div>

	<div id="footer">
	<jsp:include page="./footer.html" /></div></div>
 
</body>
</html>