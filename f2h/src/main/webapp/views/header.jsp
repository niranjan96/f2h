<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<title>Welcome to f2h</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
h1, h5 {
	text-align:center;
}
.navbar{
 background: transparent !important;}

</style>
</head>
<body>
	<header>
	<h1 style="font-family:Bell MT;color:white;">f2h</h1>
	<h5 style="font-family:Bell MT;color:white;">(Konwledge And Fun ONline)</h5>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<ul class="nav navbar-nav">
			<li><a href="index" style="color:white;"><span
					class="glyphicon glyphicon-home"></span>Home
			</a></li>
			<li><a href="Aboutus" style="color:white;">About</a></li>
		<li><a href="categoryDropdown" style="color:white;">Category</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<c:if test="${not empty successlogin}">
				<li><a href="Cart" style="color:white;">my cart <span
						class="glyphicon glyphicon-shopping-cart"></span></a></li>
				<li><a href="Logout" style="color:white;">Logout <span
						class="glyphicon glyphicon-log-out"></span></a></li>
			</c:if>
			<c:if test="${empty successlogin}">
				<li><a href="Register" style="color:white;">Signup <span
						class="glyphicon glyphicon-user"></span></a></li>
				<li><a href="Login" style="color:white;">Login <span
						class="glyphicon glyphicon-log-in"></span></a></li>
			</c:if>
		</ul>
	</div>
	</nav> 
</header>
</body>
</html>
