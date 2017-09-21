<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="UTF-8">
<title>Carousel</title>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<style>

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	margin: auto;
}
.item{
    background: white;    
    text-align: center;
    height: 500px !important;
}

.carousel{
    margin-top: 20px;
}

.bs-example{
	margin: 20px;
}

.carousel.carousel-fade .item {
  opacity:0;
  filter: alpha(opacity=0); /* ie fix */
}

.carousel.carousel-fade .active.item {
    opacity:1;
    filter: alpha(opacity=100); /* ie fix */
}
div.description
  {
  width:45%;
  margin:10px;
  padding:10px;
  padding-bottom:275px;
  border:2px solid black;
  float:left;
  }
  div.video
  {
  padding:10px;
  }
</style>
</head>
<body>
<div class="bs-example">
    <div id="myCarousel" class="carousel slide" data-interval="6500" data-ride="carousel">
    	<!-- Carousel indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>   
       <!-- Carousel items -->
        <div class="carousel-inner">
            <div class="active item carousel-fade">
                <img src="https://mulieresaequanimitas.files.wordpress.com/2016/03/books.jpg" alt="books" width="1500" height="175">
                <div class="carousel-caption">
                  <h3>f2h</h3>
                  <p>Knowledge And Fun ONline</p>
                </div>
            </div>
            <div class="item carousel-fade">
                <img src="http://www.edushine.in/wp-content/uploads/2014/12/Higher-Education.jpg" alt="books" width="1500" height="175">
                <div class="carousel-caption">
                  <h3>Knowledge</h3>
                  <p>Educational books</p>
                </div>
            </div>
            <div class="item carousel-fade">
				<img src="http://www.philareads.org/wp-content/uploads/2015/09/kids-Reading-Books-group-1.jpg" alt="books" width="1500" height="175">
                <div class="carousel-caption">
                  <h3>kids</h3>
                  <p>Story and other kids books</p>
                </div>
            </div>
			<div class="item carousel-fade">
                <img src="https://images5.alphacoders.com/403/403408.jpg" alt="books" width="1500" height="175">
                <div class="carousel-caption">
                  <h3>Fiction</h3>
                  <p>All imaginative books</p>
                </div>
            </div>
        </div>
        <!-- Carousel nav -->
        <a class="carousel-control left" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="carousel-control right" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
</div>
<br>
<br>
<div class="w3-row w3-padding-64" id="about">
    <div class="w3-col m6 w3-padding-large w3-hide-small">
     <iframe  width="550" height="300" 
 src="https://www.youtube.com/embed/Feww-tndO04"> 
</iframe>
    </div>

    <div class="w3-col m6 w3-padding-large">
      <h1 class="w3-center" style="font-family:Bell MTBell MT;color:white;">f2h</h1><br>
      
      <p class="w3-large"style="font-family:Bell MT;color:white;">The abbrivation f2h is Knowledge And Fun ONline. It is one of the website where we can find all kind of books from childern to elders.
This website also allows you to read the preview and some summary of the books for two reasons to create interest in a person to buy the book 
as well as to make a person choose what he wants.</p>
      
    </div>
  </div>
<br>
<br>

</body>
</html>                                		