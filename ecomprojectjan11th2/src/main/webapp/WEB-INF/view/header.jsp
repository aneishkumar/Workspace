<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
  <title>Ecommerce</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .navbar-default {
    background-color: #66004d;
    border-color: #269900;
}

.navbar-default .navbar-nav > .dropdown > a .caret {
    border-top-color: #590099;
    border-bottom-color: #590099;
}







#grad1 {
    height: 200px;
    background: purple; /* For browsers that do not support gradients */
    background: linear-gradient(to bottom right, rgba(255,0,0,0), rgba(255,0,0,1)); /* Standard syntax (must be last) */
}

.navbar-default .navbar-nav > .dropdown > a:hover .caret,
.navbar-default .navbar-nav > .dropdown > a:focus .caret {
    border-top-color: #590099;
    border-bottom-color: #590099;
}
  </style>
</head>
<body>
<h1><img src="resources/logo1.png" width="100%" height="168" border="0" /></h1>

<nav class="navbar navbar-default" style="font-weight: bold;  background-color: #66004d;">

  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" ><font color="white">E-RESTURANT</font></a>
    </div>
    <ul class="nav navbar-nav">
    <c:choose>
    <c:when test="${sessionScope.UserLoggedIn == 'true'}">
       <li>  <a href="starting"><font color="white">Home</font></a></li>
      <li ><a href="aboutus"><font color="white">About us</font></a></li>      
      <li><a href="contactus"><font color="white">Contact Us</font></a></li>
            
            <li><a href="orderfood"><font color="white">Order Food </font></a></li>
            <li><a href="cart"><font color="white">Cart </font></a></li>
            <li><a href="logout"><font color="white">Log-out </font></a></li> 
            <li><a ><font color="white"> Welcome:${sessionScope.Username} </font></a></li> 
            
            </c:when>
            
      
           <c:when test="${sessionScope.Administrator == 'true'}">
       <li>    <a href="starting"><font color="white">Home</font></a></li>
      <li ><a href="aboutus"><font color="white">About us</font></a></li>      
      <li><a href="contactus"><font color="white">Contact Us</font></a></li>
      <li><a href="admin"><font color="white">Control</font></a></li>
     
            <li><a href="seeallproduct"><font color="white">Products </font></a></li>
            <li><a href="seeallsupplier"><font color="white">Supplier </font></a></li>
            <li><a href="seeallcategory"><font color="white">Categories </font></a></li>
            <li><a href="logout"><font color="white">Log-out </font></a></li> 
            <li><a ><font color="white"> Welcome:Admin </font></a></li> 
            </c:when>
            <c:otherwise>
          <li>  <li ><a href="starting"><font color="white">Home</font></a></li>
      <li ><a href="aboutus"><font color="white">About us</font></a></li>      
      <li><a href="register"><font color="white">Register User</font></a></li>
      <li><a href="Login"><font color="white">Login</font></a></li>
            <li><a href="contactus"><font color="white">Contact Us </font></a></li>
            <li><a href="orderfood"><font color="white">All Food </font></a></li>
            <li><a ><font color="white"> Welcome:Guest </font></a></li> 
            </c:otherwise>
            </c:choose>
      
      
        
        
        
        
      
      
      </ul>
      </nav>
      
      </body>
</html>