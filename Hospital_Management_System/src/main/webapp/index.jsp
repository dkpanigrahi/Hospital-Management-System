<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index page</title>
<%@include file="component/allcss.jsp" %>
<style type="text/css">
.paint-card{
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp" %>
		<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
		  <div class="carousel-indicators">
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
		  </div>
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img src="image/doctor1.jpg" class="d-block w-100" alt="..." height="450px">
		    </div>
		    <div class="carousel-item">
		      <img src="image/doctor4.jpg" class="d-block w-100" alt="..." height="450px">
		    </div>
		    <div class="carousel-item">
		      <img src="image/doctor5.jpg" class="d-block w-100" alt="..." height="450px">
		    </div>
		  </div>
		  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Previous</span>
		  </button>
		  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Next</span>
		  </button>
		</div>
		
		<div class="container" p-5>
			<p class="text-center fs-2 p-3">Key Features of our Hospital</p>
			
			<div class="row">
					<div class="col-md-8 p-5">
						<div class="row">
							<div class="col-md-6">
								<div class="card paint-card">
									<div class="card-body">
										<p class="fs-5">100% Safety</p>
										<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="card paint-card">
									<div class="card-body">
										<p class="fs-5">Clean Environment</p>
										<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
									</div>
								</div>
							</div>
							<div class="col-md-6 mt-2">
								<div class="card paint-card">
									<div class="card-body">
										<p class="fs-5">Friendly Doctor</p>
										<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
									</div>
								</div>
							</div>
							<div class="col-md-6 mt-2">
								<div class="card paint-card">
									<div class="card-body">
										<p class="fs-5">Medical Researcher</p>
										<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-md-4">
						<img alt="" src="image/doctor6.png" height="350px">
					</div>
		</div>
	</div>
<hr>
	<div class="container p-2">
			<p class="text-center fs-2">Our Team</p>
			
				<div class="row">
							<div class="col-md-3">
								<div class="card paint-card">
									<div class="card-body text-center">
										<img alt="" src="image/idoctor1.jpg" width="250px" height="300px">
										<p class="fw-bold fs-5">Digbijaya Patil</p>
										<p class="fs-7">(CEO & CHAIRMAN)</p>
									</div>
								</div>
							</div>
							
							<div class="col-md-3">
								<div class="card paint-card">
									<div class="card-body text-center">
										<img alt="" src="image/i3doctor.png" width="250px" height="300px">
										<p class="fw-bold fs-5">Dr Prasanta Jain</p>
										<p class="fs-7">(Cheif Doctor)</p>
									</div>
								</div>
							</div>
							
							<div class="col-md-3">
								<div class="card paint-card">
									<div class="card-body text-center">
										<img alt="" src="image/idoctor4.png" width="250px" height="300px">
										<p class="fw-bold fs-5">Dr Surya Gupta</p>
										<p class="fs-7">(Cheif Doctor)</p>
									</div>
								</div>
							</div>
							
							<div class="col-md-3">
								<div class="card paint-card">
									<div class="card-body text-center">
										<img alt="" src="image/idoctor6.jpg" width="250px" height="300px">
										<p class="fw-bold fs-5">Dr Anjali Singh</p>
										<p class="fs-7">(Cheif Doctor)</p>
									</div>
								</div>
							</div>
			</div>
		</div>
		
<%@include file="component/footer.jsp" %>
		
</body>
</html>