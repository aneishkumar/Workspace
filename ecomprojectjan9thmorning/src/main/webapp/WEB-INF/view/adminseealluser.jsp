<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <h2>All Users in System</h2>

    <table border="1">
        <tr>
          <th>id</th>
            <th>Name</th>
            <th>Email Id</th>
            <th>Age</th>
            <th>Password</th>
            <th>Mobile Number</th>
            <th>Delete</th>  
            <th>Edit</th>  
        </tr>
        <c:if test="${!empty adminseealluser}">
            <c:forEach items="${adminseealluser}" var="User">
                <tr>
                    <td>${User.id}</td>
                    <td>${User.name}</td>
                     <td>${User.emailid}</td>
                      <td>${User.age}</td>
                    <td>${User.password}</td>
                    <td>${User.mobilenumber}</td>
                    <td><a href="delete?uid=${User.id}">delete</a></td>
                    <td><a href="edit?uid=${User.id}">edit</a></td>
            </tr>
            </c:forEach>
            </c:if>
    </table>
</body>
</html>