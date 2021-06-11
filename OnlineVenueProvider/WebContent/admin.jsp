<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
</head>
<body>

<div id="wrap">

<div id="header">
<h1><a href="#">Online Venue Booking</a></h1>
<h2>Reserve Your Place Any Time, Any Where</h2>
</div>

<div id="right">


<div class="articles">
<%
String s1=(String)session.getAttribute("name");
session.setAttribute("name",s1);
%>
<h3>Welcome..........<%= s1 %></h3>
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