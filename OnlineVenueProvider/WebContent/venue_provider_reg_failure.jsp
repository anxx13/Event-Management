<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Failure</title>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
</head>
<body>

<div id="wrap">

<div id="header">
<h1><a href="#">Online Venue Booking</a></h1>
<h2>Reserve Your Place Any Time, Any Where</h2>
</div>

<div id="right">

<h2><a href="#">Registration Failure</a></h2>
<div class="articles">
<h2>UserName Not Available (Already Exist)</h2>
<h2>Try To Register With Another User Name</h2>
<a href="addvp.jsp">Back To Registration Page</a>
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