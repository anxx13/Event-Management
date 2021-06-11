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
<div id="right">

	<h2><a href="#">Search Results</a></h2>
	<div class="articles">
	<table bgcolor="#FFD8AF" width="560" height=""  border="">
	<tr><th>Venue Name</th><th>Venue Address</th><th>Contact Person</th><th>Contact Number </th></tr>
	
 <%!
   
     Connection con=null;
     ResultSet rs; 
     Statement stmt=null; 
     String s2,s3,s4,s5;
     java.sql.Date fd,ld;
    %>
    
    <% 
    try{
    DBConnection dbcon = new DBConnection();
    con = dbcon.getCon();
    String vaddress=request.getParameter("place");
    System.out.println(vaddress);
    System.out.println(con+"..........connection created");   
    stmt=con.createStatement();
    String Query="select * from venue_details where vaddress like '%"+vaddress+"%' and vaddress like '"+vaddress+"'   ";
    System.out.println(Query);
    rs=stmt.executeQuery(Query);
    
    
    System.out.println(rs);
    System.out.println("Query Executed");  
    while (rs.next())
    {  
    System.out.println("entered............");
    s2=rs.getString("vname");
    s3=rs.getString("vaddress");
    s4=rs.getString("cperson");
    s5=rs.getString("cpnum");
    %>
    <tr align="center"><td><%=s2 %></td><td><%=s3 %></td><td><%=s4 %></td><td><%=s5 %></td></tr>
	
   
    <%
    }
    rs.close();
    stmt.close();
    con.close();
    
    }catch(Exception e)
    {
    e.printStackTrace();
    }
	 %>
    </table>
	<br/>
	
	</div>
	</div>

	<div id="left"> 

	<jsp:include page="./menu.html" />
	</div>
	<div style="clear: both;"> </div>

	<div id="footer">
	<jsp:include page="./footer.html" /></div></div>
 
</body>
</html>