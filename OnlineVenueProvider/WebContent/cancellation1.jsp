<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<br/>
<h3>To Cancel A Venue Please Login First....</h3>
<div class="articles">
<br/><br/>
<a href="memberlogin.jsp" title="New User">If You Are An Existing User click Here</a>
<br/><br/>
<a href="reg.jsp" title="Member Login">If You Are A New User click Here</a>
<br/><br/>
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