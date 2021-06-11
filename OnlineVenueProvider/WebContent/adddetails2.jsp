<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Details</title>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
<script type="text/javascript">

function validate() {
		var vname = (document.forms["regform"]["vname"].value);
		var vaddress = (document.forms["regform"]["vaddress"].value);
		var cperson = (document.forms["regform"]["cperson"].value);
		var pno = (document.forms["regform"]["pno"].value);
		var seating= (document.forms["regform"]["seating"].value);
		var dining = (document.forms["regform"]["dining"].value);
		var parking = (document.forms["regform"]["parking"].value);
		var status = (document.forms["regform"]["status"].value);
		var other = (document.forms["regform"]["other"].value);

	if (vname == null || vname == "") {
		alert("Please Enter Venue Name");
		return false;
	}
	if (vaddress == null || vaddress == "") {
		alert("Please Enter vaddress");
		return false;
	}
	if (cperson == null || cperson == "") {
		alert("Please Enter Contact Person Name");
		return false;
	}
	if (pno == null || pno == "") {
		alert("Please Enter Phone Number");
		return false;
	}
	if (seating == null || seating == "") {
		alert("Please Enter Seating Details");
		return false;
	}
	if (dining == null || dining == "") {
		alert("Please Enter Dining Details");
		return false;
	}
	if (parking == null || parking == "") {
		alert("Please Enter Parking Details");
		return false;
	}
	if (status == null || status == "") {
		alert("Please Enter current status");
		return false;
	}
	if (other == null || other == "") {
		alert("Please Enter Other Details");
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


<div class="articles">
<%
String s1=(String)session.getAttribute("name");
session.setAttribute("name",s1);
%>

<h3>Add Venue Information:</h3>
<form action="addVenueDetails2" name="regform" method="post" enctype="multipart/form-data" onsubmit="return validate()">
<table width="550" height="350" bgcolor="#FFD8AF">
<tr><td align="right">Venue Name:</td><td><input type="text" name="vname"/></td></tr>
<tr><td align="right">Address:</td><td><input type="text" name="vaddress"/></td></tr>
<tr><td align="right">Contact Person Name:</td><td><input type="text" name="cperson"/></td></tr>
<tr><td align="right">Phone Number:</td><td><input type="text" name="pno"/></td></tr>
<tr><td align="right">Seating Details:</td><td><input type="text" name="seating"/></td></tr>
<tr><td align="right">Dining Hall Details:</td><td><input type="text" name="dining"/></td></tr>
<tr><td align="right">Parking Details:</td><td><input type="text" name="parking"/></td></tr>
<tr><td align="right">Other Details:</td><td><input type="text" name="other"/></td></tr>
<tr><td align="right">Upload pic</td><td><input type = "file" name = "file" />
<tr><td colspan="2" align="center"><input type="submit" value="Submit"/><input type="reset" value="Reset"/></td></tr>
</table>
</form>
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