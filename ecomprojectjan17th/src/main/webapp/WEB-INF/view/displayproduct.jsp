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
                   <tr> <td><a href="addtocart">Add to cart</a></td></tr>
                   </table>
                   <form:form action="addtocart/product.id" commandName="Cart"  method="post"  >
                   <table>
<tr>
<td>Product name</td>
<td><form:input type ="text" path ="name"/></td>
</tr>

<tr>
<td>Product price</td>
 <td><form:input type ="text" path ="price"/></td>
 </tr>
 <tr>
<td>Quantity</td>
<td><form:input type ="text" path ="quantity"/></td>
</tr>
<tr>
<td>description</td>
 <td><form:input type ="text" path ="description"/></td>
 </tr>
 <tr>
<td>Category</td>
 <td><form:select name="CategoryId" path="catId">
         <option value="-1" selected>select..</option>
         <c:forEach var="category" items="${catlist}">
         <option value="${category.catid}">${category.catname}</option></c:forEach></form:select>
</td></tr>
<tr>
<td>Supplier </td>
 <td><form:select  name="Supplier" path="supplierid">
         <option value="-1">select..</option>
         <c:forEach var="supplier" items="${suplist}">
         <option value="${supplier.supplierid}">${supplier.suppliername}</option></c:forEach>
         </form:select>
</td>
<tr>  
<td><h3>Upload an image</h3><input type="file" name="pimage"></td></tr> 
<tr>   
   
    
     <tr><td colspan="2"><input type="submit" class="btn btn-success" value="Add"></td>
        
     </tr>
</body>
</html>
<%@include file="footer.jsp" %>