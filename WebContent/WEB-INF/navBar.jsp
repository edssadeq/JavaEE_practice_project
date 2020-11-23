<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NavBar</title>
</head>
<body>
		<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
		  <a class="navbar-brand" href="#">APP1v1.0</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="<c:url value="Registration"/>">Register</a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link" href="<c:url value="Login"/>">LogIn</a>
		      </li>
		    </ul>
		  </div>
		</nav>

</body>
</html>