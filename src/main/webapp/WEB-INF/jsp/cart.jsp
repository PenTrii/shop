<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="styles/productDetail.css"/>
	 <link rel="stylesheet" href="styles/bootstrap.min.css"/>

</head>
<body>
	<header id="hd">
        <div class="collapse bg-dark" id="navbarHeader" >
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-md-7 py-4">
                        <h4 class="text-white">About</h4>
                        <p class="text-muted">
                            Add some information about the album below, the author, or any other backgroud context. Make it a few sentences long so folls
                            can networking sites or contact information.
                        </p>
                    </div>
                    <div class="col-sm-4 offset-md-1 py-4">
                        <h4 class="text-white">Contact</h4>
                        <ul class="list-unstyled">
                            <li>
                                <a href="#" class="text-white"><c:out value="${fullname}"/></a>
                            </li>
                            <li>
                                <a href="#" class="text-white">Follow on facebook</a>
                            </li>
                            <li>
                                <a href="#" class="text-white">Email me</a>
                            </li>
                            <li>
                                <a href="changePassword" class="text-white">${change}</a>
                            </li>
                            <li>
                                <a href="${name}" class="text-white">${name}</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="navbar navbar-dark bg-dark box-shadow">
            <div class="container d-flex justify-content-between">
                <div class="navbar-hrand d-flex align-items-center">
                    <img src="images/logoA.png" alt="" style="width: 50px; height: 50px; padding: 0; margin-right: 20px;">
                    <a href="#slideshow" style="text-decoration: none; margin-right: 20px">
                        <strong style="padding-right: 5px; color: white">Home</strong>
                    </a>

                    <a href="#listProduct" style="text-decoration: none; margin-right: 20px">
                        <!-- <img src="images/Shop.png" alt="" style="width: 20px; height: 20px"> -->
                        <strong style="padding-right: 5px ; color: white">Shop</strong>
                    </a>

                    <a href="#form" style="text-decoration: none">
                        <!-- <img src="images/Registration.png" alt="" style="width: 20px; height: 20px"> -->
                        <strong style="padding-right: 5px ; color: white">Registration</strong>
                    </a>
                </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </div>
    </header>
	<main>
		<div class="container">
			<div style="margin:10px 0;">
				<nav class="breadcrumb">
				  <a class="breadcrumb-item" href="home">Home</a>
				 <span class="breadcrumb-item active">Cart</span>
				</nav>
			</div>
        	<div class="row">
				<div class="col-sm-12 col-md-12 col-md-offset-1">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Product</th>
								<th>Quantity</th>
								<th class="text-center">Price</th>
								<th class="text-center">Total</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
						<c:set var="total" value="${0}"/>
							<c:forEach items="${cart}" var="item">
								<c:set var="total" value="${total + (item.price*item.quantity)}" />
								<tr>
									<td class="col-sm-8 col-md-6">
										<div class="media">
											<a class="thumbnail pull-left" href="#"style="padding-right: 15px;">
												<img class="media-object" src="${item.image}" style="width: 72px; height: 72px;"> </a>
											<div class="media-body">
												<h4 class="media-heading"><a href="#">${item.title}</a></h4>
												<h5 class="media-heading"> by ADIDAS</h5>
												<span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
											</div>
										</div>
									</td>
									<td class="col-sm-1 col-md-1" style="text-align: center">
										<input type="email" class="form-control" disabled id="quantity-${item.idp}" value="${item.quantity}">
									</td>
									<td class="col-sm-1 col-md-1 text-center"><strong>${item.price}</strong></td>
									<td class="col-sm-1 col-md-1 text-center"><strong>${item.price*item.quantity}</strong></td>
									<td class="col-sm-1 col-md-1">
									 <form action="cart/removeProduct?id=${item.idp}" method="post">
                                        <button type="submit" class="btn btn-danger">
                                            <span class="glyphicon glyphicon-remove"></span> Remove
                                        </button>
                                    </form>
                                    </td>
								</tr>
							</c:forEach>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td><h3>Total</h3></td>
								<td class="text-right"><h3><strong>$${total}</strong></h3></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
								<td>
                                    <button type="button" class="btn btn-default">
                                        <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                                    </button>
                                </td>
								<td>
                                    <a href="cart/checkout"  class="btn btn-success">
                                        Checkout <span class="glyphicon glyphicon-play"></span>
                                    </a>
                                </td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
        </div>
	</main>
	<footer>
		<section id="footer">
				<div class="container">
					<p>Copyright Msita.</p>
				  </div>
			</section>
	</footer>
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="javascript/jquery-3.3.1.min.js">  </script>
	<script src="javascript/bootstrap.min.js">  </script>
	<script src="javascript/productDetail.js">  </script>
</body>
</html>
