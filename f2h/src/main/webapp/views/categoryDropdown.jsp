<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>f2h</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <style>
	body {
	background-image: url("http://cdn.wallpapersafari.com/2/33/eLN2hs.jpg");
	background-repeat: repeat;
	background-size:300%;

	
}
.thumbnail{
 background: transparent !important;}

</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">
<c:forEach items="${listCategory}" var="category">
		<ul class="nav navbar-nav">
		
		<li><a href="categoryDropdown/${category.id}">${category.name}</a></li>
			</ul>
			</c:forEach>
	</div>
<h3 style="text-align:center;color:white;" ">Products</h3>
			<div class="container-fluid text-center " >
			
			 <div class="row text-center">
			 <p >
<c:forEach items="${productList}" var="product">
				<div class="col-sm-4" style="font-family:Bell MT;color:white;">
					<div class="thumbnail">
						<img src="D:\bookImages\/${product.id}.jpg" class="img-responsive" style="height:200px; width:60%"/>
						<div class="caption">
							<h4 class="pull-right" style="font-family:Bell MT;color:white;">RS.${product.price}</h4>
							<p style="font-family:Bell MT;color:white;">${product.name }</p>
							<a href="productDisplay/${product.id}"><button class="btn btn-primary">View</button></a>
							</div>
						<div class="ratings">
							<p class="pull-right">15 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span>
								 <span class="glyphicon glyphicon-star"></span>
								  <span	class="glyphicon glyphicon-star"></span>
								   <span class="glyphicon glyphicon-star"></span>
									 <span class="glyphicon glyphicon-star"></span>
							</p>
						</div>
					</div>
				</div>
</c:forEach>
</p>
		</div>
		</div>		

	
</body>
</html>