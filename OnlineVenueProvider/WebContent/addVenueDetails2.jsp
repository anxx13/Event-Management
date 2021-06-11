
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.venue.DBConnection"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%!
 Connection con=null;
     ResultSet rs=null;  
String s2,s3,s4,s5,s6,s7,s8,s9;
PreparedStatement ps = null;

int c;
 %>
<%
try
{
	DBConnection dbcon = new DBConnection();
    con = dbcon.getCon();   
    String s1=request.getParameter("vname");
    String myloc=request.getParameter("pic");
    
    File image= new File(myloc);
    ps = con.prepareStatement("insert into contact(vname,picture) values(?,?)");
    ps.setString(1, s1);
    FileInputStream fis=null;
    fis=new FileInputStream(image);
    ps.setBinaryStream(2, (InputStream) fis, (int) (image.length()));
    c = ps.executeUpdate();
	/*
   	s1=request.getParameter("vname");
    InputStream inputStream=null;
    Part filePart = request.getPart("file");
    if (filePart != null) {
        System.out.println(filePart.getName());
        System.out.println(filePart.getSize());
        System.out.println(filePart.getContentType());
        inputStream = filePart.getInputStream();
    }
  
  System.out.println(s1);
  
  String uid=(String)session.getAttribute("name");
  
  String sql = "INSERT INTO contacts (vname, picture) values (?, ?)";
  PreparedStatement statement = con.prepareStatement(sql);
  statement.setString(1, s1);
   
  if (inputStream != null) {
      // fetches input stream of the upload file for the blob column
      statement.setBlob(2, inputStream);
  }
  c = statement.executeUpdate();
  */
    if(c>0)
    {
    	%>
    	  <jsp:forward page="./success.jsp"></jsp:forward>
    	  <%
    out.println("insert successfully");
    }
    else
    {
    	%>
    	  <jsp:forward page="./failure.jsp"></jsp:forward>
    	  <%
    out.println("not successfully");
    }
    }
    catch(Exception ex)
    {
    ex.printStackTrace();
    }
    finally{
    try{
    if(rs!=null){
    rs.close();
    rs= null;
    }
    if(ps !=null)
    {
    ps.close();
    ps=null;
    }
    if(con!=null)
    {
    con.close();
    con=null;
    }
    }
    catch(Exception e)
    {
    e.printStackTrace();
    }
    }
%>

