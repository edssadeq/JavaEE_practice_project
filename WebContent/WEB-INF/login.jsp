<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>LogIn</title>
	<link type="text/css" rel="stylesheet" href='<c:url value="assests/css/bootstrap.min.css"></c:url>'>
	<link type="text/css" rel="stylesheet" href='<c:url value="assests/css/style.css"></c:url>'>
</head>
<body >
	<div class="container-fluid">
		<!-- navbar -->
		<c:import url="/WEB-INF/navBar.jsp"></c:import>
		<!-- form  -->
		<div class="row justify-content-center">
			<div class="col-6">
				<h2 class="h1 text-center title">LogIn</h2>
		
				<form method="post" action="<c:url value="Login"/>">
				  
				  <div class="form-group">
				    <label for="email">Email address</label>
				    <input type="email" class="form-control" id="email"  name="email" aria-describedby="emailHelp">
				  </div>
				  
				  <div class="form-group">
				    <label for="password">Password</label>
				    <input type="password" class="form-control" id="password"  name="password">
				  </div>
			
			
				  <button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="<c:url value="assests/js/jquery-3.3.1.min.js"></c:url>"></script>
	<script type="text/javascript" src="<c:url value="assests/js/bootstrap.bundle.min.js"></c:url>"></script>
</body>
</html>