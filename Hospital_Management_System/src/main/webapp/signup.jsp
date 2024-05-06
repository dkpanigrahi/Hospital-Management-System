<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup Page</title>
<%@include file="component/allcss.jsp" %>
<style type="text/css">
.paint-card{
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp" %>
		
		<div class="container p-3">
	 		<div class="row">
	  			<div class="col-md-4 offset-md-4">
					<div class="card paint-card">
						<div class="card-body">
							<p class="fs-4 text-center">User Registration</p>
							
								<c:if test="${not empty succMsg }">
									<p class="text-center text-success">${succMsg }</p>
									<c:remove var="succMsg"/>
								</c:if>
					
								<c:if test="${not empty errorMsg }">
									<p class="text-center text-success">${errorMsg }</p>
									<c:remove var="errorMsg"/>
								</c:if>
					
								<form action="user_register" method="post">
						 
								  <div class="mb-3">
								    <label  class="form-label">Full Name</label>
								    <input type="text" class="form-control" name="fullname" >
								  </div>
								  
								  <div class="mb-3">
								    <label  class="form-label">Email address</label>
								    <input type="email" class="form-control" name="email" >
								  </div>
								  
								  <div class="mb-3">
								    <label  class="form-label">Password</label>
								    <input type="password" class="form-control" name="password" >
								  </div>
						 
						  		<button type="submit" class="btn bg-primary text-white col-md-12" >Register</button>
								</form>
						</div>
					</div>
				</div>
			</div>
		 </div>	
</body>
</html>