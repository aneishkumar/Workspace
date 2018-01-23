<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Suppliers List</title>
</head>
<body>
 <h2>Product</h2>

    <table border="1">
        <tr>
        <th>Image</th>
          <th>Product ID</th>
            <th>Product Name</th>
            <th>Product Quantity</th>
            <th>Product Price</th>
            
            <th>Product Description</th>
            <th>Product SupplierID</th>
            <th>Product CategoryID</th>
            <th>Delete </th>
            <th>edit</th>
            

            
              
        </tr>
        <c:if test="${!empty adminseeallproduct}">
            <c:forEach items="${adminseeallproduct}" var="Product">
                <c:url value="/resources/${Product.id}.jpg" var="imageurl"></c:url>
                <tr>
               
                <td><img src="${imageurl}" height="50" width="50"></td>
                     <td>${Product.id}</td>
                    <td>${Product.name}</td>
                    <td>${Product.quantity}</td>
                    <td>${Product.price}</td>                   
                    <td>${Product.description}</td>
                    <td>${Product.supplierid}</td>
                    <td>${Product.catId}</td>
                    
                      
                    <td><a href="deletepro?pid=${Product.id}">delete</a></td>
                    <td><a href="editpro?pid=${Product.id}">edit</a></td>
            </tr>
            </c:forEach>
            </c:if>
    </table>
</body>
</html>
<%@include file="footer.jsp" %>
