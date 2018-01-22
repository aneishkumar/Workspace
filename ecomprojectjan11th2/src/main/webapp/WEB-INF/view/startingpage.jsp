<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<center>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
   <div class="carousel-inner" role="listbox" style=" width:1271px; height: 650px ;">

    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      
    </ol>
    

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
     <img src="resources/image1.jpg"  alt="image1" "> 
     
      </div>

      <div class="item">
         <img src="resources/image6.jpg" alt="image2" style="width:100%;">
       
      </div>
    
      <div class="item">
    <img src="resources/image7.jpg" alt=" image3" style="width:100%;">
         
      </div>
     
    
      <div class="item">
    <img src="resources/image9.jpg" alt=" image4" style="width:100" height:"25%";>
         
      </div>
      
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
      </a>
      </div>
      </center>
      <h1>Break-Fast <a href="breakfastfood">(View all) </a></h1>
      <a href="seepro?pid=162"><img src="resources/162.jpg" alt="image1" style="width:100%;"> </a>
      <h2>Lunch <a href="lunchfood">(View all) </a></h2>
      <a href="seepro?pid=163"><img src="resources/image1.jpg" alt="image1" style="width:100%;"> </a>
      <h2>Dinner <a href="dinnerfood">(View all) </a></h2>
      <a href="seepro?pid=195"><img src="resources/195.jpg" alt="image1" style="width:100%;"> </a>
      

</body>
<%@include file="footer.jsp" %>
</html>

