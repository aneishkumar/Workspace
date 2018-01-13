<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="header.jsp" %><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>



<div class="container" style="margin-top:40px" ">
		<div class="row">
			<div class="col-sm-6 col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<strong> Login Here</strong>
					</div>
					<br/>
					<div align="center">
					
					</div>
					<div class="panel-body">
						<form action="performlogin" method="post">
							
							<fieldset>
								<div class="row">
									<div class="center-block">
										
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12 col-md-10  col-md-offset-1 ">
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-user"></i>
												</span> 
												<input  class="form-control" placeholder="Username" required id="username" name="username" type="text" pattern=".{5,10}" title="minimum length for username is 5"/>
											</div>
										</div>
										<div class="form-group">
											<div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-lock"></i>
												</span>
												<input class="form-control" placeholder="Password" required name="password" type="password" title="Enter Valid credentials"/>
											</div>
										</div>
										<div class="form-group">
											<input style="background-color:purple" type="submit" class="btn btn-lg btn-primary btn-block" value="Sign in">
										</div>
									</div>
								</div>
							</fieldset>
							
					</div>
					</div>
					
					
                </div>
			</div>
		</div>
	</div>
	</div>




</body>
</html>
<%@include file="footer.jsp" %>