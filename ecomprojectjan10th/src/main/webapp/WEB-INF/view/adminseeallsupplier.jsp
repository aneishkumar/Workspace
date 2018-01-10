<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="admin1.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Suppliers List</title>
</head>
<body>
 <h2>All SUPPLIER SO FAR</h2>

    <table border="1">
        <tr>
          <th>Supplier ID</th>
            <th>Supplier Name</th>
            <th>Supplier Address</th>
            <th>Delete</th>  
            <th>Edit</th>
              
        </tr>
        <c:if test="${!empty adminseeallsupplier}">
            <c:forEach items="${adminseeallsupplier}" var="Supplier">
                <tr>
                    <td>${Supplier.supplierid}</td>
                    <td>${Supplier.suppliername}</td>
                     <td>${Supplier.supplieraddress}</td>
                      
                    <td><a href="supdelete?sid=${Supplier.supplierid}">delete</a></td>
                    <td><a href="supedit?sid=${Supplier.supplierid}">edit</a></td>
            </tr>
            </c:forEach>
            </c:if>
    </table>
</body>
</html>
