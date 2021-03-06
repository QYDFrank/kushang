<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
    <title>Order Detail</title>
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
                                <li><a href="address">Address</a></li>
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
                    <li><a href="index.html">HOME</a></li>
                    <li class="active">ORDER</li>
                </ol>
            </div>
        </div>
        <div class="container-wrapper">
    	<div class="container">
				<h3 style="font-size:26px;margin-bottom: 40px;"align="center">
					<a>This is your order record:</a>
				</h3>
		</div>
		</div>
				
       <div style="height:600px;margin-top: 10px;">
			<div style="width:1000px;height:500px;float:right;margin-right: 200px;">
				<hr style="height:2px;border:none;border-top:2px solid gray;">
				<table style="width:1000px; font-size: 18px;margin-left: 16px;">
					<tr style="text-align: center;height:36px;">
						<th>SR NO</th>
						<th>Name</th>
						<th>Product</th>
						<th>Total</th>
						<th>Message</th>
						<th>Status</th>
					</tr>
					<%int srno=1; %>
					<c:forEach var="order" items="${data.listOrder}">
						<tr style="font-size: 18px;height:36px;">
							<td><%=srno %></td>
							<td>${order.cname}</td>
							<td>${order.pname}</td>
							<td>${order.total}</td>
							<td>${order.message}</td>
							<c:if test="${order.flag==4}">
								<td><a style="color:green;">Complete</a></td>
							</c:if>
							<c:if test="${order.flag==3}">
								<td><a style="color:green;">Refuse</a></td>
							</c:if>
							<c:if test="${order.flag==2}">
								<td><a style="color:green;">Waiting</a></td>
							</c:if>
							<c:if test="${order.flag==1}">
								<td><a href="pay?total=${order.total}&&id=${order.id}" style="color:green;">Pay</a></td>
							</c:if>
							
						</tr>
			       		<%srno++;%>
					</c:forEach>
				</table>
			<hr style="height:2px;border:none;border-top:2px solid gray;">
			
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