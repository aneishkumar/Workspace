<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="header.jsp" %><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADD SUPPLIER</title>
</head>
<body>

<center>
<font color="red"><b>
<h2>ADD SUPPLIER</h2>
<form:form name="myForm" action="addsupplier" method="POST" commandName="supplier"  >
	<table>
	
	
		<tr>
			<td>Supplier Name :</td>
			<td><form:input path="suppliername" /></td>
		</tr>
        <tr>
			<td>Supplier Address:</td>
			<td><form:input path="supplieraddress" /></td>
		</tr>
         <tr>
		
		
		<tr>
			<td colspan="2"><input type="submit" class="btn btn-success" value="Add"></td>
		</tr>
		</b>
	</table>
</form:form>
</font>
</center>




</body>
</html>
<%@include file="footer.jsp" %>
