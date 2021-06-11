<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
<script type="text/javascript">

function validate() {
		var uname = (document.forms["search"]["place"].value);

	if (uname == null || uname == "") {
		alert("Enter Your Required Place");
		return false;
	}
	
}
</script>
</head>

<body>

<div id="wrap">

<div id="header">
<h1><a href="#">Online Venue Booking</a></h1>
<h2>Reserve Your Place Any Time, Any Where</h2>
</div>

<div id="right">

<h2><a href="#">Search Here For Your Venue</a></h2>
<div class="articles">
<form action="searching.jsp" method="post" name="search"  onsubmit="return validate()">
<br/>
<table><tr><td>Enter Your Required Place.....</td><td><input type="text" name="place"/></td><td><input type="submit" value="Search"/></td></tr>
</table>
<br/>
<table width="550" height="200">
<tr><td>Ameerpet</td><td>SR Nagar</td><td>Panjagutta</td><td>Lakidikapool</td><td>Somajiguda</td></tr>
<tr><td>Ramnagar</td><td>Erragadda</td><td>Yusufguda</td><td>Nampally</td><td>Lirathabad</td></tr>
<tr><td>Dilsuknagar</td><td>Chinthal</td><td>Kukatpally</td><td>Barathnager</td><td>Jubleehills</td></tr>
<tr><td>Banjarahills</td><td>Mehidipatnam</td><td>Jeedimetla</td><td>Narayanaguda</td><td>Chikkadpally</td></tr>

</table>

</form>

<br /><br />
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