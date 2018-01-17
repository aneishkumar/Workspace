<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
 <div class="container">
	<div class="row">
		<div class="span5">
            <table class="table table-striped table-condensed">
        <tr>
        <th>Image</th>
          <th>Product ID</th>
            <th>Product Name</th>
            <th>Product Quantity</th>
            <th>Product Price</th>
            
            <th>Product Description</th>
            <th>Product SupplierID</th>
            <th>Product CategoryID</th>
            
            

            
              
        </tr>
        <c:if test="${!empty prolist}">
            <c:forEach items="${prolist}" var="Product">
                <c:url value="/resources/${Product.id}.jpg" var="imageurl"></c:url>
                <tr>
               
                <td><img src="${imageurl}" height="100" width="100"></td>
                     <td>${Product.id}</td>
                    <td>${Product.name}</td>
                    <td>${Product.quantity}</td>
                    <td>${Product.price}</td>                   
                    <td>${Product.description}</td>
                    <td>${Product.supplierid}</td>
                    <td>${Product.catId}</td>
                    <td><a href="seepro?pid=${Product.id}">Order now</a></td>
                    
                      <br>
                   
            </tr>
            </c:forEach>
            </c:if>
    </table>
    </div>

</body>
</html>
<%@include file="footer.jsp" %>