<%--
  Created by IntelliJ IDEA.
  User: stepanvasilyeu
  Date: 6.04.22
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <style>
        <%@ include file='/css/items.css' %>
    </style>
    <link rel="stylesheet" type="text/css" href="css/index.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <title>Authentication</title>
</head>

<body>

    <header>
        <nav>
            <a href="feedback">Обратная связь</a>
        </nav>
    </header>

    <div class="success message">
        <c:if test="${not empty successMessage}">
            ${successMessage}
        </c:if>
    </div>

<%--    <div class="p-3 mb-2 bg-secondary text-white">Games Workshop Webstore--%>
<%--        <div class="top-text">--%>
<%--            <h3>Choose paints to buy</h3>--%>
<%--        </div>--%>

<%--        <div class="product-card">--%>
<%--            <div class="container">--%>
<%--                <div class="row">--%>

<%--                    <div class="col-sm">--%>
<%--                        <div class="card" style="width: 10rem;">--%>
<%--                            <img class="card-img-top" src="https://www.games-workshop.com/resources/catalog/product/600x620/99189951056_layerUlthuanGrey.svg" alt="Card image cap">--%>
<%--                            <div class="card-body">--%>
<%--                                <h4 class="card-title">LAYER</h4>--%>
<%--                                <h5 class="card-name">Ulthuan Grey</h5>--%>
<%--                                <p class="card-price">$4.55</p>--%>
<%--                                <a href="#" class="btn btn-primary">+ add to cart</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div class="col-sm">--%>
<%--                        <div class="card" style="width: 10rem;">--%>
<%--                            <img class="card-img-top" src="https://www.games-workshop.com/resources/catalog/product/600x620/99189951104_layerDornYellow.svg" alt="Card image cap" >--%>
<%--                            <div class="card-body">--%>
<%--                                <h4 class="card-title">LAYER</h4>--%>
<%--                                <h5 class="card-name">Dorn Yellow</h5>--%>
<%--                                <p class="card-price">$4.55</p>--%>
<%--                                <a href="#" class="btn btn-primary">+ add to cart</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div class="col-sm">--%>
<%--                        <div class="card" style="width: 10rem;">--%>
<%--                            <img class="card-img-top" src="https://www.games-workshop.com/resources/catalog/product/600x620/99189951112_layerPhalanxYellow.svg" alt="Card image cap" >--%>
<%--                            <div class="card-body">--%>
<%--                                <h4 class="card-title">LAYER</h4>--%>
<%--                                <h5 class="card-name">Phalanx Yellow</h5>--%>
<%--                                <p class="card-price">$4.55</p>--%>
<%--                                <a href="#" class="btn btn-primary">+ add to cart</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div class="col-sm">--%>
<%--                        <div class="card" style="width: 10rem;">--%>
<%--                            <img class="card-img-top" src="https://www.games-workshop.com/resources/catalog/product/600x620/99189951002_layerFlashGitzYellow.svg" alt="Card image cap" >--%>
<%--                            <div class="card-body">--%>
<%--                                <h4 class="card-title">LAYER</h4>--%>
<%--                                <h5 class="card-name">Flash Gitz Yellow</h5>--%>
<%--                                <p class="card-price">$4.55</p>--%>
<%--                                <a href="#" class="btn btn-primary">+ add to cart</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div class="col-sm">--%>
<%--                        <div class="card" style="width: 10rem;">--%>
<%--                            <img class="card-img-top" src="https://www.games-workshop.com/resources/catalog/product/600x620/99189951001_layerYrielYellow.svg" alt="Card image cap" >--%>
<%--                            <div class="card-body">--%>
<%--                                <h4 class="card-title">LAYER</h4>--%>
<%--                                <h5 class="card-name">Yriel Yellow</h5>--%>
<%--                                <p class="card-price">$4.55</p>--%>
<%--                                <a href="#" class="btn btn-primary">+ add to cart</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div class="col-sm">--%>
<%--                        <div class="card" style="width: 10rem;">--%>
<%--                            <img class="card-img-top" src="https://www.games-workshop.com/resources/catalog/product/600x620/99189951001_layerYrielYellow.svg" alt="Card image cap" >--%>
<%--                            <div class="card-body">--%>
<%--                                <h4 class="card-title">LAYER</h4>--%>
<%--                                <h5 class="card-name">Yriel Yellow</h5>--%>
<%--                                <p class="card-price">$4.55</p>--%>
<%--                                <a href="#" class="btn btn-primary">+ add to cart</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div class="col-sm">--%>
<%--                        <div class="card" style="width: 10rem;">--%>
<%--                            <img class="card-img-top" src="https://www.games-workshop.com/resources/catalog/product/600x620/99189951109_layerLugganathOrange.svg" alt="Card image cap" >--%>
<%--                            <div class="card-body">--%>
<%--                                <h4 class="card-title">LAYER</h4>--%>
<%--                                <h5 class="card-name">Lugganath Orange</h5>--%>
<%--                                <p class="card-price">$4.55</p>--%>
<%--                                <a href="#" class="btn btn-primary">+ add to cart</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--    </div>--%>

    <h3>Choice you machine to buy</h3>

        <div class="product-card">
            <div class="container">
                <div class="row">

                    <c:forEach var="product" items="${products}">
                        <div class="col-sm">
                            <div class="card" style="width: 13rem;">
                                <img class="card-img-top" src="${product.image}" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title">${product.title}</h5>
                                    <h6 class="card-name">Some discription</h6>
                                    <p class="card-price">$ ${product.price}</p>
                                    <a href="#" class="btn btn-primary">+ add to cart</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>
            </div>
        </div>

</body>
</html>