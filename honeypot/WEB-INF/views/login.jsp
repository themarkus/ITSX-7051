<!DOCTYPE html>
<html>
	<body>
		<h1>Log In</h1>
		<h2><font color="red">${flash}</font></h2>
		<form method="POST" action="login">
			<fieldset>
				<legend>Login Form</legend>
				User: <input type="text" name="user"/><br/>
				Password: <input type="password" name="pass"/><br/>
				<input type="submit"/>
			</fieldset>
		</form>
	</body>
</html>