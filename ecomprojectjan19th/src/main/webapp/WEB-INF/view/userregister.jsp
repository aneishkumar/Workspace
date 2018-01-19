<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
</head>
<body>
<font color="black">
<h1>Registration Form</h1>
<form method="post" action="/Login"><br><br>
<table>
<tr><td>Name:</td><td><input type="text" name="Name"required class="form-control"></td></tr>
<tr><td>EmailID:</td><td><input type="text" name="Name"required class="form-control"></td></tr>

<tr><td>Age:</td><td><input type="text" name="Age"required class="form-control"></td></tr>
<tr><td>Address:</td><td><input type="text" name="Address"required class="form-control"></td></tr>
<tr><td>Mobile Number:</td><td><input type="text" name="mobilenumber"required class="form-control"></td></tr>
<tr><td>UserName:</td><td><input type="text" name="Username"required class="form-control"></td></tr>
<tr><td>Password:</td><td><input type="Password" name="Password"required class="form-control"></td></tr>
<tr><td>Confirm Password:</td><td><input type="Password" name="Password"required class="form-control"></td></tr>
<tr><td><a href="Login"><button type="button" class="btn btn-success">Register</button></td><td><a href="starting"><button type="button" class="btn btn-success">Cancel</button></td></tr>
</font>
</table>
</form>
</body>
</html>
<%@include file="footer.jsp" %>