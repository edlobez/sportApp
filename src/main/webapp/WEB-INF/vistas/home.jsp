<%-- 
    Document   : home
    Created on : 23-oct-2020, 17:40:19
    Author     : edlobez
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>edsport</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="static/css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="static/js/jquery.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $(".dropdown img.flag").addClass("flagvisibility");

                $(".dropdown dt a").click(function () {
                    $(".dropdown dd ul").toggle();
                });

                $(".dropdown dd ul li a").click(function () {
                    var text = $(this).html();
                    $(".dropdown dt a span").html(text);
                    $(".dropdown dd ul").hide();
                    $("#result").html("Selected value is: " + getSelectedValue("sample"));
                });

                function getSelectedValue(id) {
                    return $("#" + id).find("dt a span.value").html();
                }

                $(document).bind('click', function (e) {
                    var $clicked = $(e.target);
                    if (!$clicked.parents().hasClass("dropdown"))
                        $(".dropdown dd ul").hide();
                });


                $("#flagSwitcher").click(function () {
                    $(".dropdown img.flag").toggleClass("flagvisibility");
                });
            });
        </script>
        <!-- start menu -->
        <link href="static/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="static/js/megamenu.js"></script>
        <script>$(document).ready(function () {
                $(".megamenu").megamenu();
            });</script>
        <!-- end menu -->
        <!-- top scrolling -->
        <script type="text/javascript" src="static/js/move-top.js"></script>
        <script type="text/javascript" src="static/js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1200);
                });
            });
        </script>
    </head>
    <body>
        <div class="header-top">
            <div class="wrap">
                <div class="logo">
                    <a href="${pageContext.servletContext.contextPath}/home"><img src="static/resources/images/logo.png" alt=""/></a>
                </div>
                <div class="cssmenu">
                    <ul>
                        <li class="active"><a href="register.html">Sign up & Save</a></li>
                        <li><a href="${pageContext.servletContext.contextPath}/shop">Ir a la tienda</a></li>
                        <li><a href="login.html">Login</a></li>
                        <li><a href="checkout.html">Sign out</a></li>
                    </ul>
                </div>
                <ul class="icon2 sub-icon2 profile_img">
                    <li><a class="active-icon c2" href="#"> </a>
                        <ul class="sub-icon2 list">
                            <li><h3>Products</h3><a href=""></a></li>
                            <li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
                        </ul>
                    </li>
                </ul>
                <div class="clear"></div>
            </div>
        </div>
        <div class="header-bottom">
            <div class="wrap">

                <!-- start header menu -->
                <ul class="megamenu skyblue">
                    <li><a class="color1" href="${pageContext.servletContext.contextPath}/home">Home</a></li>

                    <li class="grid"><a class="color2" href="#">Hombre</a>
                        <div class="megapanel">
                            <div class="row">
                                <div class="col1">
                                    <div class="h_nav">
                                        <h4>popular</h4>
                                        <ul>
                                            <li><a href="shop.html">new arrivals</a></li>
                                            <li><a href="shop.html">men</a></li>
                                            <li><a href="shop.html">women</a></li>
                                            <li><a href="shop.html">accessories</a></li>
                                            <li><a href="shop.html">kids</a></li>
                                            <li><a href="shop.html">login</a></li>
                                        </ul>
                                    </div>
                                    <!--
                                    <div class="h_nav">
                                            <h4 class="top">men</h4>
                                            <ul>
                                                    <li><a href="shop.html">new arrivals</a></li>
                                                    <li><a href="shop.html">men</a></li>
                                                    <li><a href="shop.html">women</a></li>
                                                    <li><a href="shop.html">accessories</a></li>
                                                    <li><a href="shop.html">kids</a></li>
                                                    <li><a href="shop.html">style videos</a></li>
                                            </ul>
                                    </div>
                                    -->
                                </div>


                                <div class="col1">
                                    <!--
                                    <div class="h_nav">
                                        
                                            <h4>style zone</h4>
                                            <ul>
                                                    <li><a href="shop.html">men</a></li>
                                                    <li><a href="shop.html">women</a></li>
                                                    <li><a href="shop.html">accessories</a></li>
                                                    <li><a href="shop.html">kids</a></li>
                                                    <li><a href="shop.html">brands</a></li>
                                            </ul>
                                        
                                    </div>
                                    -->

                                </div>

                                <div class="col1"></div>
                                <div class="col1"></div>
                                <div class="col1"></div>
                                <div class="col1"></div> 
                                <img src="static/resources/images/nav_img.jpg" alt=""/>
                            </div>
                        </div>
                    </li>
                    <li class="active grid"><a class="color4" href="#">Mujer</a>
                        <div class="megapanel">
                            <div class="row">
                                <div class="col1">
                                    <div class="h_nav">
                                        <h4>shop</h4>
                                        <ul>
                                            <li><a href="shop.html">new arrivals</a></li>
                                            <li><a href="shop.html">men</a></li>
                                            <li><a href="shop.html">women</a></li>
                                            <li><a href="shop.html">accessories</a></li>
                                            <li><a href="shop.html">kids</a></li>
                                            <li><a href="shop.html">brands</a></li>
                                        </ul>
                                    </div>
                                </div>


                                <div class="col1">
                                    <div class="h_nav">
                                        <img src="static/resources/images/nav_img1.jpg" alt=""/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col2"></div>
                                <div class="col1"></div>
                                <div class="col1"></div>
                                <div class="col1"></div>
                                <div class="col1"></div>
                            </div>
                        </div>
                    </li>
                    <li><a class="color5" href="#">Niños</a>
                        <div class="megapanel">
                            <div class="row">
                                <div class="col1">
                                    <div class="h_nav">
                                        <h4>popular</h4>
                                        <ul>
                                            <li><a href="shop.html">new arrivals</a></li>
                                            <li><a href="shop.html">men</a></li>
                                            <li><a href="shop.html">women</a></li>
                                            <li><a href="shop.html">accessories</a></li>
                                            <li><a href="shop.html">kids</a></li>
                                            <li><a href="shop.html">login</a></li>
                                        </ul>
                                    </div>

                                </div>
                                <div class="col1">

                                </div>
                                <div class="col1"></div>
                                <div class="col1"></div>
                                <div class="col1"></div>
                                <div class="col1"></div>
                                <img src="static/resources/images/nav_img2.jpg" alt=""/>
                            </div>
                        </div>
                    </li>


                    <li><a class="color8" href="${pageContext.servletContext.contextPath}/shop">Tienda</a>
                    
                </ul>
                <div class="clear"></div>
            </div>
        </div>

        <!-- carrusel central -->

        <div class="index-banner">
            <div class="wmuSlider example1" style="height: 560px;">
                <div class="wmuSliderWrapper">

                    <c:forEach var="novedad" items="${novedades}">

                        <article style="position: relative; width: 100%; opacity: 1;">
                            <div class="banner-wrap">
                                <div class="slider-left">
                                    <c:set var="aux" scope="page" value="static/resources/images/${novedad.id}/vista_1.jpg"/>
                                    <img src="${aux}" alt=""/>
                                </div>
                                <div class="slider-right">
                                    <h1>${novedad.marca}</h1>
                                    <h2>${novedad.tipo_producto}</h2>
                                    <p>${novedad.modelo}</p>
                                    <div class="btn"><a href="${pageContext.servletContext.contextPath}/single?id=${novedad.id}">Comprar</a></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </article>
                    </c:forEach>

                </div>
                <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
                <ul class="wmuSliderPagination">

                    <c:set var="aux_1" value="0"/>
                    <c:forEach var="novedad" items="${novedades}">
                        <c:set var="clase" scope="page" value=""/> 
                        <c:if test="${aux_1==0}">
                            <c:set var="clase" scope="page" value="wmuActive"/> 
                        </c:if>
                        <li><a href="#" class="">${aux_1}</a></li>
                            <c:set var="aux_1" value="${aux_1+1}"/>                        
                        </c:forEach>

                </ul>

            </div>

            <script src="static/js/jquery.wmuSlider.js"></script>
            <script type="text/javascript" src="static/js/modernizr-custom.js"></script>
            <script>
            $('.example1').wmuSlider();
            </script>
        </div>
        <!-- fin del carrusel central -->


        <div class="main">
            <div class="wrap">
                
                <div class="content-bottom">
                    
                    
                    <div class="box1">
                        
                    <!-- Productos en oferta -->  
                    <c:forEach var="ofertas" items="${ofertas}">
                        
                        <div class="col_1_of_3 span_1_of_3"><a href="${pageContext.servletContext.contextPath}/single?id=${ofertas.id}">
                                <div class="view view-fifth">
                                    <div class="top_box">
                                        <h3 class="m_1">${ofertas.marca}</h3>
                                        <p class="m_2">${ofertas.tipo_producto}</p>
                                        <div class="grid_img">
                                            <c:set var="aux" scope="page" value="static/resources/images/${ofertas.id}/vista_1.jpg"/>
                                            <div class="css3"><img src="${aux}" alt=""/></div>
                                            <div class="mask">
                                                <div class="info">Ver producto</div>
                                            </div>
                                        </div>
                                        <div class="price">${ofertas.precio}€</div>
                                    </div>
                                </div>
                                <span class="rating">
                                    <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
                                    <label for="rating-input-1-5" class="rating-star1"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
                                    <label for="rating-input-1-4" class="rating-star1"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
                                    <label for="rating-input-1-3" class="rating-star1"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
                                    <label for="rating-input-1-2" class="rating-star"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
                                    <label for="rating-input-1-1" class="rating-star"></label>&nbsp;
                                    (45)
                                </span>
                                <ul class="list">
                                    <li>
                                        <img src="images/plus.png" alt=""/>
                                        <ul class="icon1 sub-icon1 profile_img">
                                            <li><a class="active-icon c1" href="#">Comprar</a>
                                                <ul class="sub-icon1 list">
                                                    <li><h3>${ofertas.marca}</h3><a href=""></a></li>
                                                    <li><p>${ofertas.tipo_producto}  <a href="">${ofertas.modelo}</a></p></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                                <div class="clear"></div>
                            </a></div>
                    </c:forEach>
                    
                        <!--
                        <div class="col_1_of_3 span_1_of_3"><a href="single.html">
                                <div class="view view-fifth">
                                    <div class="top_box">
                                        <h3 class="m_1">Lorem ipsum dolor sit amet</h3>
                                        <p class="m_2">Lorem ipsum</p>
                                        <div class="grid_img">
                                            <div class="css3"><img src="images/pic1.jpg" alt=""/></div>
                                            <div class="mask">
                                                <div class="info">Quick View</div>
                                            </div>
                                        </div>
                                        <div class="price">£480</div>
                                    </div>
                                </div>
                                <span class="rating">
                                    <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
                                    <label for="rating-input-1-5" class="rating-star1"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
                                    <label for="rating-input-1-4" class="rating-star1"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
                                    <label for="rating-input-1-3" class="rating-star1"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
                                    <label for="rating-input-1-2" class="rating-star"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
                                    <label for="rating-input-1-1" class="rating-star"></label>&nbsp;
                                    (45)
                                </span>
                                <ul class="list">
                                    <li>
                                        <img src="images/plus.png" alt=""/>
                                        <ul class="icon1 sub-icon1 profile_img">
                                            <li><a class="active-icon c1" href="#">Add To Bag </a>
                                                <ul class="sub-icon1 list">
                                                    <li><h3>sed diam nonummy</h3><a href=""></a></li>
                                                    <li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                                <div class="clear"></div>
                            </a></div>
                        
                        
                        <div class="col_1_of_3 span_1_of_3"><a href="single.html">
                                <div class="view view-fifth">
                                    <div class="top_box">
                                        <h3 class="m_1">Lorem ipsum dolor sit amet</h3>
                                        <p class="m_2">Lorem ipsum</p>
                                        <div class="grid_img">
                                            <div class="css3"><img src="images/pic2.jpg" alt=""/></div>
                                            <div class="mask">
                                                <div class="info">Quick View</div>
                                            </div>
                                        </div>
                                        <div class="price">£480</div>
                                    </div>
                                </div>
                                <span class="rating">
                                    <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
                                    <label for="rating-input-1-5" class="rating-star1"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
                                    <label for="rating-input-1-4" class="rating-star1"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
                                    <label for="rating-input-1-3" class="rating-star1"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
                                    <label for="rating-input-1-2" class="rating-star"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
                                    <label for="rating-input-1-1" class="rating-star"></label>&nbsp;
                                    (45)
                                </span>
                                <ul class="list">
                                    <li>
                                        <img src="images/plus.png" alt=""/>
                                        <ul class="icon1 sub-icon1 profile_img">
                                            <li><a class="active-icon c1" href="#">Add To Bag </a>
                                                <ul class="sub-icon1 list">
                                                    <li><h3>sed diam nonummy</h3><a href=""></a></li>
                                                    <li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                                <div class="clear"></div>
                            </a></div>
                        -->
                        
                        <div class="clear"></div>
                    </div>
                    
                   <!--  
                    <div class="box1">
                        <div class="col_1_of_3 span_1_of_3"><a href="single.html">
                                <div class="view view-fifth">
                                    <div class="top_box">
                                        <h3 class="m_1">Lorem ipsum dolor sit amet</h3>
                                        <p class="m_2">Lorem ipsum</p>
                                        <div class="grid_img">
                                            <div class="css3"><img src="images/pic3.jpg" alt=""/></div>
                                            <div class="mask">
                                                <div class="info">Quick View</div>
                                            </div>
                                        </div>
                                        <div class="price">£480</div>
                                    </div>
                                </div>
                                <span class="rating">
                                    <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
                                    <label for="rating-input-1-5" class="rating-star1"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
                                    <label for="rating-input-1-4" class="rating-star1"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
                                    <label for="rating-input-1-3" class="rating-star1"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
                                    <label for="rating-input-1-2" class="rating-star"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
                                    <label for="rating-input-1-1" class="rating-star"></label>&nbsp;
                                    (45)
                                </span>
                                <ul class="list">
                                    <li>
                                        <img src="images/plus.png" alt=""/>
                                        <ul class="icon1 sub-icon1 profile_img">
                                            <li><a class="active-icon c1" href="#">Add To Bag </a>
                                                <ul class="sub-icon1 list">
                                                    <li><h3>sed diam nonummy</h3><a href=""></a></li>
                                                    <li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                                <div class="clear"></div>
                            </a></div>
                        <div class="col_1_of_3 span_1_of_3"><a href="single.html">
                                <div class="view view-fifth">
                                    <div class="top_box">
                                        <h3 class="m_1">Lorem ipsum dolor sit amet</h3>
                                        <p class="m_2">Lorem ipsum</p>
                                        <div class="grid_img">
                                            <div class="css3"><img src="images/pic4.jpg" alt=""/></div>
                                            <div class="mask">
                                                <div class="info">Quick View</div>
                                            </div>
                                        </div>
                                        <div class="price">£480</div>
                                    </div>
                                </div>
                                <span class="rating">
                                    <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
                                    <label for="rating-input-1-5" class="rating-star1"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
                                    <label for="rating-input-1-4" class="rating-star1"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
                                    <label for="rating-input-1-3" class="rating-star1"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
                                    <label for="rating-input-1-2" class="rating-star"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
                                    <label for="rating-input-1-1" class="rating-star"></label>&nbsp;
                                    (45)
                                </span>
                                <ul class="list">
                                    <li>
                                        <img src="images/plus.png" alt=""/>
                                        <ul class="icon1 sub-icon1 profile_img">
                                            <li><a class="active-icon c1" href="#">Add To Bag </a>
                                                <ul class="sub-icon1 list">
                                                    <li><h3>sed diam nonummy</h3><a href=""></a></li>
                                                    <li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                                <div class="clear"></div>
                            </a></div>
                        <div class="col_1_of_3 span_1_of_3"><a href="single.html">
                                <div class="view view-fifth">
                                    <div class="top_box">
                                        <h3 class="m_1">Lorem ipsum dolor sit amet</h3>
                                        <p class="m_2">Lorem ipsum</p>
                                        <div class="grid_img">
                                            <div class="css3"><img src="images/pic5.jpg" alt=""/></div>
                                            <div class="mask">
                                                <div class="info">Quick View</div>
                                            </div>
                                        </div>
                                        <div class="price">£480</div>
                                    </div>
                                </div>
                                <span class="rating">
                                    <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
                                    <label for="rating-input-1-5" class="rating-star1"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
                                    <label for="rating-input-1-4" class="rating-star1"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
                                    <label for="rating-input-1-3" class="rating-star1"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
                                    <label for="rating-input-1-2" class="rating-star"></label>
                                    <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
                                    <label for="rating-input-1-1" class="rating-star"></label>&nbsp;
                                    (45)
                                </span>
                                <ul class="list">
                                    <li>
                                        <img src="images/plus.png" alt=""/>
                                        <ul class="icon1 sub-icon1 profile_img">
                                            <li><a class="active-icon c1" href="#">Add To Bag </a>
                                                <ul class="sub-icon1 list">
                                                    <li><h3>sed diam nonummy</h3><a href=""></a></li>
                                                    <li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                                <div class="clear"></div>
                            </a></div>
                        <div class="clear"></div>
                    </div>
                    
                    -->
                    
                    
                </div>
                 
                 
                 
            </div>
        </div>
        <div class="footer">
            <div class="footer-top">
                <div class="wrap">
                    <div class="col_1_of_footer-top span_1_of_footer-top">
                        <ul class="f_list">
                            <li><img src="images/f_icon.png" alt=""/><span class="delivery">Free delivery on all orders over £100*</span></li>
                        </ul>
                    </div>
                    <div class="col_1_of_footer-top span_1_of_footer-top">
                        <ul class="f_list">
                            <li><img src="images/f_icon1.png" alt=""/><span class="delivery">Customer Service :<span class="orange"> (800) 000-2587 (freephone)</span></span></li>
                        </ul>
                    </div>
                    <div class="col_1_of_footer-top span_1_of_footer-top">
                        <ul class="f_list">
                            <li><img src="images/f_icon2.png" alt=""/><span class="delivery">Fast delivery & free returns</span></li>
                        </ul>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="footer-middle">
                <div class="wrap">
                    <div class="section group">
                        <div class="col_1_of_middle span_1_of_middle">
                            <dl id="sample" class="dropdown">
                                <dt><a href="#"><span>Please Select a Country</span></a></dt>
                                <dd>
                                    <ul>
                                        <li><a href="#">Australia<img class="flag" src="images/as.png" alt="" /><span class="value">AS</span></a></li>
                                        <li><a href="#">Sri Lanka<img class="flag" src="images/srl.png" alt="" /><span class="value">SL</span></a></li>
                                        <li><a href="#">Newziland<img class="flag" src="images/nz.png" alt="" /><span class="value">NZ</span></a></li>
                                        <li><a href="#">Pakistan<img class="flag" src="images/pk.png" alt="" /><span class="value">Pk</span></a></li>
                                        <li><a href="#">United Kingdom<img class="flag" src="images/uk.png" alt="" /><span class="value">UK</span></a></li>
                                        <li><a href="#">United States<img class="flag" src="images/us.png" alt="" /><span class="value">US</span></a></li>
                                    </ul>
                                </dd>
                            </dl>
                        </div>
                        <div class="col_1_of_middle span_1_of_middle">
                            <ul class="f_list1">
                                <li><span class="m_8">Sign up for email and Get 15% off</span>
                                    <div class="search">
                                        <input type="text" name="s" class="textbox" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                    this.value = 'Search';
                                                }">
                                        <input type="submit" value="Subscribe" id="submit" name="submit">
                                        <div id="response"> </div>
                                    </div><div class="clear"></div>
                                </li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="wrap">
                    <div class="section group">
                        <div class="col_1_of_5 span_1_of_5">
                            <h3 class="m_9">Shop</h3>
                            <ul class="sub_list">
                                <h4 class="m_10">Men</h4>
                                <li><a href="shop.html">Men's Shoes</a></li>
                                <li><a href="shop.html">Men's Clothing</a></li>
                                <li><a href="shop.html">Men's Accessories</a></li>
                            </ul>
                            <ul class="sub_list">
                                <h4 class="m_10">Women</h4>
                                <li><a href="shop.html">Women's Shoes</a></li>
                                <li><a href="shop.html">Women's Clothing</a></li>
                                <li><a href="shop.html">Women's Accessories</a></li>
                            </ul>
                            <ul class="sub_list">
                                <h4 class="m_10">Kids</h4>
                                <li><a href="shop.html">Kids Shoes</a></li>
                                <li><a href="shop.html">Kids Clothing</a></li>
                                <li><a href="shop.html">Kids Accessories</a></li>
                            </ul>
                            <ul class="sub_list">
                                <h4 class="m_10">style</h4>
                                <li><a href="shop.html">Porsche Design Sport</a></li>
                                <li><a href="shop.html">Porsche Design Shoes</a></li>
                                <li><a href="shop.html">Porsche Design Clothing</a></li>
                            </ul>
                            <ul class="sub_list">
                                <h4 class="m_10">Adidas Neo Label</h4>
                                <li><a href="shop.html">Adidas NEO Shoes</a></li>
                                <li><a href="shop.html">Adidas NEO Clothing</a></li>
                            </ul>
                            <ul class="sub_list1">
                                <h4 class="m_10">Customise</h4>
                                <li><a href="shop.html">mi adidas</a></li>
                                <li><a href="shop.html">mi team</a></li>
                                <li><a href="shop.html">new arrivals</a></li>
                            </ul>
                        </div>
                        <div class="col_1_of_5 span_1_of_5">
                            <h3 class="m_9">Sports</h3>
                            <ul class="list1">
                                <li><a href="shop.html">Basketball</a></li>
                                <li><a href="shop.html">Football</a></li>
                                <li><a href="shop.html">Football Boots</a></li>
                                <li><a href="shop.html">Predator</a></li>
                                <li><a href="shop.html">F50</a></li>
                                <li><a href="shop.html">Football Clothing</a></li>
                                <li><a href="shop.html">Golf</a></li>
                                <li><a href="shop.html">Golf Shoes</a></li>
                                <li><a href="shop.html">Golf Clothing</a></li>
                                <li><a href="shop.html">Outdoor</a></li>
                                <li><a href="shop.html">Outdoor Shoes</a></li>
                                <li><a href="shop.html">Outdoor Clothing</a></li>
                                <li><a href="shop.html">Rugby</a></li>
                                <li><a href="shop.html">Running</a></li>
                                <li><a href="shop.html">Running Shoes</a></li>
                                <li><a href="shop.html">Boost</a></li>
                                <li><a href="shop.html">Supernova</a></li>
                                <li><a href="shop.html">Running Clothing</a></li>
                                <li><a href="shop.html">Swimming</a></li>
                                <li><a href="shop.html">Tennis</a></li>
                                <li><a href="shop.html">Tennis Shoes</a></li>
                                <li><a href="shop.html">Tennis Clothing</a></li>
                                <li><a href="shop.html">Training</a></li>
                                <li><a href="shop.html">Training Shoes</a></li>
                                <li><a href="shop.html">Training Clothing</a></li>
                                <li><a href="shop.html">Training Accessories</a></li>
                                <li><a href="shop.html">miCoach</a></li>
                                <li><a href="shop.html">All Sports</a></li>
                            </ul>
                        </div>
                        <div class="col_1_of_5 span_1_of_5">
                            <h3 class="m_9">Originals</h3>
                            <ul class="list1">
                                <li><a href="shop.html">Originals Shoes</a></li>
                                <li><a href="shop.html">Gazelle</a></li>
                                <li><a href="shop.html">Samba</a></li>
                                <li><a href="shop.html">LA Trainer</a></li>
                                <li><a href="shop.html">Superstar</a></li>
                                <li><a href="shop.html">SL</a></li>
                                <li><a href="shop.html">ZX</a></li>
                                <li><a href="shop.html">Campus</a></li>
                                <li><a href="shop.html">Spezial</a></li>
                                <li><a href="shop.html">Dragon</a></li>
                                <li><a href="shop.html">Originals Clothing</a></li>
                                <li><a href="shop.html">Firebird</a></li>
                                <li><a href="shop.html">Originals Accessories</a></li>
                                <li><a href="shop.html">Men's Originals</a></li>
                                <li><a href="shop.html">Women's Originals</a></li>
                                <li><a href="shop.html">Kid's Originals</a></li>
                                <li><a href="shop.html">All Originals</a></li>
                            </ul>
                        </div>
                        <div class="col_1_of_5 span_1_of_5">
                            <h3 class="m_9">Product Types</h3>
                            <ul class="list1">
                                <li><a href="shop.html">Shirts</a></li>
                                <li><a href="shop.html">Pants & Tights</a></li>
                                <li><a href="shop.html">Shirts</a></li>
                                <li><a href="shop.html">Jerseys</a></li>
                                <li><a href="shop.html">Hoodies & Track Tops</a></li>
                                <li><a href="shop.html">Bags</a></li>
                                <li><a href="shop.html">Jackets</a></li>
                                <li><a href="shop.html">Hi Tops</a></li>
                                <li><a href="shop.html">SweatShirts</a></li>
                                <li><a href="shop.html">Socks</a></li>
                                <li><a href="shop.html">Swimwear</a></li>
                                <li><a href="shop.html">Tracksuits</a></li>
                                <li><a href="shop.html">Hats</a></li>
                                <li><a href="shop.html">Football Boots</a></li>
                                <li><a href="shop.html">Other Accessories</a></li>
                                <li><a href="shop.html">Sandals & Flip Flops</a></li>
                                <li><a href="shop.html">Skirts & Dresseses</a></li>
                                <li><a href="shop.html">Balls</a></li>
                                <li><a href="shop.html">Watches</a></li>
                                <li><a href="shop.html">Fitness Equipment</a></li>
                                <li><a href="shop.html">Eyewear</a></li>
                                <li><a href="shop.html">Gloves</a></li>
                                <li><a href="shop.html">Sports Bras</a></li>
                                <li><a href="shop.html">Scarves</a></li>
                                <li><a href="shop.html">Shinguards</a></li>
                                <li><a href="shop.html">Underwear</a></li>
                            </ul>
                        </div>
                        <div class="col_1_of_5 span_1_of_5">
                            <h3 class="m_9">Support</h3>
                            <ul class="list1">
                                <li><a href="shop.html">Store finder</a></li>
                                <li><a href="shop.html">Customer Service</a></li>
                                <li><a href="shop.html">FAQ</a></li>
                                <li><a href="shop.html">Online Shop Contact Us</a></li>
                                <li><a href="shop.html">about adidas Products</a></li>
                                <li><a href="shop.html">Size Charts </a></li>
                                <li><a href="shop.html">Ordering </a></li>
                                <li><a href="shop.html">Payment </a></li>
                                <li><a href="shop.html">Shipping </a></li>
                                <li><a href="shop.html">Returning</a></li>
                                <li><a href="shop.html">Using out Site</a></li>
                                <li><a href="shop.html">Delivery Terms</a></li>
                                <li><a href="shop.html">Site Map</a></li>
                                <li><a href="shop.html">Gift Card</a></li>

                            </ul>
                            <ul class="sub_list2">
                                <h4 class="m_10">Company Info</h4>
                                <li><a href="shop.html">About Us</a></li>
                                <li><a href="shop.html">Careers</a></li>
                                <li><a href="shop.html">Press</a></li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
            <div class="copy">
                <div class="wrap">
                    <p>© All rights reserved | Template by&nbsp;<a href="http://w3layouts.com/"> W3Layouts</a></p>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            $(document).ready(function () {

                var defaults = {
                    containerID: 'toTop', // fading element id
                    containerHoverID: 'toTopHover', // fading element hover id
                    scrollSpeed: 1200,
                    easingType: 'linear'
                };


                $().UItoTop({easingType: 'easeOutQuart'});

            });
        </script>
        <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
    </body>
</html>
