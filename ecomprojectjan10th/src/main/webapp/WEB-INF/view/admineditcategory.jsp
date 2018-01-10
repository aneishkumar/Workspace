<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit</title>
</head>
<body>
<center>
<h2><b>Admin Edit Selected Supplier</b></h2>
<font color="red"><form:form action="updatecategory" method="post" commandName="category1">
<fieldset>
    <label><b>Category ID</b></label>
    <form:input type="text" path="catid" value="${categorydata.catid}" /><br>
    <label><b>Category Name</b></label>
    <form:input type="text" path="catname" value="${categorydata.catname}" /><br>
    <br><label><b>Category Description</b></label>
    <form:input type="text" path="catdescription" value="${categorydata.catdescription}" /><br>
    
    
    <input type="submit" value="edit"/>
</fieldset>
</form:form>
</font>
</center>
</body>
</html>