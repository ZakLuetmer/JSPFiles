<html>
<head>

<title>Login Form</title>
</head>
<body>
	<%
		String anyErrors = request.getParameter("Error");
		if (anyErrors != null && anyErrors.equals("1")) {
			out.println("USER IS DEACTIVATED");
		} else if (anyErrors != null && anyErrors.equals("2")) {
			out.println("USERNAME OR PASSWORD IS INVALID");
		} else if (anyErrors != null && anyErrors.equals("3")){
			out.println("SOMETHING WENT WRONG");
		}
		else if(anyErrors != null && anyErrors.equals("4")){
			out.println("MUST LOGIN");
		}
	%>
	<br>
	<br>
	<br>
	<form method="post" action="Login_action.jsp" name="Login">
		<br>
		<table style="text-align: left; width: 266px; height: 228px;"
			border="1" cellpadding="2" cellspacing="2">
			<tbody>
				<tr>
					<td style="vertical-align: top;">Username<br>
					</td>
					<td style="vertical-align: top;"><input name="Username">
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Password<br>
					</td>
					<td style="vertical-align: top;"><input type="password" name="Password">
					</td>
				</tr>
			<tr>
				<td style="vertical-align: top;"><input value="Log in"
					name="Log in" type="submit"></td>
				<td style="vertical-align: top;"><input value="Reset"
					name="Reset" type="reset"></td>
			</tr>
			</tbody>
		</table>
		<br>
	</form>
	<br>
</body>
</html>