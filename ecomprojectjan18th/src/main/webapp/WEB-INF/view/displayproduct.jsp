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
             <c:url value="/${productsee.id}" var="addcart"></c:url>
             <img src="${imageurl}" height="700" width="500">
            <table><tr>
                    <td>Product ID:${productsee.id}</td>
                    <tr><td>Product Name:${productsee.name}</td></tr>
                   <tr> <td>Product Price:${productsee.price}</td>  </tr>                 
                   <tr> <td>Product Description:${productsee.description}</td></tr>
                   
                   </table>
    <form action= "${addcart}" method="get">
</td><br>
<td>

<select name="quantity">

    <option hidden="true"><h4>Quantity</h4></option>
    <option name="1">1</option>
    <option name="2" >2</option>
    <option name="3" >3</option>
    <option name="4" >4</option>
    <option name="5" >5</option>
    <option name="6">6</option>
    <option name="7" >7</option>
    <option name="8" >8</option>
    <option name="9" >9</option>
    <option name="10" >10</option>
    
</select><br><br>
<button type="submit" >
<span  >AddCart</span></button>
<br><br>

</form>
    

<
</body>
</html>
<%@include file="footer.jsp" %>