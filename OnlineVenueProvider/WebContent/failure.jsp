<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Failed</title>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
</head>
<body>

<div id="wrap">

<div id="header">
<h1><a href="#">Online Venue Booking</a></h1>
<h2>Reserve Your Place Any Time, Any Where</h2>
</div>

<div id="right">

<h2><a href="#">Your details have not been added</a></h2>
<div class="articles">
<a href="provider.jsp">Click Here to go back and try again</a>
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