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
     <a href="seepro?pid=163"><img src="resources/image1.jpg" alt="image1" > </a>
     
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
      
      <h1><font color="#008000"><B>BREAK-FAST</B> </font> <a href="breakfastfood">(View all) </a></h1>
      <div style="text-align: center">
  <a href="seepro?pid=162"><img src="resources/162.jpg" alt="image1" height="300" width="500"> </a><a href="seepro?pid=202"><img src="resources/202.jpg" alt="image1" height="300" width="500"> </a>
</div>
<div style="text-align: center">
  <a href="seepro?pid=203"><img src="resources/203.jpg" alt="image1" height="300" width="500"> </a><a href="seepro?pid=201"><img src="resources/201.jpg" alt="image1" height="300" width="500"> </a>
</div>
<h1><font color="#008000"><B>LUNCH</B> </font> <a href="lunchfood">(View all) </a></h1>
      <div style="text-align: center">
  <a href="seepro?pid=163"><img src="resources/163.jpg" alt="image1" height="300" width="500"> </a><a href="seepro?pid=133"><img src="resources/133.jpg" alt="image1" height="300" width="500"> </a>
</div>
<div style="text-align: center">
  <a href="seepro?pid=194"><img src="resources/194.jpg" alt="image1" height="300" width="500"> </a><a href="seepro?pid=204"><img src="resources/204.jpg" alt="image1" height="300" width="500"> </a>
</div>
<h1><font color="#008000"><B>DINNER</B> </font> <a href="dinnerfood">(View all) </a></h1>
      <div style="text-align: center">
  <a href="seepro?pid=205"><img src="resources/205.jpg" alt="image1" height="300" width="500"> </a><a href="seepro?pid=206"><img src="resources/206.jpg" alt="image1" height="300" width="500"> </a>
</div>
<div style="text-align: center">
  <a href="seepro?pid=207"><img src="resources/207.jpg" alt="image1" height="300" width="500"> </a><a href="seepro?pid=195"><img src="resources/195.jpg" alt="image1" height="300" width="500"> </a>
</div>
      
      
</center>
</body>
<%@include file="footer.jsp" %>
</html>

