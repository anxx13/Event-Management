<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.venue.DBConnection"%>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Venue Status</title>
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
     String s1;
    %>
    
    <% 
    try{
    DBConnection dbcon = new DBConnection();
    con = dbcon.getCon();
    String uid=(String)session.getAttribute("name");
    System.out.println(uid);
    System.out.println(con+"..........connection created");   
    stmt=con.createStatement();
    String Query="select vname from venue_details where uname='"+uid+"'";
    System.out.println(Query);
    rs=stmt.executeQuery(Query);
    System.out.println(rs);
    System.out.println("Query Executed");  
    
    
  %>  
    <div id="right">
	<br/>
	<h3>View Venue Status</h3>
	<br/>
	<div class="articles">
	<form method="post" action="./viewstatus.jsp">
	<table bgcolor="#FFD8AF" width="500" height="" >
	<tr><td>Select Your Venue Name::<select name="vname">
	<%
	while (rs.next())
    {  
    s1=rs.getString("vname");
    %>
    <option value="<%=s1%>"><%=s1 %></option>
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
	 </select></td><td><input type="submit" value="Next"/></td></tr>
	<tr></tr>
	</table>	 </form>
	<br/>
	
	<br/>
	</div>
	</div>

	<div id="left"> 

	<jsp:include page="./pmenu.html" />
	</div>
	<div style="clear: both;"> </div>

	<div id="footer">
	<jsp:include page="./footer.html" /></div></div>
 
</body>
</html>