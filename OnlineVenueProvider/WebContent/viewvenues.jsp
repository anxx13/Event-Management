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
     ResultSet rs; 
     Statement stmt=null; 
     String s1,s2,s3,s4,s5,s6,s7,s8,s9,vname;
    %>
    
    <% 
    try{
    DBConnection dbcon = new DBConnection();
    con = dbcon.getCon();
    String uid=(String)session.getAttribute("name");
    vname=request.getParameter("vname");
    System.out.println(uid);
    System.out.println(con+"..........connection created");   
    stmt=con.createStatement();
    String Query="select * from venue_details";
    System.out.println(Query);
    rs=stmt.executeQuery(Query);
    System.out.println(rs);
    System.out.println("Query Executed");  
    
    %>
    
    <div id="right">

	<h2><a href="#">Venues Details</a></h2>
	<div class="articles">
	<table bgcolor="#FFD8AF" width="550" border="">
	<tr><th>Venue Provider Name</th><th>Venue Name</th><th>Venue Address</th><th>Contact Person</th><th>Phone Number</th></tr>
    
    
    <%
    while (rs.next())
    {  
    System.out.println("entered............");
    s1=rs.getString("uname");
    s2=rs.getString("vname");
    s3=rs.getString("vaddress");
   	s4=rs.getString("cperson");
    s5=rs.getString("cpnum");
    s6=rs.getString("seating");
    s7=rs.getString("dining");
    s8=rs.getString("parking");
    s9=rs.getString("other");
	%>
	<tr align="center"><td><%=s1 %></td><td><%=s2 %></td><td><%=s3 %></td><td><%=s4 %></td><td><%=s5 %></td></tr>
	<%    
    
    }
     rs.close();
    stmt.close();
    con.close();
    }catch(Exception e)
    {
    e.printStackTrace();
    }
    
  %>  </table>
	<br/>
	</div>
	</div>
    
	<div id="left"> 

	<jsp:include page="./adminmenu.html" />
	</div>
	<div style="clear: both;"> </div>

	<div id="footer">
	<jsp:include page="./footer.html" /></div></div>
 
</body>
</html>