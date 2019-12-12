<%-- 
    Document   : signup
    Created on : Nov 20, 2019, 3:40:30 PM
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
                                        <li class="cms_page"> <strong>Register</strong>
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
                                                                <div class="field name-middlename">
                                                                    <label for="middlename">Name</label>
                                                                    <div class="input-box">
                                                                        <input type="text" id="middlename" v-model="formSignup.name"  title="Middle Name/Initial" class="input-text " />
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
                                                        <li class="control">
                                                            <div class="input-box">
                                                                <input type="checkbox" name="is_subscribed" title="Sign Up for Newsletter" value="1" id="is_subscribed" class="checkbox" />
                                                            </div>
                                                            <label for="is_subscribed">Sign Up for Newsletter</label>
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
                </div><!-- /.em-wrapper-main -->
         <%@  include file="/footer.jsp" %> 
              <script>
    var app = new Vue({
        el: '.em-wrapper-main',
        data: {
            errorSignup: false,
            errorSignin: false,
            messErrSignin: '',
            messErrSignup: '',
  
      formSignup: {
        username: '',
        password: '',
        name: '',
        rePassword: '',
        phone: '',
        adress: ''
      }

        },
        methods: {
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
    axios.post('/signup', {
        username: this.formSignup.username,
        password: this.formSignup.password,
        name: this.formSignup.name,
        phone: this.formSignup.phone,
        adress: this.formSignup.adress
        
    }).then((res)=>{
        console.log(res.data);
       if(!res.data)
       {
         this.messErrSignup ='Username đã được sử dụng';
             this.errorSignup = true;
       }else
       {
            this.errorSignup = false;
         alert('đăng ký thành công, bây giờ hãy đăng nhập');
      
          location.replace("/signin")
       }
    })
    
       
     }}
    })
</script>
