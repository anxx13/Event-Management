<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Member Login</title>
		<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
		<script type="text/javascript">

			function validate() {
				var uname = (document.forms["regform"]["uname"].value);
				var pword = (document.forms["regform"]["pword"].value);
				var role = (document.forms["regform"]["role"].value);

				if (uname == null || uname == "") {
					alert("Enter UserName");
					return false;
				}
				if (pword == null || pword == "") {
					alert("Enter PassWord");
					return false;
				}
				if (role == null || role == "") {
					alert("Please Select Your Role");
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

<h2><a href="#">Member Login Here</a></h2>
<form action="login.jsp" method="post" name="regform" onsubmit="return validate()">
<table width="500" bgcolor="#FFD8AF">
<tr><td align="right"><font color="">UserName </font></td><td><input type="text" name="uname"/></td></tr>
<tr></tr>
<tr><td align="right"><font color="">PassWord </font></td><td><input type="password" name="pword"/></td></tr>
<tr></tr>
<tr><td align="right"><font color="">Role </font></td><td><select name="role">
<option value="">Select</option>
<option value="admin">Admin</option>
<option value="visitor">Visitor</option>
<option value="vprovider">Venue Provider</option>

</select></td></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr><td colspan="2" align="center"><input type="submit" value="Submit"/></td></tr>
<tr><td colspan="2" align="center"><a href="reg.jsp">Customer?...Click Here to Sign up</a></td></tr>
<tr><td colspan="2" align="center"><a href="reg1.jsp">Provider?...Click Here to reach us</a></td></tr>

</table>

</form>
<div class="articles">
<br />

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