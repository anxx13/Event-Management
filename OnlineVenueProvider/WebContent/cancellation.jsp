<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.venue.DBConnection"%>
<%@ page import="java.sql.*"  %>
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
     Statement stmt=null; 
     String s1,vname;
    %>
    
    <% 
    try{
    DBConnection dbcon = new DBConnection();
    con = dbcon.getCon();
    vname=request.getParameter("vname");
    String uname=(String)session.getAttribute("name");
    System.out.println(con+"..........connection created");   
    stmt=con.createStatement();
    String Query="delete from venue_status where uname='"+uname+"' and vname='"+vname+"'";
    System.out.println(Query);
    stmt.executeUpdate(Query);
    
    System.out.println("Query Executed");
    stmt.close();
    con.close();  
    }catch(Exception e)
    {
    e.printStackTrace();
    }
    
  %>  
    <div id="right">

	<h2><a href="#"><%= vname %>......Venue Reservation Cancelled successfully</a></h2>
	
	<div class="articles">
	
	<br/>
	</div>
	</div>

	<div id="left"> 

	<jsp:include page="./vmenu.html" />
	</div>
	<div style="clear: both;"> </div>

	<div id="footer">
	<jsp:include page="./footer.html" /></div></div>
 
</body>
</html>