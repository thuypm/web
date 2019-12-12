<%-- 
    Document   : category
    Created on : Dec 3, 2019, 3:55:16 PM
    Author     : MINH THUY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file = "header.jsp" %>
<%
String category = request.getParameter("category");
%>
 <div class="em-wrapper-main">
                    <div class="container container-main">
                        <div class="em-inner-main">
                            <div class="em-wrapper-area02"></div>
                            <div class="em-wrapper-area03"></div>
                            <div class="em-wrapper-area04"></div>
                            <div class="em-main-container em-col1-layout">
                                <div class="row">
                                    <div class="em-col-main col-sm-24">
                                        <div class="page-title category-title">
                                            <h1>Shoes</h1>
                                        </div>
                                        <div class="category-products">
                                            <div class="toolbar-top">
                                                <div class="toolbar">
                                                    <div class="pager">
                                                        <p class="amount"> Items 1 to 12 of 20 total</p>
                                                        <div class="pages">
                                                            <ol>
                                                                <li class="current">1</li>
                                                                <li><a href="#">2</a>
                                                                </li>
                                                                <li>
                                                                    <a class="next i-next" href="#" title="Next"> <img src="images/pager_arrow_right.gif" alt="Next" class="v-middle" /> </a>
                                                                </li>
                                                            </ol>
                                                        </div>
                                                    </div><!-- /.pager -->
                                                    <div class="sorter">
                                                        <p class="view-mode">
                                                            <label>View as:</label> <a href="category-one-column.html" title="Grid" class="grid">Grid</a> <strong title="List" class="list">List</strong>
                                                        </p>
                                                        <div class="sort-by toolbar-switch">
                                                            <div class="toolbar-title">
                                                                <label>Sort By</label>
                                                                <select class="sortby" name="sortby">
                                                                    <option value="position" selected="selected"> Position</option>
                                                                    <option value="name"> Name</option>
                                                                    <option value="price"> Price</option>
                                                                </select>
                                                            </div>
                                                            <a href="#" title="Set Descending Direction"><img src="images/i_asc_arrow.png" alt="Set Descending Direction" class="v-middle" />
                                                            </a>
                                                        </div>
                                                        <div class="limiter toolbar-switch">
                                                            <div class="toolbar-title">
                                                                <label>Show</label>
                                                                <select class="toolbar-show">
                                                                    <option value="12" selected="selected"> 12</option>
                                                                    <option value="24"> 24</option>
                                                                    <option value="36"> 36</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div><!-- /.sorter -->
                                                </div>
                                            </div><!-- /.toolbar-top -->
                                            <ol class="products-list" id="products-list">
                                                  <div v-for="(product, id) in listProduct" class ="item" :key="id" v-bind:class="{ first: id%4 == 0, last: id%4 == 3}">
                                                                                                    <div class="product-item">
                                                                                                        <div class="product-shop-top">
                                                                                                            <a :href="'/product.jsp?productID=' + product.productID" :title="product.name" class="product-image"><img style="" class="em-alt-hover img-responsive em-lazy-loaded" src="images/product/350x350/clothing_sp5_2.jpg" data-original="images/product/350x350/clothing_sp5_2.jpg" alt=" Embellished Mirror Pastel" height="350" width="350">
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
                                            </ol><!-- /.products-list -->
                                            <div class="toolbar-bottom em-box-03">
                                                <div class="toolbar">
                                                    <div class="pager">
                                                        <p class="amount"> Items 1 to 10 of 20 total</p>
                                                        <div class="pages">
                                                            <ol>
                                                                <li class="current">1</li>
                                                                <li><a href="#">2</a>
                                                                </li>
                                                                <li>
                                                                    <a class="next i-next" href="#" title="Next"> <img src="images/pager_arrow_right.gif" alt="Next" class="v-middle" /> </a>
                                                                </li>
                                                            </ol>
                                                        </div>
                                                    </div><!-- /.pager -->
                                                    <div class="sorter">
                                                        <p class="view-mode">
                                                            <label>View as:</label> <a href="category-one-column.html" title="Grid" class="grid">Grid</a> <strong title="List" class="list">List</strong>
                                                        </p>
                                                        <div class="sort-by toolbar-switch">
                                                            <div class="toolbar-title">
                                                                <label>Sort By</label>
                                                                <select class="sortby" name="sortby">
                                                                    <option value="position" selected="selected"> Position</option>
                                                                    <option value="name"> Name</option>
                                                                    <option value="price"> Price</option>
                                                                </select>
                                                            </div>
                                                            <a href="#" title="Set Descending Direction"><img src="images/i_asc_arrow.png" alt="Set Descending Direction" class="v-middle" />
                                                            </a>
                                                        </div>
                                                        <div class="limiter toolbar-switch">
                                                            <div class="toolbar-title">
                                                                <label>Show</label>
                                                                <select class="toolbar-show">
                                                                    <option value="12" selected="selected"> 12</option>
                                                                    <option value="24"> 24</option>
                                                                    <option value="36"> 36</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div><!-- /.sorter -->
                                                </div>
                                            </div><!-- /.toolbar-bottom -->
                                        </div>
                                    </div>
                                </div>
                            </div><!-- /.em-main-container -->
                        </div>
                    </div>
                </div><!-- /.em-wrapper-main -->
      <%@  include file="/footer.jsp" %>   
      <script> 
      var app =  new Vue({
    el: ".em-wrapper-main",
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
