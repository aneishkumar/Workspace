<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
fieldset
{
   width: 500px;
}</style>
</head>
<body>
            
                             <form>
   <fieldset>
  
 
                <div class="form-group">
                    <label class="form-label">Enquiry Form</label>
                    <div class="controls">
                        <select id="enquiry" class="form-control" name="enquiry" class="input-xlarge">
                            <option value="" selected="selected">(please select)</option>
                            <option value="">General enquiry</option>
                            <option value="">Product enquiry</option>
                            <option value="">Service enquiry</option>
                            <option value="">Feedback</option>
                            <option value="">Issues</option>
                        </select>
                    </div>
                </div>
 <div class="form-group">
    <label for="nameoftheorganisation">Name of the Organisation</label>
    <input type="name" class="form-control" id="nameoftheorganisation" placeholder="Organisation Name">
  </div>
   <div class="form-group">
    <label for="name">Name</label>
    <input type="name" class="form-control" id="name" placeholder="Enter Your Name">
  </div>
   <div class="form-group">
    <label for="mobilenumber">Mobile</label>
    <input type="number" class="form-control" id="mobilenumber" placeholder="Enter Your Mobile Number">
 
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter your email">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enquiry</label>
    <textarea type="text" class="form-control" id="text" placeholder="Write your query here"></textarea>
  </div>
  <div class="form-group">
    <label for="exampleInputFile">File input</label>
    <input type="file" id="exampleInputFile">
    <p class="help-block">Example block-level help text here.</p>
  </div>
  <div class="checkbox">
    <label>
      <input type="checkbox"> Check me out
    </label>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>

  </fieldset>
</form>






        
                       
                
</body>
</html>
<%@include file="footer.jsp" %>

