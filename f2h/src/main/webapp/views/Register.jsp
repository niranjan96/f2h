<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="utf-8">
<title>f2h</title>
<style>
	body {
	background-image: url("http://downloadwallpaper.org/wp-content/uploads/2016/09/books-wallpaper4.jpg");
	background-repeat: no-repeat;
	background-width: 100%;
	background-height: 100%;
	}
</style>
<script>
function check()
{
	var password=new String(document.myform.password.value);
	var pass1=new String(document.myform.pass1.value);



if(!(password.match(pass1)))
{
	
	alert("Re-enter the correct password ");
        document.myform.password.value="";password="";
	document.myform.pass1.value="";pass1="";
}

}

</script>
</head>
<body>
	<jsp:include page="/views/header.jsp"></jsp:include>
	<div style="margin-left:800px">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-6">
                            

                     <form id="myform" action="Success" method="post" onsubmit="check()" role="form">
                            
                            <div class="form-group">
                                    <label for="userid" style="color:black;">UserName:</label>
                                    <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username"  >
                                        </div>
                                <div class="form-group">
                                    <label for="userid" style="color:black;">First Name:</label>
                                    <input type="text" name="Name" id="fname" tabindex="1" class="form-control" placeholder="Firstname"  >
                                        </div>
                                <div class="form-group">
                                    <label for="userid" style="color:black;">E Mail:</label>
                                    <input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="Email Address" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
                                        </div>

                                <div class="form-group">
                                    <label for="userid" style="color:black;">MobileNo:</label>
                                    <input type="number" name="Phone" id="mobile" tabindex="2" class="form-control" placeholder="Mobile" pattern="[9|7|8][0-9]{9}">
                                        </div>

                                <div class="form-group">
                                    <label for="userid" style="color:black;">Address:</label>
                                    <textarea type="text" name="address" id="address" tabindex="2" class="form-control" placeholder="Address"></textarea>
                                     
                                </div>
                                <div class="form-group">
                                    <label for="userid" style="color:black;">Password:</label>
                                    <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
                                         </div>
                                <div class="form-group">
                                    <label for="userid" style="color:black;">Confirm Password:</label>
                                    <input type="password" name="pass" id="pass1" tabindex="2" class="form-control" placeholder="Confirm Password">
                                    
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <table >
                                        <tr>
                                        
                                        <td ><input type="submit" value="Register" /></td>
                                        </tr>
                                        </table>
                           </div>
                           </div>
                           </form>
                           </div>
                           </div>
                           </div>
                           </div>
	</body>
	</html>