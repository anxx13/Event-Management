<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.venue.DBConnection"%>
<%@ page import="java.sql.*"  %>
<%@ page import="java.util.*,java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reserve venue</title>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
</head>
body>

	<div id="wrap">

		<div id="header">
			<h1>
				<a href="#">Online Venue Booking</a>
			</h1>
			<h2>Reserve Your Place Any Time ,Any Where</h2>
		</div>

		<%!
   
		Connection con=null;
	     ResultSet rs=null,rs1=null; 
	     PreparedStatement st1=null,st2=null,st3=null;
	     Statement st=null; 
		 String s1,cit1;
		 String s2,s3;
		 int count;
    %>

		<% 
    try{
    	DBConnection dbcon = new DBConnection();
        con = dbcon.getCon(); 
        st=con.createStatement();  
    	
		count=0;    	
       	s2=request.getParameter("fdate");
       	s3=request.getParameter("tdate");

    	DateFormat formater = new SimpleDateFormat("yyyy-MM-dd");  
    	java.util.Date parsedUtilDate = formater.parse(s2);  
    	java.sql.Date sqltDate= new java.sql.Date(parsedUtilDate.getTime());

    	DateFormat formater1 = new SimpleDateFormat("yyyy-MM-dd");  
    	java.util.Date parsedUtilDate1 = formater1.parse(s3);  
    	java.sql.Date sqltDate1= new java.sql.Date(parsedUtilDate1.getTime());   
    	
        System.out.println(s1);
      	System.out.println(sqltDate);
      	System.out.println(sqltDate1);
      	
      	st2=con.prepareStatement("select vname from venue_details where vname not in (select vname from venue_status where (fdate between ? and ?) or (ldate between ? and ?))");
    	st2.setDate(1, sqltDate);
    	st2.setDate(2, sqltDate1);
    	st2.setDate(3, sqltDate);
    	st2.setDate(4, sqltDate1);
    	rs=st2.executeQuery();
    
  %>
		<div id="right">

			<h2>
				<a href="#">Venue Details</a>
			</h2>
			<div class="articles">
				<form method="post" action="./reserveAction.jsp">
					<table bgcolor="#FFD8AF" width="350" height="" border="">

						<%
	while (rs.next())
    {
	count++;
    s1=rs.getString("vname");
    %>
						<tr align="center">
							<td>
								<input type="radio" name="vname" value="<%=s1%>" />
							</td>
							<td><%=s1 %></td>
						</tr>
						<%
    }
     rs.close();
    st2.close();
    con.close();
    }catch(Exception e)
    {
    e.printStackTrace();
    }
	 %>

						<tr>
							<td colspan="2" align="center">
								<input type="hidden" name="fdate" value="<%=s2 %>" />
								<input type="hidden" name="tdate" value="<%=s3 %>" />
								<% if(count > 0)
								{ %>
								<input type="submit" value="Next"/></br>
								<% } else { %>
								Sorry, there are no venues available from <%=s2 %> to <%=s3 %>. 
								<%	} %>
								<a href="reserve1.jsp">Click here</a> to pick a different date range.
							</td>
						</tr>
					</table>
				</form>
				<br />
			</div>
		</div>

		<div id="left">

			<jsp:include page="./vmenu.html" />
		</div>
		<div style="clear: both;"></div>

		<div id="footer">
			<jsp:include page="./footer.html" /></div>
	</div>

</body>
</html>