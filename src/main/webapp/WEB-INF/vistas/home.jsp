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
        <title>M07_EAC2_edsport</title>
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
             <!--   <ul class="icon2 sub-icon2 profile_img">
                    <li><a class="active-icon c2" href="#"> </a>
                        <ul class="sub-icon2 list">
                            <li><h3>Products</h3><a href=""></a></li>
                            <li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
                        </ul>
                    </li>
                </ul>-->
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
            <div class="wmuSlider example1" style="height: 394px;">
                <div class="wmuSliderWrapper">
                    <c:set var="aux_opacity" scope="page" value="1"/>
                    <c:forEach var="novedad" items="${novedades}">                         
                        <article style='position: relative; width: 100%; opacity: ${aux_opacity};'>
                        <c:if test="${aux_opacity==1}">                            
                            <c:set var="aux_opacity" scope="page" value="0"/> 
                        </c:if>
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
                                        <img src="static/resources/images/plus.png" alt=""/>
                                        <ul class="icon1 sub-icon1 profile_img">
                                            <li><a class="active-icon c1" href="#"> Al carrito</a>
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
                 
                </div>
                 
                 
                 
            </div>
        </div>
        <div class="footer">
            <div class="footer-top">
                <div class="wrap">
                    <div class="col_1_of_footer-top span_1_of_footer-top">
                        <ul class="f_list">
                            <li><img src="static/resources/images/f_icon.png" alt=""/><span class="delivery">Envío gratis a partir de 100€*</span></li>
                        </ul>
                    </div>
                    <div class="col_1_of_footer-top span_1_of_footer-top">
                        <ul class="f_list">
                            <li><img src="static/resources/images/f_icon1.png" alt=""/><span class="delivery">Customer Service :<span class="orange"> (900) 000-2587 (télefono gratuito)</span></span></li>
                        </ul>
                    </div>
                    <div class="col_1_of_footer-top span_1_of_footer-top">
                        <ul class="f_list">
                            <li><img src="static/resources/images/f_icon2.png" alt=""/><span class="delivery">Entregas rápidas & devoluciones gratis</span></li>
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
                                <dt><a href="#"><span>Seleccione un destino</span></a></dt>
                                <dd>
                                    <ul>
                                        <li><a href="#">Australia<img class="flag" src="static/resources/images/as.png" alt="" /><span class="value">AS</span></a></li>
                                        <li><a href="#">Sri Lanka<img class="flag" src="static/resources/images/srl.png" alt="" /><span class="value">SL</span></a></li>
                                        <li><a href="#">Newziland<img class="flag" src="static/resources/images/nz.png" alt="" /><span class="value">NZ</span></a></li>
                                        <li><a href="#">Pakistan<img class="flag" src="static/resources/images/pk.png" alt="" /><span class="value">Pk</span></a></li>
                                        <li><a href="#">United Kingdom<img class="flag" src="static/resources/images/uk.png" alt="" /><span class="value">UK</span></a></li>
                                        <li><a href="#">United States<img class="flag" src="static/resources/images/us.png" alt="" /><span class="value">US</span></a></li>
                                    </ul>
                                </dd>
                            </dl>
                        </div>
                        <div class="col_1_of_middle span_1_of_middle">
                            <ul class="f_list1">
                                <li><span class="m_8">Registrate y obtén un 15% de descuento</span>
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
            
            <div class="copy">
                <div class="wrap">
                    <p> by&nbsp;<a href="http://www.edlobe.com/"> edlobez </a></p>
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
