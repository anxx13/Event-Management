<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />

<script type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</script>
</head>
<body onload="noBack();"onpageshow="if (event.persisted) noBack();" onunload="">

<div id="wrap">

<div id="header">
<h1><a href="#">Online  Booking</a></h1>
<h2>Reserve Your Place Any Time, Any Where</h2>
</div>

<div id="right">

<h2><a href="#">You Have Successfully Logged Out.</a></h2>
</div>

<div id="left"> 

<jsp:include page="./menu.html" />

</div>
<div style="clear: both;"> </div>

<div id="footer">
<jsp:include page="./footer.html" /></div></div>


</body>
</html>