<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

       
             <c:url value="/resources/${productsee.id}.jpg" var="imageurl"></c:url>
             <img src="${imageurl}" height="700" width="500">
            <table><tr>
                    <td>Product ID:${productsee.id}</td>
                    <tr><td>Product Name:${productsee.name}</td></tr>
                   <tr> <td>Product Price:${productsee.price}</td>  </tr>                 
                   <tr> <td>Product Description:${productsee.description}</td></tr>

</table>
</body>
</html>
<%@include file="footer.jsp" %>