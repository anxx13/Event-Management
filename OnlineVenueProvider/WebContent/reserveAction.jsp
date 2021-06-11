<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.venue.DBConnection"%>
<%@ page import="java.sql.*,java.util.*,java.text.*" %>
<%!
Connection con=null;
ResultSet rs=null,rs1=null; 
PreparedStatement st1=null,st2=null,st3=null;
Statement st=null; 
String s1,cit1;
String s2,s3;
int c,c1;
 %>
<%
try
{
	DBConnection dbcon = new DBConnection();
    con = dbcon.getCon(); 
    st=con.createStatement();  
	
	
	String uname=(String)session.getAttribute("name");
   	s1=request.getParameter("vname");
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
	    	
	
	st1=con.prepareStatement("insert into venue_status values(?,?,?,?)");
	st1.setString(1, uname);
	st1.setString(2, s1);
	st1.setDate(3, sqltDate);
	st1.setDate(4, sqltDate1);
	
	
  	c=st1.executeUpdate();
  	System.out.println("Query Excuted....Values Inserted");
  	
	%>
<jsp:forward page="resSuccess.jsp"></jsp:forward>

<%
	 rs.close();
    st.close();
    st1.close();
    st2.close();
    
    con.close();
	 	
	
  }catch(Exception e)
  {
	  
		System.out.println("...No Data Found");
		%>
	<jsp:forward page="resFailure.jsp"></jsp:forward>
	<%
  e.printStackTrace();
  }
%>
