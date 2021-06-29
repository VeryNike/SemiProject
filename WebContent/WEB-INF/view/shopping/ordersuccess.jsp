
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
        <link href="https://fonts.googleapis.com/css?family=Lato:700&display=swap" rel="stylesheet">
        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/flaticon/font/flaticon.css" rel="stylesheet"> 
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

        <!-- ì¤íì¼ìí¸ -->
<!--         <link href="css/shoppingcss/style.css" rel="stylesheet">
 -->        <script src="lib/jquery-3.6.0.min.js"></script>
        <script src="js/vide/jquery.vide.js"></script>
        
        <style type="text/css">
            @import url("../lib/css/style.css");
        </style>
        <style>
        
        
        
         html,
      body {
        width: 100%;
        height: 100%;
      }@import url(https://fonts.googleapis.com/css?family=Exo+2:300,400,500,600);
body {
  font-family: 'Varela', sans-serif;
  overflow: hidden;
}

.wrap {
  background-size: contain;
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
}

.glitch {
  font-family: 'Exo 2', sans-serif;
  font-weight: 600;
  color: RED;
  font-size: 100px;
  position: relative;
  margin: 0 auto;
  text-shadow: 0px -5px 10px white, 0px 0px 5px rgba(255, 255, 255, 0), 0px 0px 10px rgba(255, 255, 255, 0), 0px 0px 15px rgba(255, 255, 255, 0), 0px 0px 20px rgba(255, 255, 255, 0);
  -webkit-animation: noise-anim-2 3s infinite linear alternate-reverse, shift 4s ease-in-out infinite alternate, blur 8s ease-in-out infinite alternate;
          animation: noise-anim-2 3s infinite linear alternate-reverse, shift 4s ease-in-out infinite alternate, blur 8s ease-in-out infinite alternate;
  transform: skewX(0deg);
}
@-webkit-keyframes blur {
  0%,40%, 50%, 60%, 90%, 95%, 100% {
    text-shadow: 0px -5px 10px white, 0px 0px 5px rgba(255, 255, 255, 0), 0px 0px 10px rgba(255, 255, 255, 0), 2px 1px 15px rgba(100, 240, 255, 0), 0px 0px 20px rgba(255, 255, 255, 0);
  }
  45%, 75% {
    text-shadow: 0px -5px 10px white, 0px 0px 5px white, 0px 0px 10px white, 2px 1px 15px #64f0ff, 0px 0px 20px white;
  }
  97.5% {
    text-shadow: 0px -5px 10px rgba(255, 255, 255, 0), 0px 0px 5px rgba(255, 255, 255, 0), 0px 0px 10px rgba(255, 255, 255, 0), 2px 1px 4px #ff6464, 0px 0px 20px rgba(255, 255, 255, 0);
  }
}
@keyframes blur {
  0%,40%, 50%, 60%, 90%, 95%, 100% {
    text-shadow: 0px -5px 10px white, 0px 0px 5px rgba(255, 255, 255, 0), 0px 0px 10px rgba(255, 255, 255, 0), 2px 1px 15px rgba(100, 240, 255, 0), 0px 0px 20px rgba(255, 255, 255, 0);
  }
  45%, 75% {
    text-shadow: 0px -5px 10px white, 0px 0px 5px white, 0px 0px 10px white, 2px 1px 15px #64f0ff, 0px 0px 20px white;
  }
  97.5% {
    text-shadow: 0px -5px 10px rgba(255, 255, 255, 0), 0px 0px 5px rgba(255, 255, 255, 0), 0px 0px 10px rgba(255, 255, 255, 0), 2px 1px 4px #ff6464, 0px 0px 20px rgba(255, 255, 255, 0);
  }
}
.glitch:after {
  content: attr(data-text);
  position: absolute;
  left: 3px;
  text-shadow: -1px 0 ;
  top: 0;
  color: RED;
  background: transparent;
  overflow: hidden;
  clip: rect(0, 900px, 0, 0);
  -webkit-animation: noise-anim-2 3s infinite linear alternate-reverse, shift 4s ease-in-out infinite alternate;
          animation: noise-anim-2 3s infinite linear alternate-reverse, shift 4s ease-in-out infinite alternate;
  transform: skewX(0deg);
  z-index: 9;
  opacity: .4;
}

.glitch:before {
  content: attr(data-text);
  position: absolute;
  left: 1px;
  text-shadow: -3px 0 ;
  top: 0;
  color: transparent;
  background: transparent;
  overflow: hidden;
  clip: rect(0, 900px, 0, 0);
  -webkit-animation: noise-anim-2 3s infinite linear alternate-reverse, shift 4s ease-in-out infinite alternate;
          animation: noise-anim-2 3s infinite linear alternate-reverse, shift 4s ease-in-out infinite alternate;
  transform: skewX(0deg);
  z-index: -5;
  opacity: .4;
}

@-webkit-keyframes noise-anim {
  0% {
    clip: rect(79px, 9999px, 35px, 0);
  }
  5% {
    clip: rect(56px, 9999px, 43px, 0);
  }
  10% {
    clip: rect(93px, 9999px, 29px, 0);
  }
  15% {
    clip: rect(6px, 9999px, 21px, 0);
  }
  20% {
    clip: rect(16px, 9999px, 61px, 0);
  }
  25% {
    clip: rect(27px, 9999px, 28px, 0);
  }
  30% {
    clip: rect(60px, 9999px, 50px, 0);
  }
  35% {
    clip: rect(33px, 9999px, 66px, 0);
  }
  40% {
    clip: rect(88px, 9999px, 11px, 0);
  }
  45% {
    clip: rect(38px, 9999px, 10px, 0);
  }
  50% {
    clip: rect(53px, 9999px, 42px, 0);
  }
  55% {
    clip: rect(98px, 9999px, 69px, 0);
  }
  60% {
    clip: rect(82px, 9999px, 14px, 0);
  }
  65% {
    clip: rect(52px, 9999px, 31px, 0);
  }
  70% {
    clip: rect(26px, 9999px, 92px, 0);
  }
  75% {
    clip: rect(54px, 9999px, 82px, 0);
  }
  80% {
    clip: rect(52px, 9999px, 24px, 0);
  }
  85% {
    clip: rect(61px, 9999px, 60px, 0);
  }
  90% {
    clip: rect(28px, 9999px, 72px, 0);
  }
  95% {
    clip: rect(99px, 9999px, 31px, 0);
  }
  100% {
    clip: rect(76px, 9999px, 99px, 0);
  }
}

@keyframes noise-anim {
  0% {
    clip: rect(79px, 9999px, 35px, 0);
  }
  5% {
    clip: rect(56px, 9999px, 43px, 0);
  }
  10% {
    clip: rect(93px, 9999px, 29px, 0);
  }
  15% {
    clip: rect(6px, 9999px, 21px, 0);
  }
  20% {
    clip: rect(16px, 9999px, 61px, 0);
  }
  25% {
    clip: rect(27px, 9999px, 28px, 0);
  }
  30% {
    clip: rect(60px, 9999px, 50px, 0);
  }
  35% {
    clip: rect(33px, 9999px, 66px, 0);
  }
  40% {
    clip: rect(88px, 9999px, 11px, 0);
  }
  45% {
    clip: rect(38px, 9999px, 10px, 0);
  }
  50% {
    clip: rect(53px, 9999px, 42px, 0);
  }
  55% {
    clip: rect(98px, 9999px, 69px, 0);
  }
  60% {
    clip: rect(82px, 9999px, 14px, 0);
  }
  65% {
    clip: rect(52px, 9999px, 31px, 0);
  }
  70% {
    clip: rect(26px, 9999px, 92px, 0);
  }
  75% {
    clip: rect(54px, 9999px, 82px, 0);
  }
  80% {
    clip: rect(52px, 9999px, 24px, 0);
  }
  85% {
    clip: rect(61px, 9999px, 60px, 0);
  }
  90% {
    clip: rect(28px, 9999px, 72px, 0);
  }
  95% {
    clip: rect(99px, 9999px, 31px, 0);
  }
  100% {
    clip: rect(76px, 9999px, 99px, 0);
  }
}
@-webkit-keyframes noise-anim-2 {
  0% {
    clip: rect(98px, 9999px, 78px, 0);
  }
  5% {
    clip: rect(4px, 9999px, 24px, 0);
  }
  10% {
    clip: rect(55px, 9999px, 55px, 0);
  }
  15% {
    clip: rect(28px, 9999px, 44px, 0);
  }
  20% {
    clip: rect(44px, 9999px, 32px, 0);
  }
  25% {
    clip: rect(8px, 9999px, 56px, 0);
  }
  30% {
    clip: rect(70px, 9999px, 46px, 0);
  }
  35% {
    clip: rect(40px, 9999px, 46px, 0);
  }
  40% {
    clip: rect(66px, 9999px, 8px, 0);
  }
  45% {
    clip: rect(43px, 9999px, 27px, 0);
  }
  50% {
    clip: rect(63px, 9999px, 38px, 0);
  }
  55% {
    clip: rect(78px, 9999px, 68px, 0);
  }
  60% {
    clip: rect(74px, 9999px, 75px, 0);
  }
  65% {
    clip: rect(34px, 9999px, 80px, 0);
  }
  70% {
    clip: rect(17px, 9999px, 24px, 0);
  }
  75% {
    clip: rect(21px, 9999px, 88px, 0);
  }
  80% {
    clip: rect(82px, 9999px, 58px, 0);
  }
  85% {
    clip: rect(1px, 9999px, 37px, 0);
  }
  90% {
    clip: rect(3px, 9999px, 22px, 0);
  }
  95% {
    clip: rect(86px, 9999px, 64px, 0);
  }
  100% {
    clip: rect(27px, 9999px, 96px, 0);
  }
}
@keyframes noise-anim-2 {
  0% {
    clip: rect(98px, 9999px, 78px, 0);
  }
  5% {
    clip: rect(4px, 9999px, 24px, 0);
  }
  10% {
    clip: rect(55px, 9999px, 55px, 0);
  }
  15% {
    clip: rect(28px, 9999px, 44px, 0);
  }
  20% {
    clip: rect(44px, 9999px, 32px, 0);
  }
  25% {
    clip: rect(8px, 9999px, 56px, 0);
  }
  30% {
    clip: rect(70px, 9999px, 46px, 0);
  }
  35% {
    clip: rect(40px, 9999px, 46px, 0);
  }
  40% {
    clip: rect(66px, 9999px, 8px, 0);
  }
  45% {
    clip: rect(43px, 9999px, 27px, 0);
  }
  50% {
    clip: rect(63px, 9999px, 38px, 0);
  }
  55% {
    clip: rect(78px, 9999px, 68px, 0);
  }
  60% {
    clip: rect(74px, 9999px, 75px, 0);
  }
  65% {
    clip: rect(34px, 9999px, 80px, 0);
  }
  70% {
    clip: rect(17px, 9999px, 24px, 0);
  }
  75% {
    clip: rect(21px, 9999px, 88px, 0);
  }
  80% {
    clip: rect(82px, 9999px, 58px, 0);
  }
  85% {
    clip: rect(1px, 9999px, 37px, 0);
  }
  90% {
    clip: rect(3px, 9999px, 22px, 0);
  }
  95% {
    clip: rect(86px, 9999px, 64px, 0);
  }
  100% {
    clip: rect(27px, 9999px, 96px, 0);
  }
}
@-webkit-keyframes shift {
  0%,40%, 44%, 58%, 61%, 65%,69%,73%,100% {
    transform: skewX(0deg);
  }
  41% {
    transform: skewX(10deg);
  }
  42% {
    transform: skewX(-10deg);
  }
  59% {
    transform: skewX(40deg) skewY(10deg);
  }
  60% {
    transform: skewX(-40deg) skewY(-10deg);
  }
  63% {
    transform: skewX(10deg) skewY(-5deg);
  }
  70% {
    transform: skewX(-50deg) skewY(-20deg);
  }
  71% {
    transform: skewX(10deg) skewY(-10deg);
  }
}
@keyframes shift {
  0%,40%, 44%, 58%, 61%, 65%,69%,73%,100% {
    transform: skewX(0deg);
  }
  41% {
    transform: skewX(10deg);
  }
  42% {
    transform: skewX(-10deg);
  }
  59% {
    transform: skewX(40deg) skewY(10deg);
  }
  60% {
    transform: skewX(-40deg) skewY(-10deg);
  }
  63% {
    transform: skewX(10deg) skewY(-5deg);
  }
  70% {
    transform: skewX(-50deg) skewY(-20deg);
  }
  71% {
    transform: skewX(10deg) skewY(-10deg);
  }
}
      

</style>
    </head>

    <body data-vide-bg = "img/1.mp4"> 
    
    <%@ include file="../common/menu.jsp"%>
	
			

		<div class="wrap">
    		<div class="glitch" data-text="GLITCH" id="t1">ORDER SUCCESS!</div>    		 
    		   </div>
   			
<!--        ì§íìí©ìì
           
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
		  
  ì§íìí©ë -->
        <br clear = "all">
        
        
        
    <script>
	$('#main').on('click' , function(){
		location.href="<%= request.getContextPath() %>/main.me";
		
	});
	</script>
	
	
        <%-- <div class="container-fluid mt-100">
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
        </div> --%>
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
