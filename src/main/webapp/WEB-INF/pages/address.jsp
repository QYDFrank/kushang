<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
    <title>Address</title>
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
                                <li><a href="index.html">Home</a></li>
                                <li><a href="shop.html">Shop</a></li>
								<li><a href="wish-list.html">Wish List</a></li>
								<li><a href="cart.html">Cart</a></li>
                                <li><a href="contact-us.html">Contact</a></li>
                                <li><a href="terms">Terms</a></li>
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
                    <li><a href="index.html">HOME</a></li>
                    <li class="active">Address</li>
                </ol>
            </div>
        </div>
        <div class="container-wrapper">
    	<div class="container">
        		<h3 style="font-size:26px;margin-bottom: 40px;"align="center">
					<a>This is your address information</a>
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
						<th>City</th>
						<th>Address</th>
						<th>PCode</th>
						<th>Tel</th>
						<th>Email</th>
						<th>Edit</th>
						<th>Delete</th>
						<th>Default Address</th>
					</tr>
					<%int srno=1; %>
					<c:forEach var="address" items="${listAddress}">
						<tr style="font-size: 18px;height:36px;">
							<td><%=srno %></td>
							<td>${address.cname}</td>
							<td>${address.city}</td>
							<td>${address.addres}</td>
							<td>${address.pcode}</td>
							<td>${address.tel}</td>
							<td>${address.email}</td>
							<td><a href="editAddress?id=${address.id}" style="color:green;">Edit</a></td>
		
							<td><a href="deleteAddress?id=${address.id}" style="color:green;">Delete</a></td>
		
					        <c:if test="${address.flag==2}">
								<td><a href="blockAddress?id=${address.id}" style="color:green;">Yes</a></td>
							</c:if>
							<c:if test="${address.flag==1}">
								<td><a href="activeAddress?id=${address.id}" style="color:green;">No</a></td>
							</c:if>
						</tr>
			       		<%srno++;%>
					</c:forEach>
				</table>
			<hr style="height:2px;border:none;border-top:2px solid gray;">
			<div style="margin-left: 840px;margin-top: 20px;">
				<a href="addAddress" style="color:green;font-size: 20px;">Add a new address</a>
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