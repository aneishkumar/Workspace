<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="header.jsp" %><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>
<center>
<font color="red"><b>
<h2>Register Page</h2>
<form:form action="Register" method="POST" commandName="user">
	<table>
	<tr>
			<td>ID :</td>
			<td><form:input path="id" /></td>
		</tr>
		<tr>
			<td>User Name :</td>
			<td><form:input path="name" /></td>
		</tr>
        <tr>
			<td>Email ID :</td>
			<td><form:input path="emailid" /></td>
		</tr>
         <tr>
			<td>Address :</td>
			<td><form:input path="address" /></td>
		</tr>

         <tr>
			<td>Password :</td>
			<td><form:password path="password" /></td>
		</tr>
        <tr>
			<td>Age :</td>
			<td><form:input path="age" /></td>
		</tr>
		<tr>
			<td>Mobile Number :</td>
			<td><form:input path="mobilenumber" /></td>
		</tr>
		
		<tr>
			<td colspan="2"> <button type="button" class="btn btn-success">Register</button></td>
		</tr>
		</b>
	</table>
</form:form>
</font>
</center>
</body>

</html>
<%@include file="footer.jsp" %>
