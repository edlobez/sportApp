<%-- 
    Document   : single
    Created on : 25-oct-2020, 17:47:06
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
<script type="text/javascript">
        $(document).ready(function() {
            $(".dropdown img.flag").addClass("flagvisibility");

            $(".dropdown dt a").click(function() {
                $(".dropdown dd ul").toggle();
            });

            $(".dropdown dd ul li a").click(function() {
                var text = $(this).html();
                $(".dropdown dt a span").html(text);
                $(".dropdown dd ul").hide();
                $("#result").html("Selected value is: " + getSelectedValue("sample"));
            });

            function getSelectedValue(id) {
                return $("#" + id).find("dt a span.value").html();
            }

            $(document).bind('click', function(e) {
                var $clicked = $(e.target);
                if (! $clicked.parents().hasClass("dropdown"))
                    $(".dropdown dd ul").hide();
            });


            $("#flagSwitcher").click(function() {
                $(".dropdown img.flag").toggleClass("flagvisibility");
            });
        });
     </script>
<!-- start menu -->
<link href="static/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="static/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- end menu -->
<script type="text/javascript" src="static/js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script>
<!----details-product-slider--->
				<!-- Include the Etalage files -->
					<link rel="stylesheet" href="static/css/etalage.css">
					<script src="static/js/jquery.etalage.min.js"></script>
				<!-- Include the Etalage files -->
				<script>
						jQuery(document).ready(function($){

							$('#etalage').etalage({
								thumb_image_width: 300,
								thumb_image_height: 400,

								show_hint: true,
								click_callback: function(image_anchor, instance_id){
									alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
								}
							});
							// This is for the dropdown list example:
							$('.dropdownlist').change(function(){
								etalage_show( $(this).find('option:selected').attr('class') );
							});

					});
				</script>
				<!----//details-product-slider--->
<!-- top scrolling -->
<script type="text/javascript" src="static/js/move-top.js"></script>
<script type="text/javascript" src="static/js/easing.js"></script>
   <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
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

       <div class="single">
         <div class="wrap">

  
  <!--Filtros de la izquierda
     	    <div class="rsidebar span_1_of_left">
				   <section  class="sky-form">
                   	  <h4>Occasion</h4>
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
                   	  <h4>Category</h4>
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
					  <h4>Styles</h4>
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
					<h4>Brand</h4>
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
		         <section  class="sky-form">
					<h4>Heel Height</h4>
						<div class="row row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Flat (20)</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Under 1in(5)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>1in - 1 3/4 in(5)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>2in - 2 3/4 in(3)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>3in - 3 3/4 in(2)</label>
							</div>
						</div>
		        </section>
		        <section  class="sky-form">
					<h4>Price</h4>
						<div class="row row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>$50.00 and Under (30)</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$100.00 and Under (30)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$200.00 and Under (30)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$300.00 and Under (30)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$400.00 and Under (30)</label>
							</div>
						</div>
		        </section>
		        <section  class="sky-form">
					<h4>Colors</h4>
						<div class="row row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Red</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i></label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Black</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Yellow</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Orange</label>
							</div>
						</div>
		        </section>
		</div>
Fin filtros de la izquierda -->


		<div class="cont span_2_of_3">
			  <div class="labout span_1_of_a1">
				<!-- start product_slider -->
				     <ul id="etalage">
							<li>
								<a href="optionallink.html">
									<img class="etalage_thumb_image" src="static/resources/images/${producto.id}/${color_actual}/t1.jpg" />
									<img class="etalage_source_image" src="static/resources/images/${producto.id}/${color_actual}/t2.jpg" />
								</a>
							</li>
							<li>
								<img class="etalage_thumb_image" src="static/resources/images/${producto.id}/${color_actual}/t2.jpg" />
								<img class="etalage_source_image" src="static/resources/images/${producto.id}/${color_actual}/t2.jpg" />
							</li>
							<li>
								<img class="etalage_thumb_image" src="static/resources/images/${producto.id}/${color_actual}/t3.jpg" />
								<img class="etalage_source_image" src="static/resources/images/${producto.id}/${color_actual}/t3.jpg" />
							</li>
							<!--<li>
								<img class="etalage_thumb_image" src="images/t4.jpg" />
								<img class="etalage_source_image" src="images/t4.jpg" />
							</li>
							<li>
								<img class="etalage_thumb_image" src="images/t5.jpg" />
								<img class="etalage_source_image" src="images/t5.jpg" />
							</li>
							<li>
								<img class="etalage_thumb_image" src="images/t6.jpg" />
								<img class="etalage_source_image" src="images/t6.jpg" />
							</li>
							<li>
								<img class="etalage_thumb_image" src="images/t1.jpg" />
								<img class="etalage_source_image" src="images/t1.jpg" />
							</li>-->
						</ul>


			<!-- end product_slider -->
			</div>

      <!-- El producto clicado -->
			<div class="cont1 span_2_of_a1">
				<h3 class="m_3">${producto.marca} ${producto.tipo_producto}</h3>

				<div class="price_single">
							 <!-- <span class="reducedfrom"></span>-->
							  <span class="actual">${producto.precio}€</span><!--<a href="#">click for offer</a>-->
							</div>
				
                                                        
                                <ul class="options">
					<h4 class="m_9">Seleccione color</h4>
                                        <c:forEach var="colores" items="${colores}">
                                            <li><a href="${pageContext.servletContext.contextPath}/single?id=${producto.id}&color=${colores.color}">${colores.color}</a></li>                                           
                                        </c:forEach>
					<div class="clear"></div>
                                        <div class="clear"></br></div>
				</ul>
                                                        
                                <ul class="options">
					<h4 class="m_9">Seleccione una talla</h4>
                                        <c:forEach var="stock" items="${stocks}">
                                            <li><a href="#">${stock.talla}</a></li>                                           
                                        </c:forEach>
					<div class="clear"></div>
				</ul>
				<div class="btn_form">
				   <form>
					 <input type="submit" value="Comprar ahora" title="">
				  </form>
				</div>
				<ul class="add-to-links">
    			   <li><img src="static/resources/images/wish.png" alt=""/><a href="#">Añadir a favoritos</a></li>
    			</ul>
    			<p class="m_desc">${producto.descripcion}</p>

                <div class="social_single">
				   <ul>
					  <li class="fb"><a href="#"><span> </span></a></li>
					  <li class="tw"><a href="#"><span> </span></a></li>
					  <li class="g_plus"><a href="#"><span> </span></a></li>
					  <li class="rss"><a href="#"><span> </span></a></li>
				   </ul>
			    </div>
			</div>
			<div class="clear"></div>


<!-- slide de productos similares
         <ul id="flexiselDemo3">
			<li><img src="images/pic11.jpg" /><div class="grid-flex"><a href="#">Bloch</a><p>Rs 850</p></div></li>
			<li><img src="images/pic10.jpg" /><div class="grid-flex"><a href="#">Capzio</a><p>Rs 850</p></div></li>
			<li><img src="images/pic9.jpg" /><div class="grid-flex"><a href="#">Zumba</a><p>Rs 850</p></div></li>
			<li><img src="images/pic8.jpg" /><div class="grid-flex"><a href="#">Bloch</a><p>Rs 850</p></div></li>
			<li><img src="images/pic7.jpg" /><div class="grid-flex"><a href="#">Capzio</a><p>Rs 850</p></div></li>
		 </ul>

-->
	    <script type="text/javascript">
		 $(window).load(function() {
			$("#flexiselDemo1").flexisel();
			$("#flexiselDemo2").flexisel({
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: {
		    		portrait: {
		    			changePoint:480,
		    			visibleItems: 1
		    		},
		    		landscape: {
		    			changePoint:640,
		    			visibleItems: 2
		    		},
		    		tablet: {
		    			changePoint:768,
		    			visibleItems: 3
		    		}
		    	}
		    });

			$("#flexiselDemo3").flexisel({
				visibleItems: 5,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: {
		    		portrait: {
		    			changePoint:480,
		    			visibleItems: 1
		    		},
		    		landscape: {
		    			changePoint:640,
		    			visibleItems: 2
		    		},
		    		tablet: {
		    			changePoint:768,
		    			visibleItems: 3
		    		}
		    	}
		    });

		});
	</script>
	<script type="text/javascript" src="static/js/jquery.flexisel.js"></script>
	 <div class="toogle">
     	<h3 class="m_3">Descripcion</h3>
     	<p class="m_text">${producto.descripcion}</p>
     </div>
	 <div class="toogle">
             <c:if test="${producto.caracteristicas!=null}">
                <h3 class="m_3">Características</h3>
                <p class="m_text">${producto.caracteristicas}.</p>
            </c:if>
     </div>
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
			$(document).ready(function() {

				var defaults = {
		  			containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear'
		 		};


				$().UItoTop({ easingType: 'easeOutQuart' });

			});
		</script>
        <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
</body>
</html>

