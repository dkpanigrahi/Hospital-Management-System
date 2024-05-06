<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp" %>
<style type="text/css">
.paint-card{
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	
	<%@include file="navbar.jsp" %>
	
	<c:if test="${empty adminObj }">
		<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>
	
	<div class="container p-5">
	<p class="text-center fs-3">Admin Dashboard</p>
		
								<c:if test="${not empty succMsg }">
									<p class="text-center text-success">${succMsg }</p>
									<c:remove var="succMsg"/>
								</c:if>
					
								<c:if test="${not empty errorMsg }">
									<p class="text-center text-danger fs-6">${errorMsg }</p>
									<c:remove var="errorMsg"/>
								</c:if>
	<%
	DoctorDao dao = new DoctorDao(DBConnect.getConn());
	%>
	
		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-primary">
					<i class="fa-solid fa-user-doctor fa-3x"></i>
					<p class="fs-4 text-center">
						Doctor<br><%=dao.countDoctor() %>
					</p>
					</div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-primary">
					<i class="fa-solid fa-user fa-3x"></i>
					<p class="fs-4 text-center">
						User<br><%=dao.countUser() %>
					</p>
					</div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-primary">
					<i class="fa-solid fa-calendar-days fa-3x"></i>
					<p class="fs-4 text-center">
						Total Appointment<br><%=dao.countAppointment() %>
					</p>
					</div>
				</div>
			</div>
			
			<div class="col-md-4 mt-2" data-bs-toggle="modal" data-bs-target="#exampleModal">
				<div class="card paint-card">
					<div class="card-body text-center text-primary">
					<i class="fa-solid fa-calendar-days fa-3x"></i>
					<p class="fs-4 text-center">
						Specialist<br><%=dao.countSpecialist() %>
					</p>
					</div>
				</div>
			</div>
		</div>
	</div>

			<!-- Button trigger modal -->
			
			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">Add Specialist</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			      	<form action="../addSpecialist" method="post">
			      		
			      		<div class="form-group">
			      			<lable>Enter Specialist Name</lable><input type="text"
			      				name="specName" class="form-control">
			      		
			      		</div>
			      		<div class="text-center mt-3">
			      			<button type="submit" class="btn btn-primary">Add</button>
			      		</div>
			      	
			      	
			      	</form>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
			        
			      </div>
			    </div>
			  </div>
			</div>





</body>
</html>