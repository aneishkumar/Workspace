<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<h1>Delivery Address</h1>
<div class="container">
	<div class="row">
		<div class="span5">
            <table class="table table-striped table-condensed">
            <form:form  action="proceed" method="POST"  commandName="ordertable">
	<tr>
			<td>Name :</td>
			<td><form:input path="name" required="true" /> </td>
		</tr>
	
		<tr>
			<td> Address :</td>
			<td><form:input path="orderaddress" required="true" /></td>
		</tr>
        <tr>
			<td>Landmark:</td>
			<td><form:input path="landmark" required="true" /></td>
		</tr>
         <tr>
			<td>Pin Code :</td>
			<td><form:input path="pincode" required="true" /></td>
		</tr>

         <tr>
			<td>Mobile Number:</td>
			<td><form:input path="mobilenumber" required="true" /></td>
		</tr>
		
		
		<tr>
			<td><a href="cart" class="button">Go back </a></td><td colspan="2"><input type="submit" class="button" value="Proceed To Payment"></td>
		</tr>
		</form:form>
		</b>
	</table>
	</div></div></div>

</body>
</html>
<%@include file="footer.jsp" %>