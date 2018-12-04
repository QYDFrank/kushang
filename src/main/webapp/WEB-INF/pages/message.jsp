<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
    <head>
    <title>Message</title>
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
                                <li><a href="admin.html">Admin</a></li>
								<li><a href="customer.html">Customer</a></li>
								<li><a href="product.html">Product</a></li>
                                <li><a href="message.html">Message</a></li>
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
                    <li><a href="index.html">HOME</a></li>
                    <li class="active">MESSAGE</li>
                </ol>
            </div>
        </div>
        <div style="margin:80px 240px 65px 240px;">
			<hr style="height:2px;border:none;border-top:2px solid gray;">
				<table style="color: gray;width:100%; font-size: 18px;margin-left: 30px;">
					<tr style="text-align: center;height:36px;">
						<th>SR NO</th>
						<th>Customer</th>
						<th>Email</th>
						<th>Subject</th>
						<th>Message</th>
						<th>Create Date</th>
						<th>Delete</th>
					</tr>
					<%int srno=1; %>
					<c:forEach var="message" items="${listMessage}">
						<tr style="font-size: 18px;height:36px;">
							<td><%=srno %></td>
							<td>${message.cname}</td>
							<td>${message.email}</td>
							<td>${message.subject}</td>
							<td><textarea style="width:260px;">${message.mess}</textarea></td>
							<td>${message.createdate}</td>
							<td><a href="deleteMessage?id=${message.id}" style="color:green;">Delete</a></td>
						</tr>
			       		<%srno++;%>
					</c:forEach>
				</table>
			<hr style="height:2px;border:none;border-top:2px solid gray;">
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