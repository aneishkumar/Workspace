<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="admin1.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit</title>
</head>
<body>
<center>
<h2><b>Admin Edit Selected User</b></h2>
<font color="red"><form:form action="updateuser" method="post" commandName="user1">
<fieldset>
    <label><b>ID</b></label>
    <form:input type="text" path="id" value="${userdata.id}" /><br>
    <label><b>Name</b></label>
    <form:input type="text" path="name" value="${userdata.name}" /><br>
    <br><label><b>Email ID</b></label>
    <form:input type="text" path="emailid" value="${userdata.emailid}" /><br>
    <br><label><b>Age</b></label>
    <form:input type="text" path="age" value="${userdata.age}" /><br>
    <br><label><b>Password</b></label>
    <form:input type="password" path="password" value="${userdata.password}" /><br>
    <br><label><b>Mobile Number</b></label>
    <form:input type="text" path="mobilenumber" value="${userdata.mobilenumber}" /><br>
    <br><label><b>Address</b></label>
    <form:input type="text" path="address" value="${userdata.address}" /><br>
    
    <input type="submit" value="editForm"/>
</fieldset>
</form:form>
</font>
</center>
</body>
</html>
