<%@page import="com.db.DBConnect"%>
<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.SpecialistDao"%>
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

	<%@include file="navbar.jsp" %>
	
		<div class="container p-3">
		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<p class="text-center fs-3">Change Password</p>
								
								<c:if test="${not empty succMsg }">
									<p class="text-center text-success">${succMsg }</p>
									<c:remove var="succMsg"/>
								</c:if>
					
								<c:if test="${not empty errorMsg }">
									<p class="text-center text-danger fs-6">${errorMsg }</p>
									<c:remove var="errorMsg"/>
								</c:if>
					
					<div class="card-body">
						<form action="../doctChangePassword" method="post">
							<div class="mb-3">
								<label>Enter New PassWord</label>
								<input type="text" name="newpassword" class="form-control" required>
							</div>
						
							<div class="mb-3">
									<label>Enter Old PassWord</label>
									<input type="text" name="oldpassword" class="form-control" required>
							</div>
							
							<input type="hidden" name="uid" value="${ doctObj.id}">
							
							<button class="btn btn-primary col-md-12">Change Password</button>
						
						</form>
					</div>
				</div>
			</div>
			
			<div class="col-md-5 offset-md-2">
				<div class="card paint-card">
				<p class="text-center fs-2">Edit Profile</p>
				
					<c:if test="${not empty succMsgd }">
						<p class="text-center text-success">${succMsgd }</p>
						<c:remove var="succMsgd"/>
					</c:if>
					
					<c:if test="${not empty errorMsgd }">
						<p class="text-center text-danger fs-6">${errorMsgd }</p>
						<c:remove var="errorMsgd"/>
					</c:if>
				
				
					<div class="card-body">
						<form action="../doctorUpdateProfile" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text" 
									required name="fullname" class="form-control" value="${doctObj.fullName }">
							</div>
							
							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date" 
									required name="dob" class="form-control" value="${doctObj.dob }">
							</div>
							
							<div class="mb-3">
								<label class="form-label">Qualification</label> <input type="text" 
									required name="qualification" class="form-control" value="${doctObj.qualification }">
							</div>
							
							<div class="mb-3">
								<label class="form-label">Specialist</label> 
								<select name="spec" required class="form-control">
									<option>${doctObj.specialist }</option>
									
									<% SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
										List<Specalist> list = dao.getAllSpecialist();
										for(Specalist s:list)
										{%>
											<option><%=s.getSpecialistName()%></option>
										<%}
									%>
									
								</select>
							</div>
							
							<div class="mb-3">
								<label class="form-label">Email</label> <input type="email" 
									required name="email" class="form-control" readonly value="${doctObj.email }">
							</div>
							
							<div class="mb-3">
								<label class="form-label">Mob No</label> <input type="text" 
									required name="mobno" class="form-control" value="${doctObj.mobNo }">
							</div>
							
							<input type="hidden" name="id" value="${ doctObj.id}">
							
							<button type="submit" class="btn btn-primary">Update</button>
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>