<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<title>f2h</title>
<style>
body {
	background-image: url("http://cdn.wallpapersafari.com/2/33/eLN2hs.jpg");
	background-repeat: no-repeat;
	background-size:300%;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h2 style="text-align:center;">Product View</h2>
<div ng-app = "addToCartApp" ng-controller="addToCartCtrl"> 

<h1 style="text-align:center;">${product.name }</h1>
	<div style="margin-left:500px">
<img src="D:\bookImages\/${product.id}.jpg" class="img-responsive"  height="300px" width="300px" />
						<p>Name:${product.name }</p>
							<h4>Price:RS.${product.price}</h4>
							
							<p>Description:${product.description }</p>
							
					
					<c:if test="${empty successlogin}">
					<a href="Login"><button class="btn btn-primary">login to add to cart
											</button></a>
					</c:if>	
					<c:if test="${not empty successlogin}">	
									<button class="btn btn-primary"
										   ng-click="addItemToCart('${product.id}')"><span
												class="glyphicon glyphicon-shopping-cart"></span>Add to cart
											</button>
							</c:if>
				
						
							<p>15 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span>
								 <span class="glyphicon glyphicon-star"></span>
								  <span	class="glyphicon glyphicon-star"></span>
								   <span class="glyphicon glyphicon-star"></span>
									 <span class="glyphicon glyphicon-star"></span>
							</p>
						<p>Index Page of the book</p>
			<img src="http://www.medicalantiques.com/civilwar/Civil_War_medical_book_collection/Book_images/Books/warren%20index%201.jpg" height="300px" width="300px" class="img-responsive" />
					

</div>
</div>
	

<a href="categoryback"><button type="button" class="btn btn-primary" >back to categories</button></a>
 <script>
 

 var cartApp = angular.module ("addToCartApp", []);

 cartApp.controller("addToCartCtrl", function ($scope, $http){
 	
 	 /*
      * retrieveCart method is used to get all cart items at the starting of the application
      */
     $scope.retrieveCart = function (cartId) {
         $scope.cartId = cartId;
         $scope.refreshCartItems(cartId);
     };
     
     
     /*
      * removeItemFromCart method is used to remove a item from the cart
      */
     $scope.removeItemFromCart = function (id) {
         $http.put('http://localhost:9080/f2h/removeItem/'+id).success(function (data) {
             $scope.refreshCartItems();
         });
     };

 	 /*
      * addItemToCart method is used to add items into the cart
      */
     $scope.addItemToCart = function (id) {
         $http.put('http://localhost:9080/f2h/categoryDropdown/productDisplay/usercart/cart/addItem/'+id).success(function (data) {
             alert("Item added to the cart!")
             
         });
     };
    
    
     /*
      * GrandTotalOfItems method is called on cart page to calculate grand total for the added items
      */
     $scope.GrandTotalOfItems = function () {
         var grandTotal=0;

         for (var i=0; i<$scope.cart.cartItems.length; i++) {
             grandTotal+=$scope.cart.cartItems[i].totalPrice;
        }

         return grandTotal;
     };
     /*
 	 * refreshCartItems method is called by others methods in same controller to refresh the cart
 	 */
     $scope.refreshCartItems = function () {
         $http.get('http://localhost:9080/f2h/refreshCart/'+$scope.cartId).success(function (data) {
            $scope.cart=data;
         });
     };
     
     /*
      * clearCartItems method is used to delete all items from the cart
      */
     $scope.clearCartItems = function () {
     	$http['delete']('http://localhost:9080/f2h/clearCartItems/'+$scope.cartId).success(function (data)
     			{$scope.refreshCartItems()
     		});
     };
 });

</script>

 <%@ include file="footer.jsp" %>

</body>
</html>