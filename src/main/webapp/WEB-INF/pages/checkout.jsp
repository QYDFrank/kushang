<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
    <head>
    <title>Checkout</title>
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
                                <li><a href="term">Terms</a></li>
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
                    <li><a href="index.html">HOME</a></li>
                    <li class="active">CHECKOUT</li>
                </ol>
            </div>
        </div>
        <div class="section section-checkout pt-7 pb-7">
			<div>
				<div style="width:1280px;margin-left: 240px;">
					<div style="width:600px;">
					 <c:form action="placeorder" method="post" modelAttribute="order">
					<div class="col-md-12">
						<h3 class="mt-3">Your order</h3>
						<div class="order-review">
							<table class="checkout-review-order-table">
								<thead>
									<tr>
										<th class="product-name">Product</th>
										<th class="product-total">Total</th>
									</tr>
								</thead>
								<tbody>
									<s:forEach var="product" items="${data.listCart}">
									<tr>
										<td class="product-name">
											${product.pname}
										</td>
										<td class="product-total">
											$${product.price}
										</td>
									</tr>
									</s:forEach>
								</tbody>
								<tfoot>
									<tr>
										<%String totalprice=(String)session.getAttribute("total");%>
										<th>Subtotal</th>
										<td>$<%=totalprice %></td>
									</tr>
									<tr class="order-total">
										<th>Total</th>
										<td><strong>$<%=totalprice %></strong></td>
									</tr>
									<tr class="order-total">
										<th>Message</th>
										<td><c:textarea path="message" cols="30" rows="3" placeholder="Notes about your order."></c:textarea></td>
									</tr>
									<tr>
										<td>
											<div class="checkout-payment">
												<div>
													<button class="btn">Order Now</button>
												</div>
											</div>
										</td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
					</c:form>
					</div>
					<div class="col-md-6" style="width:500px;margin-top: 30px;">
						<h3>Check your address here:</h3>
						<form>
							<div class="row">
								<div class="col-md-6">
									<label>Name <span class="required">*</span></label>
									<div class="form-wrap">
										<input type="text" name="your-firstname" readonly="readonly" value="${address.cname}" size="40" />
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<label> Town/City<span class="required">*</span></label>
									<div class="form-wrap">
										<input type="text" name="your-address" readonly="readonly" value="${address.city}" size="40" />
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<label>Address<span class="required">*</span></label>
									<div class="form-wrap">
										<input type="text" name="your-postal" readonly="readonly" value="${address.addres}" size="40" />
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Postcode / ZIP</label>
									<div class="form-wrap">
										<input type="text" name="your-postal" readonly="readonly" value="${address.pcode}" size="40" />
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Phone<span class="required">*</span></label>
									<div class="form-wrap">
										<input type="text" name="your-phone" readonly="readonly" value="${address.tel}" size="40" />
									</div>
								</div>
								</div>
							<div class="row">
								<div class="col-md-6">
									<label>Email <span class="required">*</span></label>
									<div class="form-wrap">
										<input type="email" name="your-email" readonly="readonly" value="${address.email}" size="40" />
									</div>
								</div>
								</div>
								<br><br>
								<div class="checkout-payment">
									<div>
										<a href="address">Go to change your address</a>
									</div>
								</div>
						</form>
					</div>
					
				</div>
				
				<div class="row">
					<div class="col-md-12">
						
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