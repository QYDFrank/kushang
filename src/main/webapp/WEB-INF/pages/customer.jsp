<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
    <head>
    <title>Customer</title>
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
            function myFunction() {
          	  // 声明变量
          	  var input, filter, table, tr, td, i;
          	  input = document.getElementById("myInput");
          	  filter = input.value.toUpperCase();
          	  table = document.getElementById("myTable");
          	  tr = table.getElementsByTagName("tr");
          	 
          	  // 循环表格每一行，查找匹配项
          	  for (i = 0; i < tr.length; i++) {
          	    td = tr[i].getElementsByTagName("td")[0];
          	    td = tr[i].getElementsByTagName("td")[1];
          	    if (td) {
          	      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
          	        tr[i].style.display = "";
          	      } else {
          	        tr[i].style.display = "none";
          	      }
          	    } 
          	  }
          	}
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
                    <li><a href="index.html">HOME</a></li>
                    <li class="active">Customer</li>
                </ol>
            </div>
        </div>
        <div style="margin:80px 240px 5px 240px;">
			<hr style="height:2px;border:none;border-top:2px solid gray;">
			<input type="text" id="myInput" onkeyup="myFunction()" placeholder="search...">
				<table id="myTable" style="color: gray;width:100%; font-size: 18px;margin-left: 16px;">
					<tr style="text-align: center;height:36px;">
						<th>SR NO</th>
						<th>Customer</th>
						<th>Password</th>
						<th>Email</th>
						<th>Telephone</th>
						<th>Status</th>
						<th>Create Date</th>
						<th>Update Date</th>
						<th>Edit</th>
						<th>Delete</th>
						<th>Block/Active</th>
					</tr>
					<%int srno=1; %>
					<c:forEach var="customer" items="${listCustomer}">
						<tr style="font-size: 18px;height:36px;">
							<td><%=srno %></td>
							<td>${customer.name}</td>
							<td>${customer.password}</td>
							<td>${customer.email}</td>
							<td>${customer.tel}</td>
							<td>
								<c:if test="${customer.flag==1}">Active</c:if>
								<c:if test="${customer.flag==2}">Block</c:if>
							</td>
							<td>${customer.createdate}</td>
							<td>${customer.updatedate}</td>
							<td><a href="editCustomer?id=${customer.id}" style="color:green;">Edit</a></td>
		
							<td><a href="deleteCustomer?id=${customer.id}" style="color:green;">Delete</a></td>
		
					        <c:if test="${customer.flag==1}">
								<td><a href="blockCustomer?id=${customer.id}" style="color:green;">Block</a></td>
							</c:if>
							<c:if test="${customer.flag==2}">
								<td><a href="activeCustomer?id=${customer.id}" style="color:green;">Active</a></td>
							</c:if>
						</tr>
			       		<%srno++;%>
					</c:forEach>
				</table>
			<hr style="height:2px;border:none;border-top:2px solid gray;">
	</div>
	<div style="margin-left: 950px;margin-bottom: 20px;">
		<a href="addCustomer" style="color:green;font-size: 20px;">New Customer</a>
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