<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
          <th>Product ID</th>
            <th>Product Name</th>
            <th>Product Quantity</th>
            <th>Product Price</th>
            
            <th>Product Description</th></tr>
<c:if test="${!empty prolist}">



            <c:forEach items="${prolist}" var="Product">
                <c:if test="${Product.catId == '1'}">
                    <tr><td>${Product.id}</td>
                    <td>${Product.name}</td>
                    <td>${Product.quantity}</td>
                    <td>${Product.price}</td>                   
                    <td>${Product.description}</td>
                    <td><a href="seepro?pid=${Product.id}">Order now</a></td>
                    </tr>
                    
                    
                      </c:if> 
                    
            
            </c:forEach>
           
            </c:if>
</table>
</body>
</html>