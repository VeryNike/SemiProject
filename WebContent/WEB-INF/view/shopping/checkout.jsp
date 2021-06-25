<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>MyPT</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free Website Template" name="keywords">
        <meta content="Free Website Template" name="description">

        
        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&display=swap" rel="stylesheet">
        
        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/flaticon/font/flaticon.css" rel="stylesheet"> 
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

         <!-- 스타일시트 -->
        <link href="css/shoppingcss/style.css" rel="stylesheet">
        <script src="lib/jquery-3.6.0.min.js"></script>
        <style>
        
          .wlsgod{
        
        margin-left: 50px;
        }
ul {
  width: 1000px;
  margin: 50px auto;
  display: table;
}
li {
  display: inline-block;
  width: 25%;
  position: relative;
  padding-top: 50px;
  text-align: center;
  font-family: sans-serif;
  text-transform: uppercase;
  color: #157ea5;
  letter-spacing: 0.2em;
}
li:before {
  /*  circle/dot*/
  content: '';
  width: 30px;
  height: 30px;
  background: #157ea5;
  position: absolute;
  top: 0;
  left: calc(50% - 15px);
  border-radius: 100%;
}
li:after {
  /*line*/
  content: '';
  width: 100%;
  height: 1px;
  background: #157ea5;
  position: absolute;
  right: calc(50% - 15px);
  top: 15px;
  z-index: -1;
}
li:first-child:after {
  content: none;
}
li.current {
  color: #ec5d4a;
}
li.current:before {
  background: #ec5d4a;
}
.steps > div {
  display: none;
}
.steps.active {
  display: block;
}
            header {
  padding: 20px 0px;
}

header .active {
  font-weight: 700;
  position: relative;
}

header .active .fa-check {
  position: absolute;
  left:40%;
  bottom: -27px;
  background-color: #fff;
  font-size: 0.7rem;
  padding: 5px;
  border: 1px solid #008000;
  border-radius: 50%;
  color: #008000;
}
.progress {
  height: 2px;
  background-color: #ccc;
}

.progress div {
  display: flex;
  align-items: center;
  justify-content: center;
}

.progress .progress-bar {
  width: 51%;
}

.customer-order{
    margin-left:50px
}
.customer-information{
    margin-left: 34px;
}
.customer-purchase{
    margin-left:34px;
}
        </style>
    </head>

    <body>
         <%@ include file="../common/menu.jsp"%>


        <!-- Page Header Start -->
        <div class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        
                        <h2>CART<i class="fab fb-cart"></i></h2>
                        <br>
                    </div>
                    <div class="col-12">
                        
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- Page Header End -->
        <!--진행상황시작-->
           
           <div class = "wlsgod">
 				<ul>
 					 <li class="current">SHOPPING</li>
  					 <li class="current">ADD TO CART</li>
					 <li class="current">ORDER </li>
 				     <li>FINISH </li>
				</ul>  
		   <div class="steps">
  			 	<div class="active">SHOPPING</div>
  				<div class="active">ADD TO CART</div>
 				<div class="active">ORDER</div>
  				<div>FINISH </div>
		   </div>
		   </div>
		   
  <!--진행상황끝-->
  <section class="order-form my-4 mx-4">
      
    <div class="container pt-4">

      <div class="row"><div class="customer-order">
        <h2><span>1.</span> TOTAL</h2>
        <hr class="mt-1">

        
        <br>


        <p><span>Sample Item 1</span>
        </p>


        <p>$99.99</p>
        <br>


        <p><span>Sample Item</span>
        </p>


        <p>$20.00</p>

        <hr>


        <p><b>TOTAL:</b> $119.99</p>
        <hr class="mt-1">

        
    </div>
    
        <div class="col-12">
            <div class = "customer-information">
                <br>
                <br>
            <h2><span>2.</span> INFORMATION</h2>
          </div>
          <hr class="mt-1">
        </div>
        <div class="col-12">

          <div class="row mx-4">
            <div class="col-12 mb-2">
              <label class="order-form-label">Name</label>
            </div>
            <div class="col-12 col-sm-6">
              <input class="order-form-input" placeholder="First">
            </div>
            <div class="col-12 col-sm-6 mt-2 mt-sm-0">
              <input class="order-form-input" placeholder="Last">
            </div>
          </div>

          <div class="row mt-3 mx-4">
            <div class="col-12">
              <label class="order-form-label">Type of thing you want to order</label>
            </div>
            <div class="col-12">
              <input class="order-form-input" placeholder=" ">
            </div>
          </div>

          <div class="row mt-3 mx-4">
            <div class="col-12">
              <label class="order-form-label">Another type of thing you want to order</label>
            </div>
            <div class="col-12">
              <input class="order-form-input" placeholder=" ">
            </div>
          </div>

          <div class="row mt-3 mx-4">
            <div class="col-12">
              <label class="order-form-label" for="date-picker-example">Date</label>
            </div>
            <div class="col-12">
              <input class="order-form-input datepicker" placeholder="Selected date" type="text"
                id="date-picker-example">
            </div>
          </div>

          <div class="row mt-3 mx-4">
            <div class="col-12">
              <label class="order-form-label">Adress</label>
            </div>
            <div class="col-12">
              <input class="order-form-input" placeholder="Street Address">
            </div>
            <div class="col-12 mt-2">
              <input class="order-form-input" placeholder="Street Address Line 2">
            </div>
            <div class="col-12 col-sm-6 mt-2 pr-sm-2">
              <input class="order-form-input" placeholder="City">
            </div>
            <div class="col-12 col-sm-6 mt-2 pl-sm-0">
              <input class="order-form-input" placeholder="Region">
            </div>
            <div class="col-12 col-sm-6 mt-2 pr-sm-2">
              <input class="order-form-input" placeholder="Postal / Zip Code">
            </div>
            <div class="col-12 col-sm-6 mt-2 pl-sm-0">
              <input class="order-form-input" placeholder="Country">
            </div>
          </div>

          <div class="row mt-3 mx-4">
            <div class="col-12">
              
            </div>
          </div>

 <!-- 오더폼 끝-->
 <br>
 <br>
 <h2 class="customer-purchase"><span>3.</span> PURCHASE</h2>
 <br>
 <hr class="mt-1">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card">
                    <div class="row">
                        <div class="col-lg-3 radio-group">
                            <div class="row d-flex px-3 radio"> <img class="pay" src="img/master.jpg">
                                <p class="my-auto">Credit Card</p>
                            </div>
                            <div class="row d-flex px-3 radio gray"> <img class="pay" src="img/kakaopay.jpg">
                                <p class="my-auto">KaKao Pay</p>
                            </div>
                            <div class="row d-flex px-3 radio gray mb-3"> <img class="pay" src="img/paypal.jpg">
                                <p class="my-auto">PayPal</p>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="row px-2">
                                <div class="form-group col-md-6"> <label class="form-control-label">Name on Card</label> <input type="text" id="cname" name="cname" placeholder="Name"> </div>
                                <div class="form-group col-md-6"> <label class="form-control-label">Card Number</label> <input type="text" id="cnum" name="cnum" placeholder="1111 2222 3333 4444"> </div>
                            </div>
                            <div class="row px-2">
                                <div class="form-group col-md-6"> <label class="form-control-label">Expiration Date</label> <input type="text" id="exp" name="exp" placeholder="MM/YYYY"> </div>
                                <div class="form-group col-md-6"> <label class="form-control-label">CVV</label> <input type="text" id="cvv" name="cvv" placeholder="***"> </div>
                            </div>
                        </div>
                        <div class="col-lg-4 mt-2">
                            <div class="row d-flex justify-content-between px-4">
                                <p class="mb-1 text-left">Subtotal</p>
                                <h6 class="mb-1 text-right">$23.49</h6>
                            </div>
                            <div class="row d-flex justify-content-between px-4">
                                <p class="mb-1 text-left">Shipping</p>
                                <h6 class="mb-1 text-right">$2.99</h6>
                            </div>
                            <div class="row d-flex justify-content-between px-4" id="tax">
                                <p class="mb-1 text-left">Total (tax included)</p>
                                <h6 class="mb-1 text-right">$26.48</h6>
        <a href="<%=request.getContextPath()%>/success.me"><button class="btn-block btn-blue"><span><span id="checkout">Checkout</span><span id="check-amt">    $ 26.48</span> </span></button></a>               
                            
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--카트 끝-->

        </div>
      </div>
    </div>
  </section>
    <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/isotope/isotope.pkgd.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>
    
    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>

    <!--카트 시작-->
    <script>
        $(document).ready(function(){

$('.radio-group .radio').click(function(){
$('.radio').addClass('gray');
$(this).removeClass('gray');
});

$('.plus-minus .plus').click(function(){
var count = $(this).parent().prev().text();
$(this).parent().prev().html(Number(count) + 1);
});

$('.plus-minus .minus').click(function(){
var count = $(this).parent().prev().text();
$(this).parent().prev().html(Number(count) - 1);
});

});
    </script>
    <!--카트 끝-->
</body>
</html>
