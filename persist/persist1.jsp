<!-- persist1.jsp sumbits to persist2.jsp via request parameters (form fields) -->
<html>
<body>
<h4>persist1.jsp posts new form data to persist2.jsp</h4>
<form method="POST" action="persist2.jsp">
<table>
	<tr><td>First Name:</td><td><input type="text" name="firstName"/></td></tr>
	<tr><td>Last Name:</td><td><input type="text" name="lastName"/></td></tr>
    <tr><td>Age:</td><td><input type="text" name="age"/></td></tr>
    <tr><td colspan="2"><center><input type="submit" value="Let's go!"/></center></td></tr>
</table>
</form>
</body>
</html>
