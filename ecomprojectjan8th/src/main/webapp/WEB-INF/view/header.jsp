<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    border-top-color: #269900;
    border-bottom-color: #269900;
}
h1{
color: #000866;
text-align: center;
}






#grad1 {
    height: 200px;
    background: purple; /* For browsers that do not support gradients */
    background: linear-gradient(to bottom right, rgba(255,0,0,0), rgba(255,0,0,1)); /* Standard syntax (must be last) */
}

.navbar-default .navbar-nav > .dropdown > a:hover .caret,
.navbar-default .navbar-nav > .dropdown > a:focus .caret {
    border-top-color: #333;
    border-bottom-color: #333;
}
  </style>
</head>
<body><font color="red">
<h1><b> E-COMMERCE</b></h1></font>
<nav class="navbar navbar-default" style="font-weight: bold;  background-color: #66004d;">

  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="starting">E-COMMERCE</a>
    </div>
    <ul class="nav navbar-nav">
      <li ><a href="home">Home</a></li>
      <li ><a href="aboutus">About us</a></li>      
      <li><a href="register">Register User</a></li>
        
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Seller<span class="caret"></span></a>
      <ul class="dropdown-menu">
          <li><a href="dropdown1">Login</a></li>
          <li><a href="dropdown2">Register</a></li>
              
        </ul>
      </li>
      <li> <form class="navbar-form navbar-left" action="">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
    </li>
      </ul>
      </nav>
      
      </body>
</html>