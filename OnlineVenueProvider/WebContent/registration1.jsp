<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.venue.DBConnection"%>
<%@ page import="java.sql.*" %>
<%!
 Connection con=null;
     ResultSet rs=null; 
     Statement st=null,st1=null; 
String s1,s2,s3,s4,s5,s6,s7,s8,s9,cit1;
int c,c1;
 %>
<%
try
{
	DBConnection dbcon = new DBConnection();
    con = dbcon.getCon();   
	st=con.createStatement();
	st1=con.createStatement();
   	s1=request.getParameter("fname");
   	s2=request.getParameter("lname");
   	s3=request.getParameter("preaddress");
 	s4=request.getParameter("peraddress");
    s5=request.getParameter("email");
    s6=request.getParameter("contact");
    s9=request.getParameter("role");

  
  System.out.println(s1);
  System.out.println(s2);
  System.out.println(s3);
  System.out.println(s4);
  System.out.println(s5);
  System.out.println(s6);
  System.out.println(s9);
  
 
  String cit="insert into provider_reg1 values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s9+"')" ;
  c=st.executeUpdate(cit);
  c1=1;
  if(c1>0){
  %>
	<jsp:forward page="./regSuccess1.jsp"></jsp:forward>
	<%

  }
  else
	{%>
	<jsp:forward page="./regFailure1.jsp"></jsp:forward>
	<%
	}
  }catch(Exception e)
  {
   e.printStackTrace();
  }
  %>
  <%
  try
  {
  rs.close();
  st.close();
  st1.close();
  con.close();
  }
  catch(Exception e)
  {
  e.printStackTrace();
  }
%>
