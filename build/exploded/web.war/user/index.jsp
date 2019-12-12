<%-- 
    Document   : newjsp
    Created on : Dec 4, 2019, 9:53:32 PM
    Author     : MINH THUY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file = "/header.jsp" %>
  <div class="em-wrapper-main">
                    <div class="container container-main">
                        <div class="em-inner-main">
                            <div class="em-wrapper-area02"></div>
                            <div class="em-wrapper-area03"></div>
                            <div class="em-wrapper-area04"></div>
                            <div class="em-main-container em-col2-left-layout">
                                <div class="row">
                                    <div class="col-sm-18 col-sm-push-6 em-col-main">
                                        <div class="page-title category-title">
                                            <h1>Orders</h1>
                                        </div>
                                        <div class="category-products">
                                            <div class="toolbar-top">
                                                <div class="toolbar">
                                                    <div class="pager">
                                                     
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
                                                   
                                                      
                                                    </div><!-- /.sorter -->
                                                </div>
                                            </div><!-- /.toolbar-top -->
                                            <ol class="products-list" id="products-list">
                                        
                                                <div class="my-3 p-3 bg-white box-shadow "v-for="(order,id) in listOrderView":key =id v-if="activeMenu != 4">
                                                    <h3 class=" pb-2 mb-0">Người dùng: {{order.username}}</h3>
                                                    <h3 class=" pb-2 mb-0">SĐT: {{order.phone}}</h3>
                                                    <h3 class="border-bottom border-gray pb-2 mb-0">Địa chỉ: {{order.adress}}</h3>
                                                    <div class="box-shadow" v-for="(product, i) in order.listProduct":key=i style="background-color: rgb(247, 247, 247);" >
                                                    <div class="media text-muted pt-3">
                                                      <img data-src="holder.js/32x32?theme=thumb&amp;bg=007bff&amp;fg=007bff&amp;size=1" alt="32x32" class="mr-2 rounded" style="width: 32px; height: 32px;" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2232%22%20height%3D%2232%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2032%2032%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_16eb9f86bce%20text%20%7B%20fill%3A%23007bff%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A2pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_16eb9f86bce%22%3E%3Crect%20width%3D%2232%22%20height%3D%2232%22%20fill%3D%22%23007bff%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2211.828125%22%20y%3D%2216.965625%22%3E32x32%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" data-holder-rendered="true">
                                                      <p class="media-body pb-3 mb-0 small lh-125  border-gray">
                                                          <strong class="d-block text-gray-dark"><h2>@{{product.name}}</h2></strong>        
                                                      </p>
                                                      </div>
                                                        <h3 > Giá:{{product.price}}</h3>
                                                       <h3 > số lượng:{{product.numOfProduct}} </h3>
                                                       <h3 class="border-bottom border-gray pb-2 mb-0" style="color:red"> Thành tiền:{{product.price*product.numOfProduct}}</h3>
                                                     
                                                    </div>
                                                      <div class="row" style="padding-top:2%">
                                                           <div class="col-6">
                                                               <h5>Tổng thanh toán:<b style="color:red">{{order.totalPrice}}</b></h5>
                                                           </div>
                                                          <div class="col-6">
                                                <button type="button" class="btn btn-outline-success" v-if="activeMenu == 1" v-on:click="cancelOrder(order, id)">Hủy đơn hàng</button>
                                               
                                                           </div>
                                                          
                                                       </div>
                                                   
                                                       </div>
       <div class="container"  v-if="activeMenu == 4">
                        <div class="em-inner-main">
                            <div class="em-wrapper-area02"></div>
                            <div class="em-main-container em-col1-layout">
                                <div class="row">
                                    <div class="em-col-main col-sm-24">
                                        <div class="account-create">
                                            <div class="page-title">
                                                <h1>Create an Account</h1>
                                            </div>
                                            <form method="post" id="form-validate">
                                                <div class="fieldset">
                                                    <input type="hidden" name="success_url" value="" />
                                                    <input type="hidden" name="error_url" value="" />
                                                    <h2 class="legend">Personal Information</h2>
                                                    <ul class="form-list">
                                                        <li class="fields">
                                                            <div class="customer-name-middlename">
                                                                <div class="field name-firstname">
                                                                    <label for="firstname" class="required"><em>*</em>Username</label>
                                                                    <div class="input-box">
                                                                        <input type="text" id="firstname" v-model="formSignup.username"  title="First Name" maxlength="255" class="input-text required-entry" />
                                                                    </div>
                                                                </div>
                                                             
                                                                <div class="field name-lastname">
                                                                    <label for="lastname" class="required"><em>*</em>Phone</label>
                                                                    <div class="input-box">
                                                                        <input type="text" id="lastname" v-model="formSignup.phone" title="Last Name" maxlength="255" class="input-text required-entry" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <label for="email_address" class="required"><em>*</em>Address</label>
                                                            <div class="input-box">
                                                                <input type="text"  v-model="formSignup.adress" class="input-text validate-email required-entry" />
                                                            </div>
                                                        </li>
                                                    
                                                    </ul>
                                                </div>
                                                <div class="fieldset">
                                                    <h2 class="legend">Login Information</h2>
                                                    <ul class="form-list">
                                                        <li class="fields">
                                                            <div class="field">
                                                                <label for="password" class="required"><em>*</em>Password</label>
                                                                <div class="input-box">
                                                                    <input type="password" v-model="formSignup.password" title="Password" class="input-text required-entry validate-password" />
                                                                </div>
                                                            </div>
                                                            <div class="field">
                                                                <label for="confirmation" class="required"><em>*</em>Confirm Password</label>
                                                                <div class="input-box">
                                                                    <input type="password" v-model="formSignup.rePassword" title="Confirm Password" id="confirmation" class="input-text required-entry validate-cpassword" />
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                    <div id="window-overlay" class="window-overlay" style="display:none;"></div>
                                                    <div id="remember-me-popup" class="remember-me-popup" style="display:none;">
                                                        <div class="remember-me-popup-head">
                                                            <h3>What's this?</h3> <a href="#" class="remember-me-popup-close" title="Close">Close</a>
                                                        </div>
                                                        <div class="remember-me-popup-body">
                                                            <p>Checking &quot;Remember Me&quot; will let you access your shopping cart on this computer when you are logged out</p>
                                                            <div class="remember-me-popup-close-button a-right"> <a href="#" class="remember-me-popup-close button" title="Close"><span>Close</span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="buttons-set">
                                                        <p class="back-link"><a href="/signin" class="back-link"><small>&laquo; </small>Back</a>
                                                        </p>
                                                        <button type="button" v-on:click ="signup"  class="button"><span><span>Submit</span></span>
                                                        </button>
                                                        <p class="required" style="display: none;     max-width: 270px;" v-show="errorSignup == true">{{messErrSignup}}</p>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                                            </ol><!-- /.products-list -->
                                            <div class="toolbar-bottom em-box-03">
                                                <div class="toolbar">
                                        
                                                    <div class="sorter">
                                                      
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
                                        </div><!-- /.category-products -->
                                    </div><!-- /.em-col-main -->
                                    <div class="col-sm-6 col-sm-pull-18 em-col-left em-sidebar">
                                        <div class="em-wrapper-area02"></div>
                                        <div class="em-line-01 block block-layered-nav">
                                            <div class="em-block-title block-title"> <strong><span>List Order</span></strong>
                                            </div>
                                            <div class="block-content">
                                                <p class="block-subtitle">Shopping Options</p>
                                            
                                                    <dd>
                                                        <ol class="filter tree-filter">
                                                            <li>
                                                                <div class="label-icon">
                                                                    <div class="label"> <a class="tree-item" v-on:click="menu(1)" href="#">Order</a>({{listOrder.length}})</div>
                                                                </div>
                                                                <ol>
                                                                    <li class="selected">
                                                                        <div class="label-icon">
                                                                            <div class="label"> <a class="tree-item active" v-on:click="menu(2)" href="#">Cancel Order</a>({{listCancelOrder.length}})</div>
                                                                        </div>
                                                                    </li>
                                                                      <li class="selected">
                                                                        <div class="label-icon">
                                                                            <div class="label"> <a class="tree-item active" v-on:click="menu(3)" href="#">Done Order</a>({{listDoneOrder.length}})</div>
                                                                        </div>
                                                                    </li>
                                                                     <li class="selected">
                                                                        <div class="label-icon">
                                                                            <div class="label"> <a class="tree-item active" v-on:click="menu(4)" href="#">Your Info</div>
                                                                        </div>
                                                                    </li>
                                                                </ol>
                                                            </li>
                                                        </ol>
                                                    </dd>
                                                  
                                                </dl>
                                            </div>
                                        </div><!-- /.block-layered-nav -->
             
                                    
                                        </div><!-- /.em-wrapper-banners -->
                                    </div><!-- /.em-sidebar -->
                                </div>
                            </div><!-- /.em-main-container -->
                        </div>
                    </div>
 <%@  include file="/footer.jsp" %>  
 
 <script> 
 var app = new Vue({
  el: ".em-wrapper-main",
  data: {
      listOrderView: [],
      listOrder:[],
      listCancelOrder: [],
      listDoneOrder: [],
      activeMenu: 1,
       formSignup: {
        username: '',
        password: '',
        name: '',
        rePassword: '',
        phone: '',
        adress: ''
      },
      errorSignup: false,
      messErrSignup: ""
  },
  created: function(){
      
                             axios.get("/user/do/getAllOrder").then((res)=>   
                             {
                                 this.listOrder = this.sumPrice(res.data);
                                this.listOrderView = res.data;  
                             });
                              axios.get("/user/do/getDoneOrder").then((res)=>   
                             {
                                 this.listDoneOrder = this.sumPrice(res.data);
                              
                             });
                             axios.get("/user/do/getCancelOrder").then((res)=>   
                             {
                                this.listCancelOrder = this.sumPrice(res.data);  
                             });
                              axios.get("/user/do/getUser").then((res)=>   
                             {
                                 console.log(res.data);
                                this.formSignup.username = res.data.username;  
                                 this.formSignup.phone = res.data.phone;  
                                 this.formSignup.adress = res.data.adress;
                                 this.formSignup.password = res.data.password;
                             });
  },
  methods: {
      signup: function()
      {
          
      },
        sumPrice: function(list)
                        {
                            
                            for(i =0; i< list.length;i++)
                            {
                               list[i].totalPrice = 0;
                               for(j =0; j< list[i].listProduct.length;j++)
                list[i].totalPrice += list[i].listProduct[j].numOfProduct *list[i].listProduct[j].price
                            }
                            return list;
                        },
      menu: function(value)
      {
          this.activeMenu = value; 
          if(value ==1)
          {
              this.listOrderView = this.listOrder;
         
          };
         if(value ==2)
          {
              this.listOrderView = this.listCancelOrder;
                   
        };
         if(value ==3)
          { 
              this.listOrderView = this.listDoneOrder;
                       
        }
      },
      cancelOrder: function(order, id)
      {
          axios.post("/user/do/cancelOrder", order.billID).then((res)=>   
                             {
                                this.listOrderView = res.data;  
                             }); 
      },
          signup(){
        if(this.formSignup.username.length < 5 ) 
    { 
       this.messErrSignup= 'username tối thiểu 5 ký tự';
        this.errorSignup = true;
     return false 
     };
     if(this.formSignup.password.length < 5 ) 
     { 
       this.messErrSignup= 'password tối thiểu 5 ký tự';
        this.errorSignup = true;
     return false 
     }
       if(this.formSignup.name.length == 0 ) 
     { 
       this.messErrSignup= 'tên của bạn đâu ?';
        this.errorSignup = true;

     return false 
     }
       if(this.formSignup.password != this.formSignup.rePassword ) 
     { 
       this.messErrSignup= 'Nhập lại mật khẩu không đúng';
        this.errorSignup = true;

     return false ;
     };
    axios.post('/user/do/updateUser', {
        username: this.formSignup.username,
        password: this.formSignup.password,
        name: this.formSignup.name,
        phone: this.formSignup.phone,
        adress: this.formSignup.adress
        
    }).then((res)=>{
        console.log(res.data);
   
            this.errorSignup = false;
         alert('Sử thông tin thành công');
     

    })
    
       
     }
  }
  
      })
  </script>