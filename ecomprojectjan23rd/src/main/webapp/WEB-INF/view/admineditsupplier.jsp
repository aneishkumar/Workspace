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
<h2><b>Admin Edit Category</b></h2>
<font color="red"><form:form action="updatesupplier" method="post" commandName="supplier1">
<fieldset>
     <label><b>Supplier Id</b></label>
    <form:input type="text" path="supplierid" value="${supplierdata.supplierid}" readonly="true" />
    <label><b>Supplier Name</b></label>
    <form:input type="text" path="suppliername" value="${supplierdata.suppliername}" /><br>
    <br><label><b>Supplier Address</b></label>
    <form:input type="text" path="supplieraddress" value="${supplierdata.supplieraddress}" /><br>
    
    
    <input type="submit" value="edit"/>
</fieldset>
</form:form>
</font>
</center>
</body>
</html>
<%@include file="footer.jsp" %>