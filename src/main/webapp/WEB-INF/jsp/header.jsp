<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true" %>
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