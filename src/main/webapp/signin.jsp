<%-- 
    Document   : signin
    Created on : Nov 19, 2019, 10:09:51 PM
    Author     : MINH THUY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file = "header.jsp" %>
<div class="wrapper-breadcrums">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-24">
                                <div class="breadcrumbs">
                                    <ul>
                                        <li class="home"> <a href="index.html" title="Go to Home Page"><span >Home</span></a> <span class="separator">/ </span>
                                        </li>
                                        <li class="cms_page"> <strong>Login</strong>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- /.wrapper-breadcrums -->

                <div class="em-wrapper-main">
                    <div class="container container-main">
                        <div class="em-inner-main">
                            <div class="em-wrapper-area02"></div>
                            <div class="em-main-container em-col1-layout">
                                <div class="row">
                                    <div class="em-col-main col-sm-24">
                                        <div class="account-login">
                                            <div class="page-title em-box-02">
                                                <div class="title-box">
                                                    <h1>Login or Create an Account</h1>
                                                </div>
                                            </div>
                                            <form method="post" id="login-form">
                                                <input name="form_key" type="hidden" value="W2ZAZqxDCT2TpZYs" />
                                                <div class="col2-set">
                                                    <div class="col-1 new-users">
                                                        <div class="content">
                                                            <h2>New Customers</h2>
                                                            <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
                                                        </div>
                                                        <div class="buttons-set">
                                                            <button type="button" title="Create an Account" class="button"><span><span>Create an Account</span></span>
                                                            </button>
                                                        </div>
                                                    </div>
                                                    <div class="col-2 registered-users">
                                                        <div class="content">
                                                            <h2>Registered Customers</h2>
                                                            <p>If you have an account with us, please log in.</p>
                                                            <ul class="form-list">
                                                                <li>
                                                                    <label for="email" class="required" ><em>*</em>Username</label>
                                                                    <div class="input-box">
                                                                        <input type="text" v-model="formSignin.username" id="email" class="input-text required-entry validate-email" title="Email Address" />
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <label for="pass" class="required"><em>*</em>Password</label>
                                                                    <div class="input-box">
                                                                        <input type="password"  v-model="formSignin.password" class="input-text required-entry validate-password" id="pass" title="Password" />
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
                                                        </div>
                                                        <div class="buttons-set">
                                                            <button type="button" class="button" title="Login"  v-on:click ="signin" id="signinCreate"><span><span>Login</span></span>
                                                            </button> <a href="#" class="f-left">Forgot Your Password?</a>
                                                            <p class="required" style=" display: none;" v-show="errorSignin == true">{{messErrSignin}}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div><!-- /.account-login -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- /.em-wrapper-main -->
 <%@  include file="/footer.jsp" %> 
 <script>
		var app = new Vue({
			el: '.em-wrapper-main',
			data: {
				
				errorSignin: false,
				messErrSignin: '',
		
	
		  formSignin:{
			  username: '',
			  password: ''
					 }
			},
			methods: {
		 signin(){
		
		 if(this.formSignin.username.length < 5 ) 
		 { 
			this.messErrSignin= 'username tối thiểu 5 ký tự';
			 this.errorSignin = true;
		  return false ;
		  }
		  if(this.formSignin.password.length < 5 ) 
		  { 
			this.messErrSignin= 'password tối thiểu 5 ký tự';
			 this.errorSignin = true;
				return false ;
		  };
		 axios.post('/signin', this.formSignin).then((res)=>{
			if(!res.data)
			{
			  this.messErrSignin ='Tên tài khoản hoặc mật khẩu không đúng';
				  this.errorSignin = true;
				  return false ;
			}else
			{   
                            this.errorSignin = false;
                            if(res.data.admin)
                                location.replace("/admin/index.html")
                            else
                                window.location.href = "/"
			}
		 })
		 },

		}})
	</script>