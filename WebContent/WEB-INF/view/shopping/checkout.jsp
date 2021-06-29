<!DOCTYPE html>
<html lang="ko">
    <head>
    	<meta charset="UTF-8">
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
        <link rel="stylesheet" href="css/vegas/vegas.min.css">
        
        
         <!-- JQuery¸ -->
        <script src="lib/jquery-3.6.0.min.js"></script>
        
       <style>

 */.shop {
    font-size: 10px
}

.space {
    letter-spacing: 0.8px !important
}

.second a:hover {
    color: rgb(92, 92, 92)
}

.active-2 {
    color: rgb(92, 92, 92)
}

.breadcrumb>li+li:before {
    content: "" !important
}

.breadcrumb {
    padding: 0px;
    font-size: 10px;
    color: #aaa !important
}

.first {
    background-color: white
}

a {
    text-decoration: none !important;
    color: #aaa
}

.btn-lg,
.form-control-sm:focus,
.form-control-sm:active,
a:focus,
a:active {
    outline: none !important;
    box-shadow: none !important
}

.form-control-sm:focus {
    border: 1.5px solid #4bb8a9
}

.btn-group-lg>.btn,
.btn-lg {
    padding: .5rem 0.1rem;
    font-size: 1rem;
    border-radius: 0;
    color: white !important;
    background-color: #4bb8a9;
    height: 2.8rem !important;
    border-radius: 0.2rem !important;
    
   
}

.btn-group-lg>.btn:hover,
.btn-lg:hover {
    background-color: #FAE100;
}

.btn-outline-primary {
    background-color: #FAE100  !important;
    color: #FFFFFF  !important;
    border-radius: 0.2rem !important;
    border: 1px solid #FAE100;
    border-color:FAE100;
}

.btn-outline-primary:hover {
    background-color: #FAE100 !important;
    color: #3A1D1D !important;
    border: 1px solid #FAE100;
    border-color:FAE100;
}

.card-2 {
    margin-top: 40px !important
}

.card-header {
    background-color: #fff;
    border-bottom: 0px solid #aaaa !important
}

p {
    font-size: 13px
}

.small {
    font-size: 9px !important
}

.form-control-sm {
    height: calc(2.2em + .5rem + 2px);
    font-size: .875rem;
    line-height: 1.5;
    border-radius: 0
}

.cursor-pointer {
    cursor: pointer
}

.boxed {
    padding: 0px 8px 0 8px;
    background-color: #4bb8a9;
    color: white
}

.boxed-1 {
    padding: 0px 8px 0 8px;
    color: black !important;
    border: 1px solid #aaaa
}

.bell {
    opacity: 0.5;
    cursor: pointer
}

@media (max-width: 767px) {
    .breadcrumb-item+.breadcrumb-item {
        padding-left: 0
    }
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

      <body id = "checkbg">
        <%@ include file="../common/menu.jsp"%>
         
         
			<!-- 헤더공백시작 -->
      		<br>
       		 <br>
	          <br>
       		   <br>
        	    <br>
        	     <br>
         	 <!-- 헤더공백끝 -->
         	
         	
         		
               <!--진행 상황 시작  -->
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
			  <br>
		   <!--진행 상황 끝  -->
		   
		   
		   
		   <!-- 결제폼 시작 -->
		   <div class=" container-fluid my-5 ">
    <div class="row justify-content-center ">
        <div class="col-xl-10">
            <div class="card shadow-lg ">
                <div class="row p-2 mt-3 justify-content-between mx-sm-2">
                    <div class="col">
                        <p class="text-muted space mb-0 shop"> Shop No.78618K</p>
                        <p class="text-muted space mb-0 shop"> Store Locator</p>
                    </div>
                    <div class="col">
                        <div class="row justify-content-start ">
                            <div class="col"> <img class="irc_mi img-fluid cursor-pointer " src="images/logo_19.png" width="70" height="70"> </div>
                        </div>
                    </div>
                    <div class="col-auto"> <img class="irc_mi img-fluid bell" src="https://i.imgur.com/uSHMClk.jpg" width="30" height="30"> </div>
                </div>
                
                <div class="row justify-content-around">
                    <div class="col-md-5">
                        <div class="card border-0">
                            <div class="card-header pb-0">
                                <h2 class="card-title space ">Checkout</h2>
                                <hr class="my-0">
                            </div>
                            <div class="card-body">
                                <div class="row justify-content-between">
                                    <div class="col-auto mt-0">
                                        <p><b>6, Teheran-ro 14-gil, Gangnam-gu, Seoul, Republic of Korea</b></p>
                                    </div>
                                    <div class="col-auto">
                                        <p><b>Very Nike , MyPT</b> </p>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="col">
                                        <p class="text-muted mb-2">ORDER DETAILS</p>
                                        <hr class="mt-0">
                                    </div>
                                </div>
                                
                                <!-- 구매자 정보 입력 폼 시작  -->
                                <div class="form-group"> <label for="NAME" class="small text-muted mb-1">FULL NAME</label> <input type="text" class="form-control form-control-sm" name="NAME" id="NAME" aria-describedby="helpId" placeholder="kim ahmu gae"> </div>
                                 <div class="form-group"> <label for="NAME" class="small text-muted mb-1">ADDRESS</label> <input type="text" class="form-control form-control-sm" name="NAME" id="NAME" aria-describedby="helpId" placeholder="Republic of korea , seoul , yeoksam"> </div>
                                  <div class="row no-gutters">
                                  
                                    <div class="col-sm-6 pr-sm-2">
                                        <div class="form-group"> <label for="NAME" class="small text-muted mb-1">PHONE</label> <input type="text" class="form-control form-control-sm" name="NAME" id="NAME" aria-describedby="helpId" placeholder="010-1234-5678"> </div>
                                    </div>
                                    
                                    <div class="col-sm-6">
                                        <div class="form-group"> <label for="NAME" class="small text-muted mb-1">COMMENT</label> <input type="text" class="form-control form-control-sm" name="NAME" id="NAME" aria-describedby="helpId" placeholder="commnet"> </div>
                                    </div>
                                    
                                 </div>
                                <!-- 구매자 정보 입력 폼 끝  -->
                                <br>
                                <br>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="card border-0 ">
                            <div class="card-header card-2">
                                <p class="card-text text-muted mt-md-4 mb-2 space">YOUR ORDER <span class=" small text-muted ml-2 cursor-pointer"> SHOPPING BAG</span> </p>
                                <hr class="my-2">
                            </div>
                            <div class="card-body pt-0">
                            
                            <!-- 담긴제품시작 -->
                                <div class="row justify-content-between">
                                    <div class="col-auto col-md-7">
                                        <div class="media flex-column flex-sm-row"> <img class=" img-fluid" src="https://i.imgur.com/6oHix28.jpg" width="62" height="62">
                                            <div class="media-body my-auto">
                                                <div class="row ">
                                                    <div class="col-auto">
                                                        <p class="mb-0"><b>EC-GO Bag Standard</b></p><small class="text-muted">1 Week Subscription</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class=" pl-0 flex-sm-col col-auto my-auto">
                                        <p class="boxed-1">1</p>
                                    </div>
                                    <div class=" pl-0 flex-sm-col col-auto my-auto ">
                                        <p><b>50000 won</b></p>
                                    </div>
                                </div>
                                <!-- 담긴제품끝 -->
                                
                              
                                <hr class="my-2">
                                
                                <!-- 토탈가격시작 -->
                                <div class="row ">
                                    <div class="col">
                                        <div class="row justify-content-between">
                                            <div class="col-4">
                                                <p class="mb-1"><b>Subtotal</b></p>
                                            </div>
                                            <div class="flex-sm-col col-auto">
                                                <p class="mb-1"><b>won</b></p>
                                            </div>
                                        </div>
                                        <div class="row justify-content-between">
                                            <div class="col">
                                                <p class="mb-1"><b>Shipping</b></p>
                                            </div>
                                            <div class="flex-sm-col col-auto">
                                                <p class="mb-1"><b>won</b></p>
                                            </div>
                                        </div>
                                        <div class="row justify-content-between">
                                            <div class="col-4">
                                                <p><b>Total</b></p>
                                            </div>
                                            <div class="flex-sm-col col-auto">
                                                <p class="mb-1"><b>won</b></p>
                                            </div>
                                        </div>
                                        <hr class="my-0">
                                    </div>
                                </div>
                                <!-- 토탈가격끝 -->
                                
                                <!-- 카카오페이결제버튼시작 -->
                                <div class="row mb-5 mt-4 ">
                                    <div class="col-md-7 col-lg-6 mx-auto"><button type="button" class="btn btn-block btn-outline-primary btn-lg">KAKAOPAY</button></div>
                                </div>
                                <!-- 카카오페이결제버튼끝 --> <!-- 너무 복잡하면 DB로 넘겨서 끝내는게 좋을것같습니다. -->
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
		   <!-- 결제폼 끝 -->
		   
  		   <!-- 우리 팀 너무 고생많았습니다 ! -->
    <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

    <!-- JavaScript Libraries -->
    <script>
	$(function(){
		$('#shopping').addClass('active');
		$('.menus').not('#shopping').removeClass('active');
	});
    </script>
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
	
	<!-- Vegas js -->
	<script src="js/vegas/vegas.min.js"></script>
</body>
</html>
