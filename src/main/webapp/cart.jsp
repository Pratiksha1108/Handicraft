<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Kalā - Cart</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
	.navbar
	{
		padding: 5px 60px;
	}
	.navbar-brand
	{
		color: wheat;
		font-size: 50px;
		font-weight: bold;
	}
	.navbar-brand:hover
	{
		color:whitesmoke;
	}
	.nav-item
	{
		margin:0 20px;
		color: wheat;
	}
	.nav-link
	{
		color: wheat;
	}
	.jumbotron
{
	height: 650px;
	background:linear-gradient( rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url(https://img.freepik.com/premium-photo/colorful-vase-with-red-yellow-pattern-yellow-bowl-with-rice-it_948735-151165.jpg?size=626&ext=jpg&ga=GA1.1.386372595.1697846400&semt=ais);
	background-repeat: no-repeat;
	background-size: cover;
	padding: 250px;
	margin: 20px 0;
}
.butt
{
	text-decoration: none;
	border: 2px solid wheat;
	padding:20px 30px;
	margin-top: 40px;
	color: wheat;
	border-radius: 10px;
}
.butt:hover
{
	background-color: wheat;
	color: black;
}
.cart{
    background-color: #fff;
    padding: 4vh 5vh;
    border-bottom-left-radius: 1rem;
    border-top-left-radius: 1rem;
}
@media(max-width:767px){
    .cart{
        padding: 4vh;
        border-bottom-left-radius: unset;
        border-top-right-radius: 1rem;
    }
}
.summary{
    background-color: #ddd;
    border-top-right-radius: 1rem;
    border-bottom-right-radius: 1rem;
    padding: 4vh;
    color: rgb(65, 65, 65);
}
@media(max-width:767px){
    .summary{
    border-top-right-radius: unset;
    border-bottom-left-radius: 1rem;
    }
}
.summary .col-2{
    padding: 0;
}
.summary .col-10
{
    padding: 0;
}.row{
    margin: 0;
}
.title b{
    font-size: 1.5rem;
}
.main{
    margin: 0;
    padding: 2vh 0;
    width: 100%;
}
.col-2, .col{
    padding: 0 1vh;
}
a{
    padding: 0 1vh;
}
.close{
    margin-left: auto;
    font-size: 0.7rem;
}
img{
    width: 3.5rem;
}
.back-to-shop{
    margin-top: 4.5rem;
}
h5{
    margin-top: 4vh;
}
hr{
    margin-top: 1.25rem;
}
form{
    padding: 2vh 0;
}
select{
    border: 1px solid rgba(0, 0, 0, 0.137);
    padding: 1.5vh 1vh;
    margin-bottom: 4vh;
    outline: none;
    width: 100%;
    background-color: rgb(247, 247, 247);
}
input{
    border: 1px solid rgba(0, 0, 0, 0.137);
    padding: 1vh;
    margin-bottom: 4vh;
    outline: none;
    width: 100%;
    background-color: rgb(247, 247, 247);
}
input:focus::-webkit-input-placeholder
{
      color:transparent;
}
.btnn{
    background-color: #000;
    border-color: #000;
    color: white;
    width: 100%;
    font-size: 0.7rem;
    margin-top: 4vh;
    padding: 1vh;
    border-radius: 0;
}
.btnn:focus{
    box-shadow: none;
    outline: none;
    box-shadow: none;
    color: white;
    -webkit-box-shadow: none;
    -webkit-user-select: none;
    transition: none; 
}
.btnn:hover{
    color: white;
}
 #code{
    background-image: linear-gradient(to left, rgba(255, 255, 255, 0.253) , rgba(255, 255, 255, 0.185)), url("https://img.icons8.com/small/16/000000/long-arrow-right.png");
    background-repeat: no-repeat;
    background-position-x: 95%;
    background-position-y: center;
}
a
{
text-decoration:none;
}
</style>

</head>

<body>
	<nav class="navbar navbar-expand-lg" style="background-color: darkslategray;">
  <a class="navbar-brand" href="index.html">कला</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ms-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="product.html">Products</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Blog</a>
      </li>
        <li class="nav-item" style="font-size:25px;">
        <a class="nav-link" href="#"><i class="fa fa-shopping-cart"></i></a>
      </li>
    </ul>
  </div>
</nav>
</body>	
<br><br>
<div class="card shadow" style="margin: auto;max-width: 950px;width: 90%;border-radius: 1rem;border: transparent;">
            <div class="row">
                <div class="col-md-8 cart">
                    <div class="title">
                        <div class="row"><% if(session.getAttribute("uname")!=null){ %>
                            <div class="col"><h5><b><%= session.getAttribute("uname")%>'s Shopping Cart</b></h5></div>
                            <div class="col-2 align-self-center text-right text-muted">1 item(s)</div>
                        </div>
                    </div>   
                   
                <%
                //boolean k;
                Cookie[] cookies=request.getCookies();
         
                   if ("sessionId".equals(cookies[1].getName()))
                   { %>
                  		<div class="row border-top border-bottom">
                        <div class="row main align-items-center">
                            <!-- div class="col-2"><img class="img-fluid" src="https://i.imgur.com/1GrakTl.jpg"></div> -->
                            <div class="col">
                                <div class="row text-muted"><%=cookies[2].getValue().replaceAll("%"," ") %></div>
                                <div class="row"><%=cookies[3].getValue().replaceAll("%"," ") %></div>
                            </div>
                            <div class="col-2">
                                <a href="#">-</a><a href="#" class="border">1</a><a href="#">+</a>
                            </div>
                            <div class="col-2"><%=cookies[4].getValue() %> <a href="<% for(int i=0;i<cookies.length;i++){cookies[i].setMaxAge(0);} %>" class="close">&#10005;</a></div>
                        </div>
                    </div>
                    <% } %>
                    <!--  div class="row">
                        <div class="row main align-items-center">
                            <div class="col-2"><img class="img-fluid" src="https://i.imgur.com/ba3tvGm.jpg"></div>
                            <div class="col">
                                <div class="row text-muted">Shirt</div>
                                <div class="row">Cotton T-shirt</div>
                            </div>
                            <div class="col">
                                <a href="#">-</a><a href="#" class="border">1</a><a href="#">+</a>
                            </div>
                            <div class="col">&euro; 44.00 <span class="close">&#10005;</span></div>
                        </div>
                    </div>
                    <div class="row border-top border-bottom">
                        <div class="row main align-items-center">
                            <div class="col-2"><img class="img-fluid" src="https://i.imgur.com/pHQ3xT3.jpg"></div>
                            <div class="col">
                                <div class="row text-muted">Shirt</div>
                                <div class="row">Cotton T-shirt</div>
                            </div>
                            <div class="col">
                                <a href="#">-</a><a href="#" class="border">1</a><a href="#">+</a>
                            </div>
                            <div class="col">&rupees; 44.00 <span class="close">&#10005;</span></div>
                        </div>
                    </div>-->
                    <div class="back-to-shop"><a href="product.html">&leftarrow;</a><span class="text-muted">Back to shop</span></div>
                </div>
                <div class="col-md-4 summary">
                    <div><h5><b>Summary</b></h5></div>
                    <hr>
                    <div class="row">
                        <div class="col" style="padding-left:0;">ITEMS 1</div>
                        <div class="col text-right">&euro; 132.00</div>
                    </div>
                    <form>
                        <p>SHIPPING</p>
                        <select><option class="text-muted">Standard-Delivery- &euro;5.00</option></select>
                        <p>GIVE CODE</p>
                        <input id="code" placeholder="Enter your code">
                    </form>
                    <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                        <div class="col">TOTAL PRICE</div>
                        <div class="col text-right">&euro; 137.00</div>
                    </div>
                    <button class="btnn">CHECKOUT</button>
                </div>
            </div>
            
        </div>

</body><br><br>

<% } 
    	else
                        	out.println("<script>alert('Please login first')</script>");
%>
<!--
<footer class=" text-center" style="background-color:darkslategray;color:wheat;">
  <div class="container p-4 pb-0">
    <h6>Follow us:</h6><p>
    <section class="mb-4">
    
      <a class="btn btn-outline-light btn-floating m-2" href="https://www.facebook.com/" role="button">
        <i class="fa fa-facebook-f"></i></a>

      <a class="btn btn-outline-light btn-floating m-2" href="https://twitter.com/" role="button">
        <i class="fa fa-twitter"></i></a>

      <a class="btn btn-outline-light btn-floating m-2" href="https://www.google.com/" role="button">
        <i class="fa fa-google"></i></a>

      <a class="btn btn-outline-light btn-floating m-2" href="https://www.instagram.com/" role="button">
        <i class="fa fa-instagram"></i></a>
    </section>
  </div>

  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    © 2023
    <a style="color: wheat;" href="index.php">Kalā - Online Handicraft Store</a>
  </div>

</footer> -->

</html>