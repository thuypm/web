<%-- 
    Document   : product.jsp
    Created on : Nov 20, 2019, 8:20:05 PM
    Author     : MINH THUY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String productID = request.getParameter("productID");
%>
<!DOCTYPE html>
 <link rel="stylesheet" type="text/css" href="css/em_cloudzoom.css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/blog-styles.css" media="all" />
        
  
<%@ include file = "header.jsp" %>
<div class="wrapper-breadcrums">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-24">
                                <div class="breadcrumbs">
                                    <ul>
                                        <li class="home"> <a href="index.html" title="Home"><span>Home</span></a> <span class="separator">/ </span>
                                        </li>
                                            <li class="category36"> <a href="category-one-column.html"><span>Shoes</span></a> <span class="separator">/ </span>
                                        </li>
                                        <li class="product"> <strong>WIASSI Version 1</strong>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- /.wrapper-breadcrums -->

                <div class="em-wrapper-main">
                    <div class="container-fluid container-main">
                        <div class="em-inner-main">
                            <div class="em-wrapper-area02"></div>
                            <div class="em-wrapper-area03"></div>
                            <div class="em-wrapper-area04"></div>
                            <div class="em-main-container em-col1-layout">
                                <div class="row">
                                    <div class="em-col-main col-sm-22 col-sm-offset-1">
                                        <div id="messages_product_view"></div>
                                        <div class="product-view">
                                            <div class="product-essential">
                                                <form method="post" id="product_addtocart_form">
                                                    <input name="form_key" type="hidden" value="N4DL2crX27DuHSDk" />
                                                    <div class="product-view-detail">
                                                        <div class="em-product-view row">
                                                            <div class="em-product-view-primary em-product-img-box col-sm-16 first">
                                                                <div id="em-product-shop-pos-top"></div>
                                                                <div class="product-img-box">
                                                                    <div class="media-left">
                                                                        <p class="product-image">
                                                                            <a class="cloud-zoom" id="image_zoom" rel="zoomWidth: 500,zoomHeight: 500,position: 'inside'" :href="'images/product/1000x1000/' + product.productID.trim() + '.jpg'"> <img class="em-product-main-img" v-bind:src="'images/product/800x800/' + product.productID.trim() + '.jpg'" alt='' title="WIASSI Version 1" /> </a> <a id="zoom-btn" rel="lightbox[em_lightbox]" v-bind:href="'images/product/1000x1000/' + product.productID.trim() + '.jpg'" title="WIASSI Version 1">Zoom</a>
                                                                        </p>
                                                                    </div><!-- /.media-left -->
                                                                    <div class="more-views">
                                                                        <ul class="em-moreviews-slider ">
                                                                            <li class="item">
                                                                                <a class="cloud-zoom-gallery" rel="useZoom:'image_zoom', smallImage:'images/product/800x800/4_1.jpg', adjustX:5, adjustY:-5, position:'inside'" onclick="return false" v-bind:src="'images/product/1000x1000/' + product.productID.trim() + '.jpg'"> <img v-bind:src="'images/product/350x350/' + product.productID.trim() + '.jpg'" alt="" /> </a> <a class="no-display" href="images/product/1000x1000/4_1.jpg" rel="lightbox[em_lightbox]">lightbox moreview</a>
                                                                            </li>
                                                                         
                                                                        </ul>
                                                                    </div><!-- /.more-views -->
                                                                </div>
                                                            </div><!-- /.em-product-view-primary -->
                                                            <div class="em-product-view-secondary em-product-shop col-sm-8">
                                                                <div class="product-shop  fix_menu">
                                                                    <div id="em-product-info-basic">
                                                                        <div class="product-name">
                                                                            <h1>{{product.name}}</h1>
                                                                        </div>
                                                                     
                                                                        <div class="em-sku-availability">
                                                                            
                                                                            <p class="availability in-stock"> Availability: <span class="value">{{product.amount}}</span>
                                                                            </p>
                                                                        </div>
                                                                        <div class="short-description">
                                                                            <h2>Quick Overview</h2>
                                                                            <div class="std">{{product.description}}</div>
                                                                        </div>
                                                                        <div class="em-addthis-plug"> <span>Share</span>
                                                                            <a href="#" target="_blank"><img alt="Facebook" src="images/social/facebook.png" />
                                                                            </a>
                                                                            <a href="#" target="_blank"><img alt="Twitter" src="images/social/twitter.png" />
                                                                            </a>
                                                                            <a href="#" target="_blank"><img alt="Google+" src="images/social/google_plusone_share.png" />
                                                                            </a>
                                                                            <a href="#" target="_blank"><img alt="Pinterest" src="images/social/pinterest.png" />
                                                                            </a>
                                                                            <a href="#" target="_blank"><img alt="LinkedIn" src="images/social/linkedin.png" />
                                                                            </a>
                                                                            <a href="#" target="_blank"><img alt="Email" src="images/social/email.png" />
                                                                            </a>
                                                                        </div><!-- /.em-addthis-plug -->
                                                                        <div>
                                                                            
                                                                            <p class="availability in-stock">Availability: <span>In stock</span>
                                                                            </p>
                                                                            
                                                                            <div class="price-box"> <span class="regular-price" id="product-price-206"> <span class="price"  content="750">$ {{product.price}}</span> </span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="add-to-box">
                                                                            <div class="add-to-cart">
                                                                                <label for="qty">Qty:</label>
                                                                                <div class="qty_cart">
                                                                                    <div class="qty-ctl">
                                                                                        <button title="decrease" onclick="changeQty(0); return false;" class="decrease">decrease</button>
                                                                                    </div>
                                                                                    <input type="text" name="qty" id="qty" maxlength="12" value="1" title="Qty" class="input-text qty" />
                                                                                    <div class="qty-ctl">
                                                                                        <button title="increase" onclick="changeQty(1); return false;" class="increase">increase</button>
                                                                                    </div>
                                                                                </div>
                                                                                <ul class="add-to-links">
                                                                                    <li><a title="Add to Wishlist" href="#" class="link-wishlist">Add to Wishlist</a>
                                                                                    </li>
                                                                                    <li><span class="separator">|</span> <a href="#" title="Add to Compare" class="link-compare">Add to Compare</a>
                                                                                    </li>
                                                                                </ul>
                                                                                <div class="button_addto">
                                                                                  
                                                                                    <button type="button" title="Add to Cart" id="product-addtocart-button" v-on:click="addToCart()" class="button btn-cart btn-cart-detail"><span><span>Add to Cart</span></span>
                                                                                    </button>
                                                                                </div>
                                                                            </div><!-- /.add-to-cart -->
                                                                        </div><!-- /.add-to-box -->
                                                                    </div><!-- /.em-product-info-basic -->
                                                                </div>
                                                            </div><!-- /.em-product-view-secondary -->
                                                        </div>
                                                        <div class="clearer"></div>
                                                    </div><!-- /.product-view-detail -->
                                                </form>
                                            </div><!-- /.product-essential -->
                                        
                                            <div class="row">
                                                <div class="em-product-view-primary col-sm-16 first">
                                                    <div class="em-product-info ">
                                                        <div class="em-product-details ">
                                                            <div class="em-details-tabs product-collateral">
                                                                <div class="em-details-tabs-content">
                                                                    <div class="box-collateral em-line-01 box-description">
                                                                        <div class="em-block-title">
                                                                            <h2>Details</h2>
                                                                        </div>
                                                                        <div class="box-collateral-content">
                                                                            <div class="std">{{product.description}}</div>
                                                                        </div>
                                                                    </div><!-- /.box-collateral -->
                                                                
                                                                </div><!-- /.em-details-tabs-content -->
                                                            </div><!-- /.em-details-tabs -->
                                                         
                                                        </div><!-- /.em-product-details -->
                                                    </div><!-- /.em-product-info -->
                                                    <div id="em-product-shop-pos-bottom" style="display:inline-block;"></div>
                                                </div>
                                            </div>
                                        </div><!-- /.product-view -->
                                    </div>
                                </div>
                            </div><!-- /.em-main-container -->
                        </div>
                    </div>
                </div><!-- /.em-wrapper-main -->
                  <%@  include file="/footer.jsp" %>  
                  <script type="text/javascript" src="js/cloud-zoom.js"></script>
         <script type="text/javascript">
            layout = '1column';
        </script>
        <!-- Product View Js -->
        <script type="text/javascript" src="js/em_product_view.js"></script>
        <!-- Lightbox Js -->
        <script type="text/javascript" src="js/lightbox.min.js"></script>
        <script type="text/javascript">
            jQuery('.cloud-zoom-gallery').click(function() {
                jQuery('#zoom-btn').attr('href', this.href);
            });
            function doSliderMoreview() {
                var owl = $("ul.em-moreviews-slider");
                if (owl.length) {
                    owl.owlCarousel({
                        // Navigation
                        navigation: true,
                        navigationText: ["Previous", "Next"],
                        pagination: false,
                        paginationNumbers: false,
                        // Responsive
                        responsive: true,
                        items: 7,
                        /*items above 1200px browser width*/
                        itemsDesktop: [1200, 4],
                        /*//items between 1199px and 981px*/
                        itemsDesktopSmall: [992, 7],
                        itemsTablet: [768, 3],
                        itemsMobile: [480, 2],
                        // CSS Styles
                        baseClass: "owl-carousel",
                        theme: "owl-theme",
                        transitionStyle: false,
                        addClassActive: true,
                    });
                }
            }

            function changeQty(increase) {
                var qty = parseInt($('#qty').val());
                if (!isNaN(qty)) {
                    console.log(qty)
                    qty = increase ? qty + 1 : (qty > 1 ? qty - 1 : 1);
                    $('#qty').val(qty);
                }
            }

            /* Related Product */
            var relatedProductsCheckFlag = false;

            function selectAllRelated(txt) {
                if (relatedProductsCheckFlag == false) {
                    $('.related-checkbox').each(function(elem) {
                        elem.checked = true;
                    });
                    relatedProductsCheckFlag = true;
                    txt.innerHTML = "unselect all";
                } else {
                    $('.related-checkbox').each(function(elem) {
                        elem.checked = false;
                    });
                    relatedProductsCheckFlag = false;
                    txt.innerHTML = "select all";
                }
                addRelatedToProduct();
            };
            function addRelatedToProduct() {
                var checkboxes = $('.related-checkbox');
                var values = [];
                for (var i = 0; i < checkboxes.length; i++) {
                    if (checkboxes[i].checked) values.push(checkboxes[i].value);
                }
                if ($('related-products-field')) {
                    $('related-products-field').value = values.join(',');
                }
            };

            (function($) {
                $(window).load(function() {
                    if (!isPhone) {
                        $('.cloud-zoom, .cloud-zoom-gallery').CloudZoom();
                    }
                    doSliderMoreview();

                    /* Related Slider */
                    var owl = $('#em-related').find('.em-related-slider');
                    if (owl.length) {
                        owl.owlCarousel({
                            // Navigation
                            navigation: true,
                            navigationText: ["Previous", "Next"],
                            pagination: false,
                            paginationNumbers: false,
                            // Responsive
                            responsive: true,
                            items: 4,
                            /*items above 1200px browser width*/
                            itemsDesktop: [1200, 4],
                            /*//items between 1199px and 981px*/
                            itemsDesktopSmall: [992, 3],
                            itemsTablet: [768, 3],
                            itemsMobile: [480, 2],
                            // CSS Styles
                            baseClass: "owl-carousel",
                            theme: "owl-theme",
                            transitionStyle: false,
                            addClassActive: true,
                            afterMove: function() {
                                var $_img = owl.find('img.em-img-lazy');
                                if ($_img.length) {
                                    var timeout = setTimeout(function() {
                                        $_img.trigger("appear");
                                    }, 200);
                                }
                            },
                        });
                    }

                    /* Related Checkbox */
                    $( ".related-checkbox" ).on( "click", function() {
                        addRelatedToProduct()
                    });
                });
            })(jQuery);
        </script>
    <script>

  var app =  new Vue({
    el: ".em-wrapper-main",
    data: {
       product: {
           
       }
    },
   mounted: function(){
      
       
         axios.get("product/productInfo/<%= productID %>").then((res)=>   
                             {
                            
                        
                                this.product = res.data;
                             })
    
    },
    methods: {
  addToCart(){
            var numOfCart =  document.getElementById("numOfCart");
               axios.post("/user/do/addToCart", {productID: this.product.productID, numOfProduct: 1} ).then((res)=>{
                   console.log(res.data)
                    if(res.data == 1)
                    {

                        alert("thêm thành công");
                       
                        numOfCart.textContent = (parseInt(numOfCart.textContent) + 1).toString();
                    }
                    else 
                        window.location.href ='/signin'
                })
        }
    }
    })
</script>