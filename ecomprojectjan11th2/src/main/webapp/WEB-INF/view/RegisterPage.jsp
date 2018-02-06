<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="header.jsp" %><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Register</title>
</head>
<body>
<script>  
 
</script>

<center>



<div class="container" style="margin-top:40px" ">
		<div class="row">
			<div class="col-sm-6 col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<strong> REGISTER</strong>
					</div>
					<br/>
					<div align="center">
					
					</div>
					<div class="panel-body">
						<form:form name="myForm" id="formregister" action="Register" method="POST"  modelAttribute="user">
							
							<fieldset>
								<div class="row">
									<div class="center-block">
										
									</div>
								</div>
								<div class="row">
									
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-user"></i>
												</span> 
												<form:input  class="form-control" placeholder="Username" path="username" required="true" type="text" pattern=".{5,10}" title="minimum length for username is 5"/>
											</div>
										</div>
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-user"></i>
												</span> 
												<form:input  class="form-control" placeholder="Name" path="name" required="true" type="text" />
											</div>
										</div>
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
												
													<i class="glyphicon glyphicon-user" ></i>
												</span> 
												<form:input  class="form-control" placeholder="Email Id" path="emailid" required="true" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="Eg:user@xxx.yyy>"/>
											</div>
										</div>
										
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
												
													<i class="glyphicon glyphicon-user" ></i>
												</span> 
												<form:input  class="form-control" placeholder="Address" path="address" required="true" type="text" />
											</div>
										</div>
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
												
													<i class="glyphicon glyphicon-user" ></i>
												</span> 
												<form:input  class="form-control" placeholder="Mobile Number" path="mobilenumber" required="true" type="text" pattern="[789][0-9]{9}" title="Should be 10 digits starting from 7,8 or 9"/>
											</div>
										</div>
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
												
													<i class="glyphicon glyphicon-lock" ></i>
												</span> 
												<form:input  class="form-control" placeholder="Password" path="password" required="true" type="password" />
											</div>
										</div>
										
										<div class="form-group">
											<input style="background-color:purple" type="submit" class="btn btn-lg btn-primary btn-block" value="Register">
										</div>
									</div>
								</div>
							</form:form>
							
					</div>
					</div>
					
					
                </div>
			</div>
		

	





</body>
</html>
<%@include file="footer.jsp" %>
