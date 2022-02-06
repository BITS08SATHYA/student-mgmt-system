<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<!-- Brand -->
		<a class="navbar-brand" href="#">Student Management System</a>

		<!-- Toggler/collapsibe Button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- Navbar links -->
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="/students"> Student Mgmt</a></li>
				
			</ul>
		</div>
	</nav>
	<br/>
	<div class="mb-3">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
				<h1 class="text-center">Create New Student</h1>
				<div class="card-body">
					<form:form action="/students" modelAttribute="student" method="post">
					<div class="form-group">
							
							<form:hidden path="id" classs="form-control" placeholder="Enter Student First Name" />
						</div>
						<div class="form-group">
							<label>Student First Name</label>
							<form:input path="firstName" classs="form-control" placeholder="Enter Student First Name" />
						</div>
						<div class="form-group">
							<label>Student Last Name</label>
							<form:input path="lastName" classs="form-control" placeholder="Enter Student Last Name" />
						</div>
						<div class="form-group">
							<label>Student Email</label>
							<form:input path="email" classs="form-control" placeholder="Enter Student Email" />
						</div>
						<div class="box-footer"> 
							<form:button class="btn btn-primary">Submit</form:button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>