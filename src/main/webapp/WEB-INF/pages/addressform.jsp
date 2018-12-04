<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
    <head>
    <title>Edit Address</title>
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
                                <li><a href="index.html">Home</a></li>
                                <li><a href="shop.html">Shop</a></li>
								<li><a href="wish-list.html">Wish List</a></li>
								<li><a href="cart.html">Cart</a></li>
                                <li><a href="contact-us.html">Contact</a></li>
                                <li><a href="terms">Terms</a></li>
                                <li><a href="orderdetail">Order</a></li>
                                <li><a href="address">Personal Information</a></li>
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
                    <li><a href="index.html">HOME</a></li>
                    <li class="active">Address</li>
                </ol>
            </div>
        </div>
        <div class="section pt-10 pb-10">
			<div class="container" align="center">
				<div class="row">
					<div class="col-sm-12">
						<form:form action="saveAddress" method="post" modelAttribute="address">
						<table id="tbl">
							<tr>
								<td colspan="2" style="text-align:center; font-size:26px; font-family:Arial, Helvetica, sans-serif">New/Edit Address</td>
							</tr>
							<form:hidden path="id"/>
							<tr>
								<td><img id="smallimg" alt="" src="images/user.png"></td>
								<td><form:input type="text" path="cname" placeholder="name" /></td>
							</tr>
							<tr>
								<td><img id="smallimg" alt="" src="images/city.png"></td>
								<td><form:input type="text" path="city" placeholder="city" /></td>
							</tr>
							<tr>
								<td><img id="smallimg" alt="" src="images/address.png"></td>
								<td><form:input type="text" path="addres" placeholder="address" /></td>
							</tr>
							<tr>
								<td><img id="smallimg" alt="" src="images/pcode.png"></td>
								<td><form:input type="text" path="pcode" placeholder="postcode" /></td>
							</tr>
							<tr>
								<td><img id="smallimg" alt="" src="images/phone.png"></td>
								<td><form:input type="text" path="tel" placeholder="phone" /></td>
							</tr>
							<tr>
								<td><img id="smallimg" alt="" src="images/email.png"></td>
								<td><form:input type="text" path="email" placeholder="email" /></td>
							</tr>
							<tr>
								<td><img id="smallimg" alt="" src="images/date.png"></td>
								<td><form:input type="text" readonly="readonly" path="createdate" placeholder="createdate" /></td>
							</tr>
							<form:hidden path="flag"/>
							<tr align="center">
								<td colspan="2"><input style="border:0; border-radius:6px; background-color:rgba(155,155,155,0.7);" type="submit" name="submit" value="OK" /></td>
							</tr>
						</table>
						</form:form>
					</div>
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