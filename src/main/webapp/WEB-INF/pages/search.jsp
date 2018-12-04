<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
    <title>Search</title>
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
                    <div>
							<p style="font-size:17px;">Welcome: ${customer.name}</p>
							<p><a href="logout">logout</a></p>
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
                                <li><a href="shop.html">Shop</a></li>
								<li><a href="wish-list.html">Wishlist</a></li>
								<li><a href="cart.html">Cart</a></li>
                                <li><a href="contact-us.html">Contact</a></li>
                                <li><a href="terms">Terms</a></li>
                                <li><a href="address">Address</a></li>
                                <li><a href="orderdetail">Order</a></li>
                                <li><a href="person">Personal Information</a></li>
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
                    <li class="active">SEARCH</li>
                </ol>
            </div>
        </div>
        <!-- reg-form -->
	<div class="section pt-7 pb-7">
			<div class="container">
				<div class="row">
					<div class="col-md-8" style="margin-left: 140px;">
						<table class="table shop-cart">
							<tbody>
								<c:forEach var="search" items="${listProduct}">
								<tr class="cart_item">
									<td class="product-thumbnail">
										<a>
											<img src="${search.img}" alt="">
										</a>
									</td>
									<td>
										<a style="font-size: 19px;">${search.name}</a>
									</td>
									<td>
										<a style="font-size: 18px;">${search.category}</a>
									</td>
									<td>
										<a style="font-size: 18px;">$${search.price}</a>
									</td>
									<td>
										<a href="shop-detail?name=${search.name}&&price=${search.price}&&img=${search.img}&&subimg=${search.subimg}&&id=${search.id}&&category=${search.category}" style="color: Green;font-size: 19px;">Show Detail</a>
									</td>
								</tr>
								</c:forEach>
								<tr>
									<td colspan="5" class="actions" >
										<a class="continue-shopping" href="shop" style="font-size: 18px;"> Continue Shopping</a>	
									</td>
								</tr>
							</tbody>
						</table>
					</div>
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