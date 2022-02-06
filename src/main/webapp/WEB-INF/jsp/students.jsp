<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management System</title>
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
				<li class="nav-item"><a class="nav-link" href="/students">Students Mgmt</a></li>
				
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<h1>List Students</h1>
		</div>
		<div class="row">
			<div class="col-lg-3">
				<a href="/students/new" class="btn btn-primary btn-sm mb-3">Add
					Student</a>
			</div>
		</div>
		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${students}" var="student">
					<tr>
						<td>${student.firstName }</td>
						<td>${student.lastName }</td>
						<td>${student.email }</td>
						<td><a href="/students/updateStudent?userId=${student.id}">Update</a>
							<a href="/students/deleteStudent?userId=${student.id}" onclick="if(!(confirm('Are you sure to delete this student?'))) return false">Delete</a>
						</td>
						
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>