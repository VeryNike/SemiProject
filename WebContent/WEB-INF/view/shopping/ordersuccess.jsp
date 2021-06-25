
<!DOCTYPE html>
<html lang="kr">
        <head>
        <meta charset="UTF-8">
        <title>MyPT</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free Website Template" name="keywords">
        <meta content="Free Website Template" name="description">


        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&amp;display=swap" rel="stylesheet">

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
        <style type="text/css">
            @import url("../lib/css/style.css");
        </style>
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
  width: 100%;
}
.purchase{
    padding: 20px 0px;
}
.totalprice{
    width: 300px;
    margin-left:1150px
}
.next{
    margin-left:1280px
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
                        
                        <h2>CART</h2>
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
 				     <li class="current">FINISH </li>
				</ul>  
		   <div class="steps">
  			 	<div class="active">SHOPPING</div>
  				<div class="active">ADD TO CART</div>
 				<div class="active">ORDER</div>
  				<div class="active">FINISH </div>
		   </div>
		   </div>
		   
  <!--진행상황끝-->
        <br clear = "all">
    <script>
	$('#main').on('click' , function(){
		location.href="<%= request.getContextPath() %>/main.me";
		
	});
	</script>
        <div class="container-fluid mt-100">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        
                        <div class="card-body cart">
                            <div class="col-sm-12 empty-cart-cls text-center"> <img src="img/ordersuccess.png" width="130" height="130" class="img-fluid mb-4 mr-3">
                                <h3><strong>Order Success!</strong></h3>
                                 <a href = "<%=request.getContextPath() %>/shopping.me" class="btn btn-primary cart-btn-transform m-3" data-abc="true">continue shopping</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
        

<div id="lightboxOverlay" class="lightboxOverlay" style="display: none;"></div><div id="lightbox" class="lightbox" style="display: none;"><div class="lb-outerContainer"><div class="lb-container"><img class="lb-image" src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=="><div class="lb-nav"><a class="lb-prev" href=""></a><a class="lb-next" href=""></a></div><div class="lb-loader"><a class="lb-cancel"></a></div></div></div><div class="lb-dataContainer"><div class="lb-data"><div class="lb-details"><span class="lb-caption"></span><span class="lb-number"></span></div><div class="lb-closeContainer"><a class="lb-close"></a></div></div></div></div></body></html>