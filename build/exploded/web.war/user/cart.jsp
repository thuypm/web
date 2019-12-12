<%-- 
    Document   : cart
    Created on : Nov 22, 2019, 2:50:40 PM
    Author     : MINH THUY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file = "../header.jsp" %>
      <div class="wrapper-breadcrums">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-24">
                                <div class="breadcrumbs">
                                    <ul>
                                        <li class="home"> <a href="index.html" title="Go to Home Page"><span >Home</span></a> <span class="separator">/ </span>
                                        </li>
                                        <li class="cms_page"> <strong>Shopping Cart</strong>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- /.wrapper-breadcrums -->

                <div class="em-wrapper-main" id ="app">
                    <div class="container container-main">
                        <div class="em-inner-main">
                            <div class="em-wrapper-area02"></div>
                            <div class="em-main-container em-col1-layout">
                                <div class="row">
                                    <div class="em-col-main col-sm-24">
                                        <div class="cart">
                                            <div class="page-title title-buttons">
                                                <h1>Shopping Cart</h1>
                                                <ul class="checkout-types">
                                                    <li>
                                                        <button type="button" title="Proceed to Checkout" class="button btn-proceed-checkout btn-checkout"><span><span>Proceed to Checkout</span></span>
                                                        </button>
                                                    </li>
                                                </ul>
                                            </div><!-- /.page-title -->
                                            <form method="post">
                                                <input name="form_key" type="hidden" value="inYgLvzSpOOWWVoP" />
                                                <fieldset>
                                                    <table id="shopping-cart-table" class="data-table cart-table">
                                                        <thead>
                                                            <tr class="em-block-title">
                                                                <th><span class="nobr">Product Name</span>
                                                                </th>
                                                                <th>&nbsp;</th>
                                                                <th></th>
                                                                <th class="a-center"><span class="nobr">Move to Wishlist</span>
                                                                </th>
                                                                <th class="a-center" colspan="1"><span class="nobr">Unit Price</span>
                                                                </th>
                                                                <th class="a-center">Qty</th>
                                                                <th class="a-center last" colspan="1">Subtotal</th>
                                                            </tr>
                                                        </thead>
                                                        <tfoot>
                                                            <tr>
                                                            
                                                            </tr>
                                                        </tfoot>
                                                        <tbody>
                                                            <tr class="first odd" v-for="(product, id) in listCart" :key="id">
                                                                <td>
                                                                    <div class="cart-product">
                                                                        <a  v-on:click="removeProduct(product,id)" title="Remove item" class="btn-remove btn-remove2">Remove item</a>
                                                                        <a :href="'/product.jsp?productID=' + product.productID" :title="product.name" class="">
                                                                            <img v-bind:src="'/images/product/100x100/' + product.productID.trim() + '.jpg'" height="100" width="100" alt=" baby dino baller graphic tee " />
                                                                        </a>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <h2 class="product-name"> <a :href="'/product.jsp?productID=' + product.productID"> {{product.name}}</a></h2>
                                                                    <p class="sku">Ba_7</p>
                                                                </td>   
                                                                <td class="a-center"> <a href="#" title="Edit item parameters">no Feature</a>
                                                                </td>
                                                                <td class="a-center"> <a href="#" class="link-wishlist use-ajax" title="Move">Move</a>
                                                                </td>
                                                                <td class="a-center"> <span class="cart-price"> <span class="price">$ {{product.price}}</span> </span>
                                                                </td>
                                                                <td class="a-center">
                                                                    <div class="qty_cart">
                                                                        <div class="qty-ctl">
                                                                            <button type = "button"title="Decrease Qty" v-on:click="decrease(product, id)" class="decrease">decrease</button>
                                                                        </div>
                                                                        <input  name="cart[296][qty]" v-model="product.numOfProduct" disabled="enable" size="4" title="Qty" class="input-text qty" maxlength="12" />
                                                                        <div class="qty-ctl">
                                                                            <button type = "button" title="Increase Qty" v-on:click="increase(product, id)"  class="increase">increase</button>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td class="a-center last"> <span class="cart-price"> <span class="price priceAlone">$ {{product.price * product.numOfProduct}}</span> </span>
                                                                </td>
                                                            </tr>

                                                        </tbody>
                                                    </table>
                                                </fieldset>
                                            </form><!-- /form -->
                                            <div class="cart-collaterals row">
                                                <div class="first col-md-16 col-sm-24">
                                                    <div class="row">
                                                   
                                                        <div class="col-sm-24 col-md-12">
                                                            <div class="shipping em-box-cart">
                                                                <h2>Estimate Shipping and Tax</h2>
                                                                <div class="shipping-form em-box">
                                                                    <form method="post" id="shipping-zip-form">
                                                                        <p>Enter your destination to get a shipping estimate.</p>
                                                                        <ul class="form-list">
                                                                           <li>
                                                                                <label for="postcode">Your Adress</label>
                                                                                <div class="input-box">
                                                                                    <input class="input-text validate-postcode" type="text" id="postcode" name="estimate_postcode" v-model="user.adress" />
                                                                                </div>
                                                                            </li>
                                                                       
                                                                            <li>
                                                                                <label for="postcode">Your Phone</label>
                                                                                <div class="input-box">
                                                                                    <input class="input-text validate-postcode" type="text" id="postcode" name="estimate_postcode" v-model="user.phone" />
                                                                                </div>
                                                                            </li>
                                                                        </ul>
                                                                    
                                                                    </form>
                                                                </div>
                                                            </div><!-- /.shipping -->
                                                        </div><!-- /.col-sm-24 -->
                                                    </div>
                                                </div><!-- /first -->
                                                <div class="last totals col-md-8 col-sm-24">
                                                    <div class="em-box-cart">
                                                        <h2>Order Total</h2>
                                                        <div class="em-box">
                                                            <table id="shopping-cart-totals-table">
                                                                <col />
                                                                <col style="width: 1%;" />
                                                                <tfoot>
                                                                    <tr>
                                                                        <td style="" class="a-right" colspan="1"> <strong>Grand Total</strong>
                                                                        </td>
                                                                        <td style="" class="a-right"> <strong><span class="price totalPrice">$</span></strong>
                                                                        </td>
                                                                    </tr>
                                                                </tfoot>
                                                                <tbody>
                                                                    <tr>
                                                                        <td style="" class="a-right" colspan="1"> Subtotal</td>
                                                                        <td style="" class="a-right"> <span class="price totalPrice">$</span>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                            <ul class="checkout-types">
                                                                <li>
                                                                    <button type="button" v-on:click="order()" class="button btn-proceed-checkout btn-checkout"><span><span>Proceed to Checkout</span></span>
                                                                    </button>
                                                                </li>
                                                                <li><a href="#" title="Checkout with Multiple Addresses">Checkout with Multiple Addresses</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div><!-- /.em-box-cart -->
                                                </div><!-- /.last -->
                                            </div><!-- /.cart-collaterals -->
                                            <div class="block block-sample em-line-01">
                                                <div class="em-block-title">
                                                    <h2><span>This is sample static block replacing crosssel products</span></h2>
                                                </div>
                                                <div class="block-content box">
                                                    <p>This is sample static block replacing crosssel products. Put your own content here: filter widget,text, html, images - whatever you want.</p>
                                                </div>
                                            </div><!-- /.block -->
                                        </div>
                                    </div>
                                </div>
                            </div><!-- /.em-main-container -->
                        </div>
                    </div>
                </div><!-- /.em-wrapper-main -->
 <%@  include file="../footer.jsp" %>  
 <script>
 var app =  new Vue({
    el: ".em-wrapper-main",
    data: {
        active: 0,
        listCart: [],
        user: {},
   
    },
    mounted: function()
    {
     axios.get("/user/do/getUser").then((res)=>{
         this.user = res.data
     })
        axios.get("/user/do/getCart").then((res)=>{
         
            this.listCart = res.data;
              this.updatePrice();
        });
      
    },

    methods:
            {
                updatePrice()
        {
         
            var price = 0;
            for (var i in this.listCart) {
                  price +=  this.listCart[i].numOfProduct* this.listCart[i].price;
            };
            var y = document.getElementsByClassName("totalPrice");
            for (var i = 0; i < y.length; i++) {
                  y[i].textContent = "$ " + price.toString();
            };
          
       },
       removeProduct(product, id){
               axios.post("/user/do/deleteFromCart", product).then((res)=>
                       {
                           if(res.data)
                                 this.listCart.splice(id,1); 
                              this.updatePrice();
                       })
       },
        
                   decrease(product, id){
                       var prdt= this.listCart[id];
                       if(prdt.numOfProduct <= 1 )
                           axios.post("/user/do/deleteFromCart", product).then((res)=>
                       {
                           if(res.data)
                                 this.listCart.splice(id,1); 
                              this.updatePrice();
                       })

                            else
                                    axios.post("/user/do/addToCart", {productID: prdt.productID, numOfProduct: -1 }).then((res)=>
                       {
                        
                                 this.listCart[id].numOfProduct --;
                                  this.updatePrice();
                       }
                             );
                        var numOfCart =  document.getElementById("numOfCart");
                                        numOfCart.textContent = (parseInt(numOfCart.textContent) - 1).toString();
                                       
                     
                     
            },
    increase(product, id)
    {
         axios.post("/user/do/addToCart", {productID: product.productID, numOfProduct: 1 }  ).then((res)=>{
              this.listCart[id].numOfProduct ++;
              var numOfCart =  document.getElementById("numOfCart");
                                   numOfCart.textContent = (parseInt(numOfCart.textContent) + 1).toString();
                                    this.updatePrice();
         })
       
    },
    order()
    {
      
        axios.post("/user/do/order", this.user).then((res)=>
        {
            if(res.data)
                alert("đặt hàng thành công");
                window.location.href = "/user/index.jsp";
        })
    }
            }
         
 
 })
 </script>