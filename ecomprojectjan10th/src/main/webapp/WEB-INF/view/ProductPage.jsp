<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" type="text/javascript"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"type="text/javascript"></script>
<style>

</style>
</head>
<body>


<form:form action="saveProduct" commandName="product"  method="post"  >

<tr>
<th>Product name</th>
<td><form:input type ="text" path ="name"/></td>
</tr><br>

<tr>
<th>Product price</th>
 <td><form:input type ="text" path ="price"/></td>
 </tr><br>
 <tr>
<th>Quantity</th>
<td><form:input type ="text" path ="quantity"/></td>
</tr><br>
<tr>
<th>description</th>
 <td><form:input type ="text" path ="description"/></td>
 </tr><br>
<th>Category</th>
 <td><form:select name="CategoryId" path="catId">
         <option value="-1" selected>select..</option>
         <c:forEach var="category" items="${catlist}">
         <option value="${category.catid}">${category.catname}</option></c:forEach></form:select>
</td><br><br>

<th>Supplier </th>
 <td><form:select  name="Supplier" path="supplierid">
         <option value="-1">select..</option>
         <c:forEach var="supplier" items="${suplist}">
         <option value="${supplier.supplierid}">${supplier.suppliername}</option></c:forEach>
         </form:select>
</td><br><br>
   
    
     <td><td colspan="2"><input type="submit" class="btn btn-success" value="Add"></td>
        
     </tr>


</form:form>


</body>
</html>