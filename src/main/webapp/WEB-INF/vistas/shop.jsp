<%-- 
    Document   : shop
    Created on : 23-oct-2020, 18:18:14
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
        <link href="static/css/form.css" rel="stylesheet" type="text/css" media="all" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="static/js/jquery.min.js"></script>
        <script src="static/js/jquery.easydropdown.js"></script>
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
        $(".megamenu").megamenu();});</script>
        <!-- end menu -->
        <script type="text/javascript" src="static/js/jquery.jscrollpane.min.js"></script>
        <script type="text/javascript" id="sourcecode">
$(function ()
{
$('.scroll-pane').jScrollPane();
});
        </script>
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
        <div class="login">
            <div class="wrap">
                <div class="rsidebar span_1_of_left">
                    <section  class="sky-form">
                        <h4>Marca</h4>
                        <div class="row row1 scroll-pane">
                            <div class="col col-4">
                                <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Athletic (20)</label>
                            </div>
                            <div class="col col-4">
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Athletic Shoes (48)</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Casual (45)</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Casual (45)</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other (1)</label>
                            </div>
                        </div>
                        <h4>Categoria</h4>
                        <div class="row row1 scroll-pane">
                            <div class="col col-4">
                                <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Flats (70)</label>
                            </div>
                            <div class="col col-4">
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Athletic Shoes (48)</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Athletic Shoes (48)</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Heels (38)</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other (1)</label>
                            </div>
                        </div>
                        <h4>Color</h4>
                        <div class="row row1 scroll-pane">
                            <div class="col col-4">
                                <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Athletic (20)</label>
                            </div>
                            <div class="col col-4">
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Ballerina (5)</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Pumps (7)</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>High Tops (2)</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other (1)</label>
                            </div>
                        </div>
                    </section>
                    <section  class="sky-form">
                        <h4>Precio</h4>
                        <div class="row row1 scroll-pane">
                            <div class="col col-4">
                                <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Adidas by Stella McCartney</label>
                            </div>
                            <div class="col col-4">
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Asics</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Bloch</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Bloch Kids</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Capezio</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>Capezio Kids</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Nike</label>
                                <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Zumba</label>
                            </div>
                        </div>
                    </section>
            
                </div>


                <div class="cont span_2_of_3">
                    <div class="mens-toolbar">
                        <div class="sort">
                            <div class="sort-by">
                                <label>Ordenado por</label>
                                <select id="selectOrden">                                    
                                    <option value="highToLow">
                                        Precio : Más alto primero          </option>
                                    <option value="lowToHigh">
                                        Precio : Más bajo primero           </option>
                                    <option value="none">
                                        Popularidad               </option>
                                </select>
                                
                                
                                
                               <!-- <a href=""><img src="static/resources/images/arrow2.gif" alt="" class="v-middle"></a>-->
                            </div>
                        </div>
                        <div class="pager">   
                            <div class="limiter visible-desktop">
                                <label>Mostrar</label>
                                <select>
                                    <option value="" selected="selected">
                                        9                </option>
                                    <option value="">
                                        15                </option>
                                    <option value="">
                                        30                </option>
                                </select> por pág        
                            </div>
                            <ul class="dc_pagination dc_paginationA dc_paginationA06">
                                <li><a href="#" class="previous">Pág</a></li>
                                <li><a href="#">1</a></li>                                
                            </ul>
                            <div class="clear"></div>
                        </div>
                        <div class="clear"></div>
                    </div>
 
<div id="lista_productos">               
                 
              
                <c:forEach begin="0" step="1" end="${filas-1}" var="fila">
                    <div class="box1">
                        
                        <c:forEach var="producto" items="${productos[fila]}">
                            <c:if test="${producto!=null}">   
                        <div class="col_1_of_single1 span_1_of_single1"><a href="${pageContext.servletContext.contextPath}/single?id=${producto.id}">
                                <div class="view1 view-fifth1">
                                    <div class="top_box">
                                        <h3 class="m_1" id="producto_marca">${producto.marca}</h3>
                                        <p class="m_2">${producto.tipo_producto}</p>
                                        <div class="grid_img">
                                            <div class="css3"><img src="static/resources/images/${producto.id}/vista_1.jpg" alt=""/></div>
                                            <div class="mask1">
                                                <div class="info">Ver producto</div>
                                            </div>
                                        </div>
                                        <div class="price">${producto.precio}€</div>
                                    </div>
                                </div>
                                <span class="rating1">
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
                                <ul class="list2">
                                    <li>
                                        <img src="static/resources/images/plus.png" alt=""/>
                                        <ul class="icon1 sub-icon1 profile_img">
                                            <li><a class="active-icon c1" href="#">Al carrito </a>
                                                <ul class="sub-icon1 list">
                                                    <li><h3>${producto.marca}</h3><a href=""></a></li>
                                                    <li><p>${producto.tipo_producto}  <a href="">${producto.modelo}</a></p></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                                <div class="clear"></div>
                            </a></div>
                            </c:if>  
                        </c:forEach>
                    </div>
                        <div class="clear"></div>
                    
                    <!-- HASTA AQUI -->
                </c:forEach>
                   </div>
                    <div class="clear"></div>
                
                
                                        
                                        
            </div>
            <div class="clear"></div>
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
    <script>                                    
    $('#selectOrden').on('click', function() {
        //alert(this.options[this.selectedIndex].value);
        //var data = "orden_opcion=" + this.options[this.selectedIndex].value;                                        
        var _url = '${home}shop/ordenarProductos?orden=' + this.options[this.selectedIndex].value ;   
        var htmlRender = "";
        $.ajax({
            type: "GET",
            crossDomain: true,
            dataType: "text",
            async: true,
            url: _url,
            success: function (data) {
                if (data!=null) {
                                                                    
                    //$('#producto_marca').val(marca);
                    //$('#lista_productos').remove();
                                        
                    var aux = JSON.parse(data)
                    console.log(parseInt(aux.n_filas));
                    //for ( var j = 0; j < parseInt(aux.n_filas); j++) {
                        //htmlRender = htmlRender + "<div class='box1'>";
                        var index_aux = 0;                        
                        for ( var i = 0; i < aux.data.length; i++ ) {
                          if ( index_aux == 0) {
                              console.log("fila nueva " + index_aux);                              
                              htmlRender = htmlRender + "<div class='box1'>";
                          }
                          else if ( index_aux % 3 == 0 ) {
                              htmlRender =  htmlRender + "</div><div class='clear'></div><div class='box1'>";
                          }
                          htmlRender = htmlRender + "<div class='col_1_of_single1 span_1_of_single1'><a href='${pageContext.servletContext.contextPath}/single?id=" + aux.data[i].id + "'>"; 
                          htmlRender = htmlRender + "<div class='view1 view-fifth1'>";
                          htmlRender = htmlRender + "<div class='top_box'>";
                          htmlRender = htmlRender + "<h3 class='m_1'>" + aux.data[i].marca + "</h3>";
                          htmlRender = htmlRender + "<p class='m_2'>" +  aux.data[i].tipo_producto + "</p>";
                          htmlRender = htmlRender + "<div class='grid_img'>";
                          htmlRender = htmlRender + "<div class='css3'><img src='static/resources/images/" + aux.data[i].id + "/vista_1.jpg' alt=''/></div>";
                          htmlRender = htmlRender + "<div class='mask1'><div class='info'>Ver producto</div></div></div>";
                          htmlRender = htmlRender + "<div class='price'>" + aux.data[i].precio + "€</div>";
                          htmlRender = htmlRender + "</div></div><span class='rating1'><input type='radio' class='rating-input' id='rating-input-1-5' name='rating-input-1'><label for='rating-input-1-5' class='rating-star1'></label><input type='radio' class='rating-input' id='rating-input-1-4' name='rating-input-1'><label for='rating-input-1-4' class='rating-star1'></label><input type='radio' class='rating-input' id='rating-input-1-3' name='rating-input-1'><label for='rating-input-1-3' class='rating-star1'></label><input type='radio' class='rating-input' id='rating-input-1-2' name='rating-input-1'><label for='rating-input-1-2' class='rating-star'></label><input type='radio' class='rating-input' id='rating-input-1-1' name='rating-input-1'></span><ul class='list2'><li><img src='static/resources/images/plus.png' alt=''/><ul class='icon1 sub-icon1 profile_img'><li><a class='active-icon c1' href='#'>Al carrito </a><ul class='sub-icon1 list'>";
                          htmlRender = htmlRender + "<li><h3>" + aux.data[i].marca + "</h3><a href=''></a></li>";
                          htmlRender = htmlRender + "<li><p>" + aux.data[i].tipo_producto + "  <a href=''>" + aux.data[i].modelo + "</a></p></li>";
                          htmlRender = htmlRender + "</ul></li></ul></li></ul><div class='clear'></div>";
                          htmlRender = htmlRender + "</a></div>"; // col_1_of_single1
                          index_aux++;
                        }
                        
                        //console.log(aux.data[i].precio);
                    //}
                        
                    $('#lista_productos').html(htmlRender);
                    

                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.info('in error');
                console.log(jqXHR, textStatus, errorThrown);
                alert('Error');
            }
        });   
    });

</script>
    
    
    <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
</body>
</html>
