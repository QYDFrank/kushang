<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
    <head>
    <title>Add Product</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="N-Air Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<meta charset utf="8">
		<!--fonts-->
		<link href='http://fonts.useso.com/css?family=Fredoka+One' rel='stylesheet' type='text/css'>
		
		<!--fonts-->
		<!--bootstrap-->
			 <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<!--coustom css-->
			<link href="css/style.css" rel="stylesheet" type="text/css"/>
        <!--shop-kart-js-->
        <script src="js/simpleCart.min.js"></script>
		<!--default-js-->
			<script src="js/jquery-2.1.4.min.js"></script>
		<!--bootstrap-js-->
			<script src="js/bootstrap.min.js"></script>
		<!--script-->
         <!-- FlexSlider -->
            <script src="js/imagezoom.js"></script>
              <script defer src="js/jquery.flexslider.js"></script>
            <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

            <script>
            // Can also be used with $(document).ready()
            $(window).load(function() {
              $('.flexslider').flexslider({
                animation: "slide",
                controlNav: "thumbnails"
              });
            });
            </script>
        <!-- //FlexSlider-->
    </head>
    <body>
        <div class="header">
            <div class="container">
                <div class="header-top">
                    <div class="logo">
                        <a href="index.html">Ecommerce</a>
                    </div>
                    <div class="login-bars">
                        <a class="btn btn-default log-bar" href="register.html" role="button">Sign up</a>
                        <a class="btn btn-default log-bar" href="signup.html" role="button">Login</a>	
                    </div>
        <div class="clearfix"></div>
                </div>
                <!---menu-----bar--->
                <div class="header-botom">
                    <div class="content white">
                    <nav class="navbar navbar-default nav-menu" role="navigation">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <!--/.navbar-header-->

                        <div class="collapse navbar-collapse collapse-pdng" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav nav-font">
                                <li><a href="admin.html">Admin</a></li>
								<li><a href="customer.html">Customer</a></li>
								<li><a href="product.html">Product</a></li>
                                <li><a href="message">Message</a></li>
                                <li><a href="order">Order</a></li>
                                <div class="clearfix"></div>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <!--/.navbar-collapse-->
                        <div class="clearfix"></div>
                    </nav>
                    <!--/.navbar-->   
                        <div class="clearfix"></div>
                    </div>
                    <!--/.content--->
                </div>
                    <!--header-bottom-->
            </div>
        </div>
        <div class="head-bread">
            <div class="container">
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li class="active">ADD/EDIT PRODUCT</li>
                </ol>
            </div>
        </div>
        <!-- reg-form -->
	<div class="reg-form">
		<div class="container">
			<div class="reg">
				<h3>Add/Edit Product</h3>
				<p>Welcome, please enter the following details to continue.</p>
				
				 <form:form action="saveProduct" method="post" modelAttribute="product">
				 <form:hidden path="id"/>
					<ul>
						<li class="text-info">Product Name: </li>
						<li><form:input type="text" path="name" placeholder="product" /></li>
					</ul>
					<ul>
						<li class="text-info">Image: </li>
						<li><form:input type="text" path="img" placeholder="image" /></li>
					 </ul>				 
					<ul>
						<li class="text-info">Sub image: </li>
						<li><form:input type="text" path="subimg" placeholder="subimage" /></li>
					</ul>
					<ul>
						<li class="text-info">Price: </li>
						<li><form:input type="text" path="price" placeholder="price" /></li>
					</ul>
					<ul>
						<li class="text-info">Number: </li>
						<li><form:input type="text" path="num" placeholder="number" /></li>
					</ul>
					<ul>
						<li class="text-info">Information: </li>
						<li><form:input type="text" path="info" placeholder="infomation" /></li>
					</ul>
					<ul>
						<li class="text-info">Category: </li>
						<li><form:input type="text" path="category" placeholder="category" /></li>
					</ul>	
					<ul>
						<li class="text-info">Createdate: </li>
						<li><form:input type="text" readonly="readonly" path="createdate" placeholder="createdate" /></li>
					</ul>					
					<input type="submit" name="submit" value="OK">
					<p class="click">By clicking this button, you are agree to my  <a href="terms">Policy Terms and Conditions.</a></p> 
				</form:form>
			</div>
		</div>
	</div>
        <div class="footer-grid">
            <div class="container">
        <div class="clearfix"></div>
            </div>
            <div class="copy-rt">
                <div class="container">
            <p>Ecommerce &copy; 2018.Welcome to our shopping website.</p>
                </div>
            </div>
        </div>
    </body>
</html>