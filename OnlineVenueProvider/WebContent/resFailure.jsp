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
			<h1>
				<a href="#">Online Venue Booking</a>
			</h1>
			<h2>Reserve Your Place Any Time, Any Where</h2>
		</div>

		<div id="right">

			<h2>
				<a href="#"> Failure... Please try again. </a>
			</h2>
			<div class="articles">
				<a href="reserve1.jsp">Click Here To Go To Back</a>
			</div>
		</div>

		<div id="left">

			<jsp:include page="./vmenu.html" />


		</div>
		<div style="clear: both;"></div>

		<div id="footer">
			<jsp:include page="./footer.html" /></div>
	</div>


</body>
</html>