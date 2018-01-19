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
 <h2>Category</h2>

    <table border="1">
        <tr>
          <th>Category ID</th>
            <th>Category Name</th>
            <th>Category Description</th>
            <th>Delete</th>  
            <th>Edit</th>
              
        </tr>
        <c:if test="${!empty adminseeallcategory}">
            <c:forEach items="${adminseeallcategory}" var="Category">
                <tr>
                    <td>${Category.catid}</td>
                    <td>${Category.catname}</td>
                     <td>${Category.catdescription}</td>
                      
                    <td><a href="catdelete?cid=${Category.catid}">delete</a></td>
                    <td><a href="catedit?cid=${Category.catid}">edit</a></td>
            </tr>
            </c:forEach>
            </c:if>
    </table>
</body>
</html>
<%@include file="footer.jsp" %>
