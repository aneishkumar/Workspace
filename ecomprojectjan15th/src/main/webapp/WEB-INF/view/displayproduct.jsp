<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
        <tr>
          <th>Product ID</th>
            <th>Product Name</th>
            <th>Product Quantity</th>
            <th>Product Price</th>
            
            <th>Product Description</th>
            </tr>
            <tr>
            <tr>
                    <td>${productsee.id}</td>
                    <td>${productsee.name}</td>
                    <td>${productsee.quantity}</td>
                    <td>${productsee.price}</td>                   
                    <td>${productsee.description}</td>

</body>
</html>