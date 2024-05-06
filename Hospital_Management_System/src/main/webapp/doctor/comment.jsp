<%@page import="com.entity.Appointment"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDao"%>
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

	<c:if test="${empty doctObj }">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>
	
	<%@ include file="navbar.jsp" %>
	
	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Patient Comment</p>
						
						<%
						int id = Integer.parseInt(request.getParameter("id"));
						AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
						Appointment ap =dao.getAllAppointmentById(id);
						
						
						%>
						
						<form class="row" action="../updateStatus" method="post">
							<div class="col-md-6">
								<lable>Patient Name</lable>
								<input type="text" readonly value="<%=ap.getFullName() %>" class="form-control"> 
							</div>
							
							<div class="col-md-6">
								<lable>Age</lable>
								<input type="text" readonly value="<%=ap.getAge() %>" class="form-control"> 
							</div>
							
							<div class="col-md-6">
								<lable>Mob No</lable>
								<input type="text" readonly value="<%=ap.getPhNo() %>" class="form-control"> 
							</div>
							
							<div class="col-md-6">
								<lable>Diseases</lable>
								<input type="text" readonly value="<%=ap.getDiseases() %>" class="form-control"> 
							</div>
							
							<div class="col-md-12">
								<lable>Comment</lable>
								<textarea required name="comm"  class="form-control" rows="3" cols=""></textarea>
							</div>
							
							<input value="<%=ap.getId()%>" type="hidden" name="id" > 
							
							<input value="<%=ap.getDoctorId()%>" type="hidden" name="did" >
							
							<button class="mt-3 btn btn-primary col-md-6 offset-md-3">Submit</button>
						
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>