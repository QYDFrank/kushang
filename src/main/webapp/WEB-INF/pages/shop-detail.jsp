<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
    <title>Single</title>
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
                    <li><a href="index">Home</a></li>
                    <li><a href="shop">Shop</a></li>
                    <li class="active">Shop-detail</li>
                </ol>
            </div>
        </div>
        <div class="showcase-grid">
            <div class="container">
                <div class="col-md-8 showcase">
                    <div class="flexslider">
									<div class="image-gallery-inner">
										<c:forEach var="subimg" items="${imageList}">
										<div>
											<div class="image-thumb">
												<img src="${subimg}" alt="" />
											</div>
										</div>
										</c:forEach>
									</div>
								</div>
								<div class="image-gallery-nav">
									<c:forEach var="subimg" items="${imageList}">
									<div class="image-nav-item">
										<div class="image-thumb">
											<img src="${subimg}" alt="" />
										</div>
									</div>
									</c:forEach>
								</div>
                </div>
                <div class="col-md-4 showcase">
                    <div class="summary">
									<h1 class="product-title">${product.name}</h1>
									<div class="product-rating">
										<div class="star-rating">
											<span style="width:100%"></span>
										</div>
										
									</div>
									<div class="product-price">
										<ins>$${product.price}</ins>
									</div>
									<div class="product-info">
										<table>
											<tr>
											<td>Product Highlights:</td>
											<td><a>${product.info}</a></td>
											</tr>
										</table>
									</div>
									<form class="cart">
										<div style="margin-top: 6px;font-size: 24px;"><a href="addtocart?pid=${product.id}">Add To Cart</a></div>		
									</form>
									<div class="product-tool">
										<a href="addtowishlist?pid=${product.id}" data-toggle="tooltip" data-placement="top" title="Add to wishlist"> Browse Wishlist </a>
									</div>
									<div class="product-meta">
										<table>
											<tbody>
												<tr>
													<td class="label">Category</td>
													<td><a>${product.category}</a></td>
												</tr>
												<tr>
													<td class="label">Share</td>
													<td class="share">
														<a target="_blank" href="#"><i class="fa fa-facebook"></i></a> 
														<a target="_blank" href="#"><i class="fa fa-twitter"></i></a> 
														<a target="_blank" href="#"><i class="fa fa-google-plus"></i></a>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
                    </div>
								<div class="related">
									<div class="related-title">
										<div class="text-center mb-1 section-pretitle fz-34">Related</div>
										<h2 class="text-center section-title mtn-2 fz-24">Products</h2>
									</div>
									<div class="product-carousel p-0" data-auto-play="true" data-desktop="3" data-laptop="2" data-tablet="2" data-mobile="1">
										<c:forEach var="pro" items="${listProduct}">
										<c:if test="${pro.category==product.category&&pro.id!=product.id}">
										<div class="product-item text-center">
											<div class="product-thumb">
												<a href="shop-detail">
													<img src="${pro.img}" alt="" />
												</a>
												<div class="product-action">
													<span class="add-to-cart">
														<a href="addtocart?pid=${pro.id}" data-toggle="tooltip" data-placement="top" title="Add to cart"></a>
													</span>
													<span class="wishlist">
														<a href="addtowishlist?pid=${pro.id}" data-toggle="tooltip" data-placement="top" title="Add to wishlist"></a>
													</span>
													<span class="quickview">
														<a href="shop-detail?name=${pro.name}&&price=${pro.price}&&info=${pro.info}&&img=${pro.img}&&subimg=${pro.subimg}&&id=${pro.id}&&category=${pro.category}" data-toggle="tooltip" data-placement="top" title="Quickview"></a>
													</span>
												</div>
											</div>
											<div class="product-info">
												<a href="shop-detail">
													<h2 class="title">${pro.name}</h2>
													<span class="price">$${pro.price}</span>
												</a>
											</div>
										</div>
										</c:if>
										</c:forEach>
									</div>
								</div>
							</div>
                </div>    
                </div>
        
        
        <div class="specifications">
            <div class="container">
              <h3>Item Details</h3> 
                <div class="detai-tabs">
                    <!-- Nav tabs -->
                    <ul class="nav nav-pills tab-nike" role="tablist">
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Highlights</a></li>
                    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Description</a></li>
                    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Terms & conditiona</a></li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="home">
                    <p>The full-length Max Air unit delivers excellent cushioning with enhanced flexibility for smoother transitions through footstrike.</p> 
                    <p>Dynamic Flywire cables integrate with the laces and wrap your midfoot for a truly adaptive, supportive fit.</p>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile">
                    <p>Nike is one of the leading manufacturer and supplier of sports equipment, footwear and apparels. Nike is a global brand and it continuously creates products using high technology and design innovation. Nike has a vast collection of sports shoes for men at Snapdeal. You can explore our range of basketball shoes, football shoes, cricket shoes, tennis shoes, running shoes, daily shoes or lifestyle shoes. Take your pick from an array of sports shoes in vibrant colours like red, yellow, green, blue, brown, black, grey, olive, pink, beige and white. Designed for top performance, these shoes match the way you play or run. Available in materials like leather, canvas, suede leather, faux leather, mesh etc, these shoes are lightweight, comfortable, sturdy and extremely sporty. The sole of all Nike shoes is designed to provide an increased amount of comfort and the material is good enough to provide an improved fit. These shoes are easy to maintain and last for a really long time given to their durability. Buy Nike shoes for men online with us at some unbelievable discounts and great prices. So get faster and run farther with your Nike shoes and track how hard you can play.</p>    
                    </div>
                    <div role="tabpanel" class="tab-pane" id="messages">
                        The images represent actual product though color of the image and product may slightly differ.    
                    </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="you-might-like">
            <div class="container">
                <h3 class="you-might">Products You May Like</h3>
                <div class="col-md-4 grid-stn simpleCart_shelfItem">
                     <!-- normal -->
                        <div class="ih-item square effect3 bottom_to_top">
                            <div class="bottom-2-top">
                    <div class="img"><img src="images/grid4.jpg" alt="/" class="img-responsive gri-wid"></div>
                            <div class="info">
                                <div class="pull-left styl-hdn">
                                    <h3>style 01</h3>
                                </div>
                                <div class="pull-right styl-price">
                                    <p><a  href="#" class="item_add"><span class="glyphicon glyphicon-shopping-cart grid-cart" aria-hidden="true"></span> <span class=" item_price">$190</span></a></p>
                                </div>
                                <div class="clearfix"></div>
                            </div></div>
                        </div>
                    <!-- end normal -->
                    <div class="quick-view">
                        <a href="single.html">Quick view</a>
                    </div>
                </div>
                <div class="col-md-4 grid-stn simpleCart_shelfItem">
                    <!-- normal -->
                        <div class="ih-item square effect3 bottom_to_top">
                            <div class="bottom-2-top">
                    <div class="img"><img src="images/grid6.jpg" alt="/" class="img-responsive gri-wid"></div>
                            <div class="info">
                                <div class="pull-left styl-hdn">
                                    <h3>style 01</h3>
                                </div>
                                <div class="pull-right styl-price">
    <p><a  href="#" class="item_add"><span class="glyphicon glyphicon-shopping-cart grid-cart" aria-hidden="true"></span> <span class=" item_price">$190</span></a></p>
                                </div>
                                <div class="clearfix"></div>
                            </div></div>
                        </div>
                    <!-- end normal -->
                    <div class="quick-view">
                        <a href="single.html">Quick view</a>
                    </div>
                </div>
                <div class="col-md-4 grid-stn simpleCart_shelfItem">
                    <!-- normal -->
                        <div class="ih-item square effect3 bottom_to_top">
                            <div class="bottom-2-top">
                    <div class="img"><img src="images/grid3.jpg" alt="/" class="img-responsive gri-wid"></div>
                            <div class="info">
                                <div class="pull-left styl-hdn">
                                    <h3>style 01</h3>
                                </div>
                                <div class="pull-right styl-price">
    <p><a  href="#" class="item_add"><span class="glyphicon glyphicon-shopping-cart grid-cart" aria-hidden="true"></span> <span class=" item_price">$190</span></a></p>
                                </div>
                                <div class="clearfix"></div>
                            </div></div>
                        </div>
                    <!-- end normal -->
                    <div class="quick-view">
                        <a href="single.html">Quick view</a>
                    </div>
                </div>
                <div class="clearfix"></div>
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
    