<%-- 
    Document   : myOrder
    Created on : Dec 3, 2019, 5:11:06 PM
    Author     : MINH THUY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file = "/header.jsp" %>
       <div id="em-grid-mode">
                 <ul class="emcatalog-grid-mode products-grid emcatalog-disable-hover-below-mobile">
           <li class="item">
                                                    <a href="product-detail.html" title="WIASSI Version 1" class="product-image"> <img class="em-img-lazy img-responsive em-alt-hover" src="images/product/190x190/shoe_sp1_1.jpg" width="190" height="190" alt="WIASSI Version 1" /> <img id="product-collection-image-206" class="em-img-lazy img-responsive em-alt-org" src="images/product/190x190/shoe_sp1_2.jpg" width="190" height="190" alt="WIASSI Version 1" /> </a>
                                                    <div class="product-shop">
                                                        <div class="f-fix">
                                                            <h2 class="product-name"><a href="product-detail.html" title="WIASSI Version 1"> WIASSI Version 1 </a></h2>
                                                            <div class="desc std"> By popular demand, we've added half sizes to make your feet even happier. <a href="product-detail.html" title="WIASSI Version 1" class="link-learn">Learn More</a>
                                                            </div>
                                                            <div class="price-box"> <span class="regular-price" id="product-price-206"> <span class="price"   content="750">$750.00</span> </span>
                                                            </div>
                                                            <div class="actions">
                                                                <button type="button" title="Add to Cart" class="button btn-cart" onclick="206"><span><span>Add to Cart</span></span>
                                                                </button>
                                                                <ul class="add-to-links">
                                                                    <li><a href="#206" class="link-wishlist" title="Add to Wishlist">Add to Wishlist</a>
                                                                    </li>
                                                                    <li><span class="separator">|</span> <a href="#206" class="link-compare" title="Add to Compare">Add to Compare</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
       
           </li>
                 </ul>
       </div>
         <%@  include file="/footer.jsp" %>    
<script>
    var app =  new Vue({
    el: ".em-wrapper-new-arrivals-tabs",
    data: {
 
        listOrder: [],
 
    },
   mounted: function(){
         axios.get("product/getMyOrder").then((res)=>   
                             {
                                 res.data.unshift("All Product");
                                this.listOrder = res.data;
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
