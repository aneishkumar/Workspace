<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="header.jsp" %><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Register</title>
</head>
<body>
<script>  
 
</script>

<center>
<font color="red"><b>
<h2>Register Page</h2>

	
	<div class="container">
	<div class="row">
		<div class="span5">
            <table class="table table-striped table-condensed">
            <form:form name="myForm" id="formregister" action="Register" method="POST"  modelAttribute="user">
	<tr>
			<td>User Name :</td>
			<td><form:input path="username" required ="required" /> </td>
		</tr>
	
		<tr>
			<td> Name :</td>
			<td><form:input path="name"  /></td>
		</tr>
        <tr>
			<td>Email ID :</td>
			<td><form:input path="emailid"  /></td>
		</tr>
         <tr>
			<td>Address :</td>
			<td><form:input path="address" /></td>
		</tr>

         <tr>
			<td>Password :</td>
			<td><form:password path="password"  /></td>
		</tr>
		<tr>
			<td>Mobile Number :</td>
			<td><form:input path="mobilenumber" /></td>
		</tr>
		
		<tr>
			<td></td><td colspan="2"><input type="submit" class="btn btn-success" value="Register"></td>
		</tr>
		</form:form>
		</b>
	</table>
    

</div>
</font>
</center>






</body>
</html>
<%@include file="footer.jsp" %>
