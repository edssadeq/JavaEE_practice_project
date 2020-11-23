<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Registration</title>
	<link type="text/css" rel="stylesheet" href='<c:url value="assests/css/bootstrap.min.css"></c:url>'>
	<link type="text/css" rel="stylesheet" href='<c:url value="assests/css/style.css"></c:url>'>
</head>
<body >
	<div class="container-fluid">
		<!-- navbar -->
		<c:import url="/WEB-INF/navBar.jsp"></c:import>
		<div class="row justify-content-center">
			<div class="col-6">
				<!-- form  -->
				<h2 class="h1 text-center title">Registration</h2>
				
				<c:choose>
					<c:when test="${ empty errors }">
						<div class="alertCustom alert alert-success text-center h4" role="alert">
						  <c:out value="${ result }"></c:out>
						</div>
					</c:when>
					<c:otherwise>
						<div class="alertCustom alert alert-danger text-center h4" role="alert">
						  <c:out value="${ result }"></c:out>
						</div>
					</c:otherwise>
				</c:choose>
				
				<form method="post" action="<c:url value="Registration"/>">
					<div class="form-group">
				    <label for=name>Fall Name</label>
				    <input type="text" class="form-control" id="name" name="name" value="<c:out value="${user.name}"/>">
				    <small class="error"><c:out value="${ errors['name'] }"/></small>
				  </div>
				  
				  <div class="form-group">
				    <label for="email">Email address</label>
				    <input type="email" class="form-control" id="email"  name="email" aria-describedby="emailHelp" value="<c:out value="${user.email}"/>">
				    <small class="error"><c:out value="${ errors['email'] }"/></small>
				  </div>
				  
				  <div class="form-group">
				    <label for="password">Password</label>
				    <input type="password" class="form-control" id="password"  name="password">
				  </div>
				  
				  <div class="form-group">
				    <label for="passwordConf">Confirm Password</label>
				    <input type="password" class="form-control" id="passwordConf"  name="passwordConf">
				    <small class="error"><c:out value="${ errors['passwordConf'] }"/></small>
				  </div>
			
				  <button type="submit" class="btn btn-primary">Submit</button>
				</form>
				
			</div>
		</div>
	</div>
	<script type="text/javascript" src="<c:url value="assests/js/jquery-3.3.1.min.js"></c:url>"></script>
	<script type="text/javascript" src="<c:url value="assests/js/bootstrap.bundle.min.js"></c:url>"></script>
	<script type="text/javascript" src="<c:url value="assests/js/main.js"></c:url>"></script>
</body>
</html>