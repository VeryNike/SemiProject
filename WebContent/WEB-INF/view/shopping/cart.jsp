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
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/shoppingcss/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/flaticon/font/flaticon.css" rel="stylesheet"> 
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/shoppingcss/style.css" rel="stylesheet">
		<script src="lib/jquery-3.6.0.min.js"></script>
		
        <style>
button {
  background: #ffffff;
  color: rgb(0, 0, 0);
  border: 1;
  position: relative;
  height: 60px;
  font-size: 1.6em;
  padding: 0 2em;
  cursor: pointer;
  transition: 800ms ease all;
  outline: black;
  font-weight: bold;
}
button:hover {
  background: #ffffff;
  color: #ff0000;
}
button:before,
button:after {
  content: "";
  position: absolute;
  top: 0;
  right: 0;
  height: 1px;
  width: 0;
  background: #ffffff;

  font-weight: bold;
  transition: 400ms ease all;
}
button:after {
  right: inherit;
  top: inherit;
  left: 0;
  bottom: 0;
}
button:hover:before,
button:hover:after {
  width: 100%;
  transition: 800ms ease all;
}
		
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

.product{
  margin-left:100px;
}
.product-image {
  float: left;
  width: 20%;
}

.product-details {
  float: left;
  width: 37%;
}

.product-price {
  float: left;
  width: 12%;
}

.product-quantity {
  float: left;
  width: 10%;
}

.product-removal {
  float: left;
  width: 9%;
}

.product-line-price {
  float: left;
  width: 12%;
  text-align: right;
}

.group:before, .shopping-cart:before,
.column-labels:before,
.product:before,
.totals-item:before,
.group:after,
.shopping-cart:after,
.column-labels:after,
.product:after,
.totals-item:after {
  content: "";
  display: table;
}

.group:after, .shopping-cart:after,
.column-labels:after,
.product:after,
.totals-item:after {
  clear: both;
}

.group, .shopping-cart,
.column-labels,
.product,
.totals-item {
  zoom: 1;
}


.product .product-price:before,
.product .product-line-price:before,
.totals-value:before {
  content: "$";
}

/* Body/Header stuff */
body {
  padding: 0px 0px 0px 0px;
  font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-weight: 100;
}

/* h1 {
  font-weight: 100;
} */

label {
  color: #aaa;
}

.shopping-cart {
  margin-top: -45px;
}

/* Column headers */
.column-labels label {
  padding-bottom: 15px;
  margin-bottom: 15px;
  border-bottom: 1px solid #eee;
}
.column-labels .product-image,
.column-labels .product-details,
.column-labels .product-removal {
  text-indent: -9999px;
}

/* Product entries */
.product {
  margin-bottom: 20px;
  padding-bottom: 10px;
  border-bottom: 1px solid #eee;
}
.product .product-image {
  text-align: center;
}
.product .product-image img {
  width: 100px;
}
.product .product-details .product-title {
  margin-right: 20px;
  font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
}
.product .product-details .product-description {
  margin: 5px 20px 5px 0;
  line-height: 1.4em;
}
.product .product-quantity input {
  width: 40px;
}
.product .remove-product {
  
  border: 0;
  padding: 4px 8px;
  background-color: rgb(216, 25, 25);
  color: #fff;
  font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
  font-size: 12px;
  border-radius: 3px;
  
}
.product .remove-product:hover {
  background-color: rgb(255, 7, 7);
}

/* Totals section */
.totals .totals-item {
  float: right;
  clear: both;
  width: 100%;
  margin-bottom: 10px;
  margin-top : 10px;
  margin-right:170px;
}
.totals .totals-item label {
  float: left;
  clear: both;
  width: 79%;
  text-align: right;
}
.totals .totals-item .totals-value {
  float: right;
  width: 21%;
  text-align: right;
}
.totals .totals-item-total {
  font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
}

.checkout {
  float: right;
  border: 0;
  margin-top: 20px;
  padding: 6px 25px;
  background-color: rgb(5, 5, 5);
  color: rgb(255, 255, 255);
  font-size: 25px;
  border-radius: 3px;
}

.checkout:hover {
  background-color: rgb(255, 255, 255);
}

/* Make adjustments for tablet */
@media screen and (max-width: 650px) {
  .shopping-cart {
    margin: 0;
    padding-top: 20px;
    border-top: 1px solid #eee;
  }

  .column-labels {
    display: none;
  }

  .product-image {
    float: right;
    width: auto;
  }
  .product-image img {
    margin: 0 0 10px 10px;
  }

  .product-details {
    float: none;
    margin-bottom: 10px;
    width: auto;
  }

  .product-price {
    clear: both;
    width: 70px;
  }

  .product-quantity {
    width: 100px;
  }
  .product-quantity input {
    margin-left: 20px;
  }

  .product-quantity:before {
    content: "x";
  }

  .product-removal {
    width: auto;
  }

  .product-line-price {
    float: right;
    width: 70px;
  }
}
/* Make more adjustments for phone */
@media screen and (max-width: 350px) {
  .product-removal {
    float: right;
  }

  .product-line-price {
    float: right;
    clear: left;
    width: auto;
    margin-top: 10px;
  }

  .product .product-line-price:before {
    content: "Item Total: $";
  }

  .totals .totals-item label {
    width: 60%;
  }
  .totals .totals-item .totals-value {
    width: 40%;
  }
 
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
					 <li>ORDER </li>
 				     <li>FINISH </li>
				</ul>  
		   <div class="steps">
  			 	<div class="active">SHOPPING</div>
  				<div class="active">ADD TO CART</div>
 				<div>ORDER</div>
  				<div>FINISH </div>
		   </div>
		   </div>
		   
  <!--진행상황끝-->
    <BR>
    <BR>
    <BR>
       <!--카트시작-->
    <br>
	<br>
	<br>
<div class="shopping-cart">
 
  <div class="product">
    <div class="product-image">
      <img class="img-fluid2" src="http://placehold.it/300x300" alt="">
    </div>
    <div class="product-details">
      <div class="product-title">ITEM_NAME</div>
      <p class="product-description">ITEM_DETAIL2</p>
    </div>
    <div class="product-price">12.99</div>
    
    <div class="product-removal">
      <button class="remove-product">
        Remove
      </button>
    </div>
    <div class="product-line-price">25.98</div>
  </div>
  <div class="product">
    <div class="product-image">
      <img class="img-fluid2" src="http://placehold.it/300x300" alt="">
    </div>
    <div class="product-details">
      <div class="product-title">ITEM_NAME</div>
      <p class="product-description">ITEM_DETAIL2</p>
    </div>
    <div class="product-price">45.99</div>
    
    <div class="product-removal">
      <button class="remove-product">
        Remove
      </button>
    </div>
    <div class="product-line-price">45.99</div>
  </div>

  

  <div class="totals">
    <div class="totals-item">
      <label>Subtotal</label>
      <div class="totals-value" id="cart-subtotal">71.97</div>
    </div>
    <div class="totals-item">
      <label>Tax (5%)</label>
      <div class="totals-value" id="cart-tax">3.60</div>
    </div>
    <div class="totals-item">
      <label>Shipping</label>
      <div class="totals-value" id="cart-shipping">15.00</div>
    </div>
    <div class="totals-item totals-item-total">
      <label>Grand Total</label>
      <div class="totals-value" id="cart-total">90.57</div>
      <a href="<%=request.getContextPath()%>/checkout.me"><button class="checkout">Checkout</button></a>
    </div>
  </div>
      
      

</div>

        <!--카트 끝-->

        <br clear = "all">
    <script>
	$('#main').on('click' , function(){
		location.href="<%= request.getContextPath() %>/main.me";
		
	});
	</script>
        
        <!-- Footer End -->

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

    <script>

      /* Set rates + misc */
var taxRate = 0.05;
var shippingRate = 15.00; 
var fadeTime = 300;


/* Assign actions */
$('.product-quantity input').change( function() {
  updateQuantity(this);
});

$('.product-removal button').click( function() {
  removeItem(this);
});


/* Recalculate cart */
function recalculateCart()
{
  var subtotal = 0;
  
  /* Sum up row totals */
  $('.product').each(function () {
    subtotal += parseFloat($(this).children('.product-line-price').text());
  });
  
  /* Calculate totals */
  var tax = subtotal * taxRate;
  var shipping = (subtotal > 0 ? shippingRate : 0);
  var total = subtotal + tax + shipping;
  
  /* Update totals display */
  $('.totals-value').fadeOut(fadeTime, function() {
    $('#cart-subtotal').html(subtotal.toFixed(2));
    $('#cart-tax').html(tax.toFixed(2));
    $('#cart-shipping').html(shipping.toFixed(2));
    $('#cart-total').html(total.toFixed(2));
    if(total == 0){
      $('.checkout').fadeOut(fadeTime);
    }else{
      $('.checkout').fadeIn(fadeTime);
    }
    $('.totals-value').fadeIn(fadeTime);
  });
}


/* Update quantity */
function updateQuantity(quantityInput)
{
  /* Calculate line price */
  var productRow = $(quantityInput).parent().parent();
  var price = parseFloat(productRow.children('.product-price').text());
  var quantity = $(quantityInput).val();
  var linePrice = price * quantity;
  
  /* Update line price display and recalc cart totals */
  productRow.children('.product-line-price').each(function () {
    $(this).fadeOut(fadeTime, function() {
      $(this).text(linePrice.toFixed(2));
      recalculateCart();
      $(this).fadeIn(fadeTime);
    });
  });  
}


/* Remove item from cart */
function removeItem(removeButton)
{
  /* Remove row from DOM and recalc cart total */
  var productRow = $(removeButton).parent().parent();
  productRow.slideUp(fadeTime, function() {
    productRow.remove();
    recalculateCart();
  });
}
    </script>
    <!--카트 끝-->
</body>
</html>
