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

	<h2><a href="#">Enter Details</a></h2>
	<div class="articles">
	<form method="post" action="./reserveAction.jsp">
	<table bgcolor="#FFD8AF" width="500" height="" border="" >
	<tr><td align="center">From Date</td><td><input type="text" name="fdate"/>	(Ex:2021-03-01)</td></tr>
	<tr><td align="center">To Date</td><td><input type="text" name="tdate"/>	(Ex:2021-03-02)</td></tr>
	<tr align="center"><td colspan="2"><input type="submit" value="Submit"/></td></tr>
	</table>	 </form>
	<br/>
	</div>
	</div>

	<div id="left"> 

	<jsp:include page="./vmenu.html" />
	</div>
	<div style="clear: both;"> </div>

	<div id="footer">
	<jsp:include page="./footer.html" /></div></div>
 
</body>
</html>