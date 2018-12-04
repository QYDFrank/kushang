<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
    <script type="text/javascript">
function jia(btn) {
    var jia = btn.previousElementSibling;
    var tex = btn.parentNode.nextElementSibling;
    var danjia = btn.parentNode.parentNode.getElementsByTagName("td")[3].innerHTML;
    jia.value++;
    tex.innerHTML = danjia * jia.value;
    sum();
}

function jian(btn) {
    var jian = btn.nextElementSibling;
    var tex = btn.parentNode.nextElementSibling;
    var danjia = btn.parentNode.parentNode.getElementsByTagName("td")[3].innerHTML;
    if (jian.value > 1) {
        jian.value--;
    } else {
        jian.value = 1;
    }
    tex.innerHTML = danjia * jian.value;
    sum();
}

function sum() {
    var s = 0;
    var tbody = document.getElementById("goods");
    var jq = tbody.getElementsByTagName("tr");
    for (var i = 0; i < jq.length; i++) {
        var q = jq[i].getElementsByTagName("td")[5];
        s += parseFloat(q.innerHTML);
    }
    var total = document.getElementById("total");
    total.value=s.toFixed(2);
    
}
</script>
    <title>Cart</title>
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
								<li><a href="wish-list.html">Wishlist</a></li>
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
                    <li><a href="shop.hml">Shop</a></li>
                    <li class="active">CART</li>
                </ol>
            </div>
        </div>
        <!-- check-out -->
            <div class="section pt-7 pb-7">
			
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<table class="table shop-cart">
							<tbody id="goods">
							<c:forEach var="cart" items="${data.listCart}">
								<tr class="cart_item">
									<td class="product-remove">
										<a href="removecart?cid=${cart.cid}" class="remove">×</a>
									</td>
									<td class="product-thumbnail">
										<a>
											<img src="${cart.img}" alt="">
										</a>
									</td>
									<td>
										<a style="font-size: 20px;">${cart.pname}</a>
									</td >
									<td style="font-size: 18px;">
										${cart.price}
									</td>
									<td>
											<input type="button" onclick="jian(this)" value="-"/>
											<input type="text" style="width: 60px;text-align: center;" name="number" value="1" readonly="readonly"/>
											<input type="button" onclick="jia(this)" value="+"/>
									</td>
									<td style="font-size: 18px;" class="product-subtotal">
										${cart.price}
									</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
						<div>
							<a style="font-size: 22px;margin-left: 130px;" class="continue-shopping" href="shop">Shop more</a>
							<a style="font-size: 22px; margin-left: 140px;" class="update-cart" href="cart"> Update Cart</a>
						</div>
					</div>
					<s:form action="checkout" method="get">
					<div class="col-md-4">
						<div class="cart-totals">
							<table>
								<tbody>
									<tr class="shipping">
										<th>Shipping</th>
										<td>Free Shipping</td>
									</tr>
									<tr class="order-total">
										<th>Total</th>
										<td><input type="text" id="total" name="totalprice" value=""  style="background:transparent; border:0; margin-left:31px; color:white;"/></td>
									</tr>
								</tbody>
							</table>
							<div class="proceed-to-checkout">
								<input style="width: 200px;height: 40px;border-width: 0px;border-radius: 3px;background: #1E90FF;cursor: pointer;outline: none;font-family: Microsoft YaHei;color: white;font-size: 17px;" type="submit" name="submit" value="Checkout" />
							</div>
						</div>
					</div>
					</s:form>
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