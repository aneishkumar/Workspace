<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="header.jsp" %><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

<center>
<font color="red"><b>
<h2>Login </h2>
<form method="post" action="/Login"><br><br>
<table>
<tr><td> User Name:</td><td><input type="text" name="Name"required class="form-control"></td></tr>
<tr><td>Password:</td><td><input type="Password" name="Password"required class="form-control"></td></tr>

<tr><td colspan="2"><input type="submit" class="btn btn-success" value="Login"></td>
</font>
</table>
</form>
</center>




</body>
</html>
<%@include file="footer.jsp" %>