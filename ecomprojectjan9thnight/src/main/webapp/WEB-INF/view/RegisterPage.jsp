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
<script>
function validateForm() {
	var x = document.forms["myForm"]["usernamename"].value;
    if (x == "") {
    
        alert("Name must be filled out");
        return false;
    }

	
</script>
<center>
<font color="red"><b>
<h2>Register Page</h2>
<form:form name="myForm" action="Register" method="POST" commandName="user" onsubmit="return validateForm()" >
	<table>
	<tr>
			<td>User Name :</td>
			<td><form:input path="username" type="text"  name="username" /> </td>
		</tr>
	
		<tr>
			<td> Name :</td>
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
			<td colspan="2"><input type="submit" class="btn btn-success" value="Register"></td>
		</tr>
		</b>
	</table>
</form:form>
</font>
</center>




</body>
</html>
<%@include file="footer.jsp" %>
