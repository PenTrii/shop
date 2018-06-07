<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Index</title>
    <link rel="stylesheet" href="styles/style.css" type="text/css">
    <link rel="stylesheet" href="styles/styleView.css">
    <link rel="stylesheet" href="styles/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="styles/https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
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
        <div class="container-fluid" style="padding:0;">

            <!-- slideshow -->
            <section id="slideshow" class="container" style="padding-top: 100px!important">
                <div class="row">
                    <div class="slideshow-container">
                        <div class="mySlides ">
                            <div class="numbertext text-white">1 / 3</div>
                            <img src="images/a1.jpg" style="width:100%">
                            <div class="text text-white">One</div>
                        </div>
                        <div class="mySlides ">
                            <div class="numbertext text-white">2 / 3</div>
                            <img src="images/a2.jpg" style="width:100%">
                            <div class="text text-white">Two</div>
                        </div>
                        <div class="mySlides  ">
                            <div class="numbertext text-white">3 / 3</div>
                            <img src="images/a3.jpg" style="width:100%">
                            <div class="text text-white">Three</div>
                        </div>
                    </div>
                </div>
                <br>
                <div style="text-align:center">
                    <span class="dot"></span>
                    <span class="dot"></span>
                    <span class="dot"></span>
                </div>
            </section>

            <!-- list -->
            <section id="listProduct" class="bg-light">
                <div class="container">
                  <div class="row">
                      <c:forEach items="${listProduct}" var="item">
                          <div class="col-md-4">
                              <div class="card mb-4 box-shadow">
                                  <img class="card-img-top" src="${item.image}" alt="Card image cap">
                                  <div class="card-body">
                                      <p class="card-text">${item.description}</p>
                                      <div class="d-flex justify-content-between align-items-center">
                                          <div class="btn-group">
                                              <a class="btn btn-sm btn-outline-secondary" href="store?id=${item.idp}">View</a>

                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </c:forEach>
                  </div>
                </div>
            </section>
        </div>
    </main>

    <!-- Footer -->
    <nav class="container-fluid bg-dark" style="top: 100px; padding: 0;">
        <footer id="footerDemo" style="padding-top: 12px;">
            <p>Find a store on social media.</p>
            <i class="fa fa-facebook-official"></i>
            <i class="fa fa-instagram"></i>
            <i class="fa fa-snapchat"></i>
            <i class="fa fa-pinterest-p"></i>
            <i class="fa fa-twitter"></i>
            <i class="fa fa-linkedin"></i>
            <p style="padding-top: 10px;">Coppyright PenTrii</p>
        </footer>
    </nav>
    <!-- Placed at the end of the document so the pages load faster -->

    <script src="javascript/jquery-3.3.1.slim.min.js"></script>
    <script src="javascript/bootstrap.min.js"></script>
    <script src="javascript/apps.js"></script>


</body>
</html>