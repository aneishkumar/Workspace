<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@include file="header.jsp" %><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
           <th>Image</th>
          <th>Product ID</th>
            <th>Product Name</th>
            <th>Product Quantity</th>
            <th>Product Price</th>
            
            <th>Product Description</th></tr>
            
        <c:if test="${!empty prolist}">



            <c:forEach items="${prolist}" var="Product">
                <c:if test="${Product.catId == '65'}">
                <c:url value="/resources/${Product.id}.jpg" var="imageurl"></c:url>
                <tr>
               
                <td><img src="${imageurl}" height="100" width="100"></td>
                    <td>${Product.id}</td>
                    <td>${Product.name}</td>
                    <td>${Product.quantity}</td>
                    <td>${Product.price}</td>                   
                    <td>${Product.description}</td>
                    <td><a href="seepro?pid=${Product.id}">Order now</a></td>
                    </tr> <br>
                    
                    
                      </c:if> 
                    
            
            </c:forEach>
           
            </c:if>
</table>

</body>
</body>
</html>