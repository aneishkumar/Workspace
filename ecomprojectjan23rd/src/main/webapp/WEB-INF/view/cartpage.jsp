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
  <STYLE>
  .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}
  </STYLE>
</head>
<body>

<div class="container">
	<div class="row">
		<div class="span5">
            <table class="table table-striped table-condensed">
        <tr>
        
          <th>Image</th>
            <th>Product Name</th>
            <th>Product Quantity</th>
            
            <th>Product Price</th>
            
            
            
            

            
              
        </tr>
       <c:if test="${!empty cartlist}">
<c:forEach items="${cartlist}" var="cart">
<c:url value="/resources/${cart.productid}.jpg" var="imageurl"></c:url>
                
                <tr>
               
               
                     <td><img src="${imageurl}" height="100" width="100"></td>
                    <td>${cart.productname}</td>
                    <td>${cart.productquantity}</td>
                    
                    <td>${cart.productprice}</td>
                    
                    <td><a href="deletecart?caid=${cart.cartid}">Delete</a></td>
                    <td><a href="editcart?pid=${cart.cartid}">Edit</a></td>
                    
                    
                      <br>
                   
            </tr>
            </c:forEach>
            <tr><td></td><td></td><td></td><td><b>Total:${total}</b></td></tr>
            <tr><td></td><td></td><td><a href="checkout" class="button">Checkout </a></td><td><a href="orderfood" class="button">Continue Shopping </a><br></td></tr>      
            </c:if>
    </table>
    </div> </div> </div>
    

      
</body>
</html>
<%@include file="footer.jsp" %>