<%-- 
    Document   : index
    Created on : Nov 19, 2019, 2:58:58 PM
    Author     : MINH THUY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file = "header.jsp" %>
                <div class="em-wrapper-main">
                    <div class="container container-main">
                        <div class="em-inner-main">
                         

                            <div class="em-main-container em-col0-left-layout">
                                <div class="row">
                                    <div class="col-sm-24 col-sm-push-0 em-col-main">
                                        <div class="em-wrapper-area03">
                                            <div class="em-slideshow">
                                                <div class="em-owlcarousel-slideshow">
                                                    <div id="em_owlcarousel_2_2484_sync1" class="owl-carousel">
                                                        <div class="item">
                                                            <a href="#"> <img alt="1435569308_0_1.jpg" class="lazyOwl img-responsive" src="images/loading.gif" data-src="images/em_minislideshow/1435569308_0_1.jpg" /> </a>
                                                            <div class="em-owlcarousel-description">
                                                                <div class="fadeInLeft em-owlcarousel-des em-owlcarousel-des-0">
                                                                    <h3 style="font:italic 2rem/1 Lora,Helvetica Neue, Helvetica, Arial, sans-serif;margin-bottom:1.7rem;">High Fashion Collection 2015</h3>
                                                                    <h1 style="font:700 6rem/1 Raleway,Helvetica Neue, Helvetica, Arial, sans-serif;  margin-bottom: 3rem;" class="em-text-upercase">em stores</h1> <a href="#" class="button-link first"><span>purchase now</span></a> <a href="#" class="button-link"><span>shop now</span></a>
                                                                </div>
                                                            </div>
                                                        </div><!-- /.item -->
                                                        <div class="item">
                                                            <a href="#"> <img alt="1435569308_1_2.jpg" class="lazyOwl img-responsive" src="images/loading.gif" data-src="images/em_minislideshow/1435569308_1_2.jpg" /> </a>
                                                            <div class="em-owlcarousel-description">
                                                                <div class="fadeInDown em-owlcarousel-des em-owlcarousel-des-1">
                                                                    <h4 style="font:italic 3rem/1 Lora,Helvetica Neue, Helvetica, Arial, sans-serif;  margin-bottom: 3.5rem;">Hot discounts of the week</h4>
                                                                    <h2 style="font:700 6rem/1 Raleway,Helvetica Neue, Helvetica, Arial, sans-serif;  margin-bottom: 3rem;" class="em-text-upercase">sale up 70% off</h2>
                                                                    <h4 class="em-text-upercase" style="font:500 2rem/1 Lato,Helvetica Neue, Helvetica, Arial, sans-serif;">only over oders on $99.99</h4>
                                                                </div>
                                                            </div>
                                                        </div><!-- /.item -->
                                                        <div class="item">
                                                            <a href="#"> <img alt="1436500083_0_slideshow3.jpg" class="lazyOwl img-responsive" src="images/loading.gif" data-src="images/em_minislideshow/1436500083_0_slideshow3.jpg" /> </a>
                                                            <div class="em-owlcarousel-description">
                                                                <div class="fadeInRight em-owlcarousel-des em-owlcarousel-des-2">
                                                                    <h3 style="font:italic 2rem/1 Lora,Helvetica Neue, Helvetica, Arial, sans-serif;margin-bottom:1.7rem;">Long Weekend Sale Off</h3>
                                                                    <h1 style="font:700 6rem/1 Raleway,Helvetica Neue, Helvetica, Arial, sans-serif; margin-bottom: 3rem;" class="em-text-upercase">couple shop</h1> <a href="#" class="button-link first"><span>purchase now</span></a> <a href="#" class="button-link"><span>shop now</span></a>
                                                                </div>
                                                            </div>
                                                        </div><!-- /.item -->
                                                    </div><!-- /# em_owlcarousel_2_2484_sync1 -->
                                                </div><!-- /.em-owlcarousel-slideshow -->
                                            </div><!-- /.em-slideshow -->
                                        </div><!-- /.em-wrapper-area03 -->
                                        <div class="std"></div>
                                     

                                        <div class="em-wrapper-new-arrivals-tabs">
                                            <div class="em-new-arrivals-tabs em-line-01">
                                                <div class="emtabs-ajaxblock-loaded">
                                                    <div class="em-tabs-widget tabs-widget ">
                                                        <div class="widget-title em-widget-title">
                                                            <h3><span>Products</span></h3>
                                                        </div>
                                                        <div id="emtabs_1" class="em-tabs emtabs r-tabs">
                                                            <ul class="em-tabs-control tabs-control r-tabs-nav">
                                                       <li href="" v-for="(category, id) in listCategory" :key="id" class="r-tabs-tab" data-hover="Skirt" v-bind:class="{'r-tabs-state-active': active == id, 'r-tabs-state-default': id != active }">
                                                                    <a class="r-tabs-anchor active" v-bind:class="{active: active == id}" v-on:click="act(category, id)"  > <span class="icon"></span>{{category}}</a>
                                                        </li>
<!--                                                                <li class="r-tabs-state-default r-tabs-tab" >
                                                                    <a v-bind:href="'#tab_emtabs_1_' + id"  class="r-tabs-anchor"   data-hover="Skirt"> <span class="icon"></span>{{category}}</a>
                                                                </li>-->
                                                        
                                                            </ul>
                                                            <div class="em-tabs-content tab-content">
                                                                <div class="r-tabs-accordion-title active">
                                                                    <a class="r-tabs-anchor" href="#tab_emtabs_1_1"> <span class="icon tab_emtabs_1_1"></span>AllProduct</a>
                                                                </div>
                                                                <div id="tab_emtabs_1_1" class="tab-pane tab-item content_tab_emtabs_1_1 r-tabs-panel r-tabs-state-active">
                                                                    <div class="wrapper button-show01 button-hide-text em-wrapper-loaded">
                                                                        <div class="emfilter-ajaxblock-loaded">
                                                                            <div id="em_fashion_new_arrivals_tab01" class="em-grid-20 ">

                                                                                <div class="widget em-filterproducts-grid">
                                                                                    <div class="widget-products em-widget-products">
                                                                                        <div class="emcatalog-desktop-4" id="em-grid-mode-em_fashion_new_arrivals_tab01">
                                                                                            <div class="products-grid " >

                                                                                                <div v-for="(product, id) in listProduct" class ="item" :key="id" v-bind:class="{ first: id%4 == 0, last: id%4 == 3}">
                                                                                                    <div class="product-item">
                                                                                                        <div class="product-shop-top">
                                                                                                            <a :href="'/product.jsp?productID=' + product.productID" :title="product.name" class="product-image"><img style="" class="em-alt-hover img-responsive em-lazy-loaded" :src="'images/product/350x350/' + product.productID.trim() + '.jpg'"  :data-original="'images/product/350x350/' + product.productID.trim() + '.jpg'" alt=" Embellished Mirror Pastel" height="350" width="350">
                                                                                                                <img class="img-responsive em-alt-org em-lazy-loaded" v-bind:src="'images/product/350x350/' + product.productID.trim() + '.jpg'"  height="350" width="350">
                                                                                                            </a>
                                                                                                            <div class="em-element-display-hover bottom">
                                                                                                                <div class="em-btn-addto">
                                                                                                                    <!--product add to cart-->
                                                                                                                    <button type="button" v-on:click="addToCart(product.productID)" title="Add to Cart" class="button btn-cart" ><span><span>Add to Cart</span></span>
                                                                                                                    </button>
                                                                                                                    <!--product add to compare-wishlist-->
                                                                                                                 
                                                                                                                </div>
                                                                                                                <div class="quickshop-link-container">
                                                                                                                    <a :href="'/product.jsp?productID=' + product.productID" :title="product.name" class="quickshop-link" title="Quickshop">Quickshop</a>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </div><!-- /.product-shop-top -->

                                                                                                        <div class="product-shop">
                                                                                                            <div class="f-fix">
                                                                                                                <!--product name-->
                                                                                                                <h3 style="min-height: 19px;" class="product-name"><a v-bind:href="'/product/productInfo/' + product.ID" title=" Embellished Mirror Pastel"> <b>{{product.name}}</b></a></h3><div class="ratings">
                                                                                                                    <div class="rating-box">
                                                                                                                        <div class="rating" style="width:0%"></div>
                                                                                                                    </div>
                                                                                                                    <span class="amount"><a href="#">(4)</a></span>
                                                                                                                </div>
                                                                                                                <!--product price-->



                                                                                                                <div class="price-box">
                                                                                                                    <span class="regular-price" id="product-price-170-emprice-2fd1cdd203d2809e7354d43dcdbdb613">
                                                                                                                            <span class="price">$ {{product.price}}</span> </span>

                                                                                                                </div>

                                                                                                            </div>
                                                                                                        </div><!-- /.product-shop -->
                                                                                                    </div>
                                                                                                </div><!-- item -->

                                            

                                              
                                                                                            </div><!-- /.products-grid -->
                                                                                        </div><!-- /.emcatalog-desktop-4 -->
                                                                                    </div><!-- /.widget-products -->
                                                                                </div><!-- /.widget -->

                                                                            </div><!-- /#em_fashion_new_arrivals_tab01 -->
                                                                        </div>
                                                                    </div>
                                                                </div><!-- /#tab_emtabs_1_1 -->

                                                            
                                                            </div><!-- /.tab-content -->
                                                        </div><!-- /#emtabs_1 -->
                                                    </div>
                                                </div>
                                            </div><!-- /.em-new-arrivals-tabs -->
                                        </div><!-- /.em-wrapper-new-arrivals-tabs -->

                                    

                                     
                                    </div><!-- /.em-col-main -->

                                  
                                </div>
                            </div><!-- /.em-main-container -->


                            <div class="em-wrapper-area06">
                                <div class="em-wrapper-brands">
                                    <div class=" slider-style02">
                                        <div class="em-slider em-slider-banners em-slider-navigation-icon" data-emslider-navigation="true" data-emslider-items="6" data-emslider-desktop="5" data-emslider-desktop-small="4" data-emslider-tablet="3" data-emslider-mobile="2">
                                            <div class="em-banners-item">
                                                <a href="#"><img class="img-responsive" alt="em_brand_01.jpg" src="images/brand/em_brand_01.png" />
                                                </a>
                                            </div>
                                            <div class="em-banners-item">
                                                <a href="#"><img class="img-responsive" alt="em_brand_02.jpg" src="images/brand/em_brand_02.png" />
                                                </a>
                                            </div>
                                            <div class="em-banners-item">
                                                <a href="#"><img class="img-responsive" alt="em_brand_03.jpg" src="images/brand/em_brand_03.png" />
                                                </a>
                                            </div>
                                            <div class="em-banners-item">
                                                <a href="#"><img class="img-responsive" alt="em_brand_04.jpg" src="images/brand/em_brand_04.png" />
                                                </a>
                                            </div>
                                            <div class="em-banners-item">
                                                <a href="#"><img class="img-responsive" alt="em_brand_05.jpg" src="images/brand/em_brand_05.png" />
                                                </a>
                                            </div>
                                            <div class="em-banners-item">
                                                <a href="#"><img class="img-responsive" alt="em_brand_06.jpg" src="images/brand/em_brand_06.png" />
                                                </a>
                                            </div>
                                            <div class="em-banners-item">
                                                <a href="#"><img class="img-responsive" alt="em_brand_07.jpg" src="images/brand/em_brand_01.png" />
                                                </a>
                                            </div>
                                            <div class="em-banners-item">
                                                <a href="#"><img class="img-responsive" alt="em_brand_01.jpg" src="images/brand/em_brand_02.png" />
                                                </a>
                                            </div>
                                            <div class="em-banners-item">
                                                <a href="#"><img class="img-responsive" alt="em_brand_02.jpg" src="images/brand/em_brand_03.png" />
                                                </a>
                                            </div>
                                        </div>
                                    </div><!-- /.slider-style02 -->
                                </div>
                            </div><!-- /.em-wrapper-area06 -->

                        </div><!-- /.em-inner-main -->
                    </div><!-- /.container -->
                </div><!-- /.em-wrapper-main -->

         <%@  include file="/footer.jsp" %>    
         
      <script>

  var app =  new Vue({
    el: ".em-wrapper-new-arrivals-tabs",
    data: {
        active: 0,
        listProduct: [],
        listCategory: [],
    },
   mounted: function(){
      
         axios.get("product/getAllCategory").then((res)=>   
                             {
                                 res.data.unshift("All Product");
                                this.listCategory = res.data;
                             })
        axios.get("/product/getAllProduct").then((res)=>   
                             {
                             
                                this.listProduct = res.data;
                             })
    },
    methods: {
        act(category, id)
        {
            this.active = id;
            
            if(id != 0)
                axios.get("/product/getByCategory/" + category).then((res)=>{
                    this.listProduct = res.data;
                })
            else
                 axios.get("/product/getAllProduct").then((res)=>{
                    this.listProduct = res.data;
                })
               
        },
        addToCart(productID){
            var numOfCart =  document.getElementById("numOfCart");
               axios.post("/user/do/addToCart", {productID: productID, numOfProduct: 1} ).then((res)=>{
              
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
