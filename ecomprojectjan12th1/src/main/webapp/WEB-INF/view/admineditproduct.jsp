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
<h2><b>Admin Edit Selected Product</b></h2>
<font color="red"><form:form action="updateproduct" method="post" commandName="product1">
<fieldset>
    <label><b>Product ID</b></label>
    <form:input type="text" path="id" value="${productdata.id}" /><br>
    <label><b>Product Name</b></label>
    <form:input type="text" path="name" value="${productdata.id}" /><br>
    <label><b>Product price</b></label>
    <form:input type="text" path="price" value="${productdata.price}" /><br>
    <br><label><b>Quantity</b></label>
    <form:input type="text" path="quantity" value="${productdata.quantity}" /><br>
    <br><label><b>Description</b></label>
    <form:input type="text" path="description" value="${productdata.description}" /><br>
    <br><label><b>Category</b></label>
    <form:input type="text" path="catId" value="${productdata.catId}" /><br>
    <br><label><b>Supplier</b></label>
    <form:input type="text" path="supplierid" value="${productdata.supplierid}" /><br>
    
    
    <input type="submit" value="edit"/>
</fieldset>
</form:form>
</font>
</center>
</body>
</html>
<%@include file="footer.jsp" %>