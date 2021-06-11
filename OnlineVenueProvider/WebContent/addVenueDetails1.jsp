<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.venue.DBConnection"%>
<%@ page import="java.sql.*,java.util.*,java.text.*" %>
<%!
 Connection con=null;
     ResultSet rs=null; 
     Statement st=null; 
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int c;
PreparedStatement st1=null;
int c1;
 %>
<%
try
{
	DBConnection dbcon = new DBConnection();
    con = dbcon.getCon();   
	st=con.createStatement();
	
   	s1=request.getParameter("vname");
   	s2=request.getParameter("vaddress");
 	s3=request.getParameter("cperson");
    s4=request.getParameter("pno");
    s5=request.getParameter("seating");
    s6=request.getParameter("dining");
    s7=request.getParameter("parking");
    s9=request.getParameter("other");
    
    DateFormat formater = new SimpleDateFormat("yyyy-MM-dd");  
	java.util.Date parsedUtilDate = formater.parse(s2);  
	java.sql.Date sqltDate= new java.sql.Date(parsedUtilDate.getTime());

	DateFormat formater1 = new SimpleDateFormat("yyyy-MM-dd");  
	java.util.Date parsedUtilDate1 = formater1.parse(s3);  
	java.sql.Date sqltDate1= new java.sql.Date(parsedUtilDate1.getTime());   
  
  System.out.println(s1);
  System.out.println(s2);
  System.out.println(s3);
  System.out.println(s4);
  System.out.println(s5);
  System.out.println(s6);
  System.out.println(s7);
  System.out.println(s9);
  
  String uid=(String)session.getAttribute("name");
  
  String cit="insert into venue_details1 values('"+uid+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s9+"')" ;
  c=st.executeUpdate(cit);
  
  String uname="none";
  st1=con.prepareStatement("insert into venue_status1 values(?,?,?,?)");
	st1.setString(1, uname);
	st1.setString(2, s1);
	st1.setDate(3, sqltDate);
	st1.setDate(4, sqltDate1);
	c1=st1.executeUpdate();
	
  if(c>0){
  %>
  <jsp:forward page="./success.jsp"></jsp:forward>
  <%
  }
  else
	{%>
	<jsp:forward page="./failure.jsp"></jsp:forward>
	<%
	}
	 rs.close();
    st.close();
    con.close();
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
  con.close();
  }
  catch(Exception e)
  {
  e.printStackTrace();
  }
%>
