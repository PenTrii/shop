<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="styles/bootstrap.min.css">
    <link rel="stylesheet" href="styles/styleStore.css">
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
           <div style="margin: 10px 0;">
               <nav class="breakdcrumb">
                   <a class="breakdcrumb-item" href="springmvc/home">Home /</a>
                   <a class="breakdcrumb-item" href="#">Phone /</a>
                   <span class="breakdcrumb-item active">SamSung</span>
               </nav>
           </div>
           <div class="row">
               <div class="col-md-5 item-photo">
                   <img style="max-width:100%;" src="${product.image}" />
               </div>
               <div class="col-md-7" style="border:0px solid gray">
                   <!--info-->
                     <h3>${product.title}</h3>
                   <h5 style="color:337ab7">Brand: <a href="#">${product.title}</a></h5>
                   <small style="color: #337ab7">(5054 votes)</small>
                   <!--price-->
                   <h6 class="tittle-price"><small>Price</small></h6>
                   <h3 style="margin-top: 0px;">${product.price}$</h3>
                   <!--product detail choice-->
                   <div class="section">
                       <h6 class="title-attr" style="margin-top: 15px;"><small>COLOR</small></h6>
                       <div>
                            <div class="attr" style="width: 25px; background:#5a5a5a;"></div>
                            <div class="attr" style="width: 25px; background: white"></div>
                       </div>
                   </div>
                   <div class="section" style="padding-bottom: 5px">
                       <h6 class="title-attr"><small>Size</small></h6>
                       <div>
                           <div class="attr2">40</div>
                           <div class="attr2">41</div>
                       </div>
                   </div>
                   <div class="section" style="padding-bottom: 20px;">
                       <h6 class="tittle-attr"><small>Quantity</small></h6>
                       <div>
                           <div class="btn-minus"><span class="glyphicon glyphicon-minus"></span></div>
                           <input value="1"/>
                           <div class="btn-plus"><span class="glyphicon glyphicon-plus"></span></div>
                       </div>
                   </div>
                   <!--add to cart-->
                   <div class="section" style="padding-bottom: 20px;">
                       <form action="cart/addProduct?id=${product.idp}" method="POST">
                           <button class="btn btn-success" type="submit">
                               <span style="margin-right:20px" class="glyphicon glyphicon-shopping-cart" aria-hidden="true">
                               </span>
                                   Add to cart
                           </button>
                       </form>
                   </div>
               </div>
               <div class="col-xs-9">
                   <ul class="menu-items">
                        <li class="active">Product Detail</li>
                        <li>Guarantee</li>
                        <li>Buyer</li>
                        <li>Comments</li>
                   </ul>
                   <di style="width: 100%; border-top: 1px solid silver;">
                       <p style="padding: 15px;">
                           <small>
                            ${product.description}</small>
                       </p>
                       <samll>
                           <ul>
                               <li>
                                   Super Amoled capacitive touchscreem display with 16M color
                               </li>
                           </ul>
                       </samll>
                   </di>
               </div>
            </div>
       </div>
    </main>
    <section id ="footer">
        <div class="container">
            <p>Coppyright Mstia.</p>
        </div>
    </section>
    <script src="javascript/jquery-3.3.1.slim.min.js"></script>
    <script src="javascript/bootstrap.min.js"></script>
    <script src="javascript/productDetail.js"></script>
</body>
</html>