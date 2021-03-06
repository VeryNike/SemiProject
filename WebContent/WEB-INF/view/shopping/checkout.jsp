<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="user.model.vo.User, java.util.List, java.util.ArrayList"%>

<%@ page import="shopping.model.vo.Item, shopping.model.vo.ItemImage"%>
<%
	String contextPath = request.getServletContext().getContextPath();
Item item = (Item) request.getAttribute("item");
ArrayList<Item> list = (ArrayList) session.getAttribute("list");
if (list == null) {
	list = new ArrayList<Item>();
}
if (item != null) {
	list.add(item);
}
session.setAttribute("list", list);
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>MyPT</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free Website Template" name="keywords">
<meta content="Free Website Template" name="description">

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="lib/jquery-3.6.0.min.js"></script>


<link rel="stylesheet" href="css/vegas/vegas.min.css">


<style>
* /.shop {
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

.btn-lg, .form-control-sm:focus, .form-control-sm:active, a:focus, a:active
	{
	outline: none !important;
	box-shadow: none !important
}

.form-control-sm:focus {
	border: 1.5px solid #4bb8a9
}

.btn-group-lg>.btn, .btn-lg {
	padding: .5rem 0.1rem;
	font-size: 1rem;
	border-radius: 0;
	color: white !important;
	background-color: #4bb8a9;
	height: 2.8rem !important;
	border-radius: 0.2rem !important;
}

.btn-group-lg>.btn:hover, .btn-lg:hover {
	background-color: #FAE100;
}

.btn-outline-primary {
	background-color: #FAE100 !important;
	color: #FFFFFF !important;
	border-radius: 0.2rem !important;
	border: 1px solid #FAE100;
	border-color: FAE100;
}

.btn-outline-primary:hover {
	background-color: #FAE100 !important;
	color: #3A1D1D !important;
	border: 1px solid #FAE100;
	border-color: FAE100;
}

.card-2 {
	margin-bottom: 20px !important
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

@media ( max-width : 767px) {
	.breadcrumb-item+.breadcrumb-item {
		padding-left: 0
	}
}

.wlsgod {
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

.steps>div {
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
	left: 40%;
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

.customer-order {
	margin-left: 50px
}

.customer-information {
	margin-left: 34px;
}

.customer-purchase {
	margin-left: 34px;
}

.itembox {
	width: 50px;
	height: 50px;
	border: solid;
	border-color: whitesmoke;
	margin-right: 10px;
}

.img-fluid2 {
	margin-right: 20px;
	width: 100%;
	height: 100%;
}

.mb-0 {
	display: inline;
}
.product {
	margin-bottom: 10px;
}
</style>
</head>

<body id="checkbg">
	<%@ include file="../common/menu.jsp"%>


	<!-- ?????????????????? -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- ??????????????? -->



	<!--?????? ?????? ??????  -->
	<div class="wlsgod">
		<ul>
			<li class="current">SHOPPING</li>
			<li class="current">ADD TO CART</li>
			<li class="current">ORDER</li>
			<li>FINISH</li>
		</ul>

		<div class="steps">
			<div class="active">SHOPPING</div>
			<div class="active">ADD TO CART</div>
			<div class="active">ORDER</div>
			<div>FINISH</div>
		</div>
	</div>
	<br>
	<!--?????? ?????? ???  -->



	<!-- ????????? ?????? -->
	<div class=" container-fluid my-5 ">
		<div class="row justify-content-center ">
			<div class="col-xl-10">
				<div class="card shadow-lg ">
					<div class="row p-2 mt-3 justify-content-between mx-sm-2">
						<div class="col">
							<p class="text-muted space mb-0 shop">Shop No.78618K</p>
							<p class="text-muted space mb-0 shop">Store Locator</p>
						</div>
						<div class="col">
							<div class="row justify-content-start ">
								<div class="col">
									<img class="irc_mi img-fluid cursor-pointer "
										src="images/logo_19.png" width="70" height="70">
								</div>
							</div>
						</div>
						<div class="col-auto">
							<img class="irc_mi img-fluid bell"
								src="https://i.imgur.com/uSHMClk.jpg" width="30" height="30">
						</div>
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
											<p>
												<b>6, Teheran-ro 14-gil, Gangnam-gu, Seoul, Republic of
													Korea</b>
											</p>
										</div>
										<div class="col-auto">
											<p>
												<b>Very Nike , MyPT</b>
											</p>
										</div>
									</div>
									<div class="row mt-4">
										<div class="col">
											<p class="text-muted mb-2">ORDER DETAILS</p>
											<hr class="mt-0">
										</div>
									</div>

									<!-- ????????? ?????? ?????? ??? ??????  -->
									<div class="form-group">
										<label for="NAME" class="small text-muted mb-1">FULL
											NAME</label>
										<input type="text" class="form-control form-control-sm"
											name="NAME" id="NAME" aria-describedby="helpId"
											placeholder="kim ahmu gae">
									</div>
									<div class="form-group">
										<label for="NAME" class="small text-muted mb-1">ADDRESS</label>
										<input type="text" class="form-control form-control-sm"
											name="ADDRESS" id="ADDRESS" aria-describedby="helpId"
											placeholder="Republic of korea , seoul , yeoksam">
									</div>
									<div class="row no-gutters">

										<div class="col-sm-6 pr-sm-2">
											<div class="form-group">
												<label for="NAME" class="small text-muted mb-1">PHONE</label>
												<input type="text" class="form-control form-control-sm"
													name="PHONE" id="PHONE" aria-describedby="helpId"
													placeholder="010-1234-5678">
											</div>
										</div>

										<div class="col-sm-6">
											<div class="form-group">
												<label for="NAME" class="small text-muted mb-1">COMMENT</label>
												<input type="text" class="form-control form-control-sm"
													name="COMMENT" id="COMMENT" aria-describedby="helpId"
													placeholder="commnet">
											</div>
										</div>

									</div>
									<!-- ????????? ?????? ?????? ??? ???  -->
									<br> <br>
								</div>
							</div>
						</div>
						
						<div class="col-md-5">
							<div class="card border-0 ">
								<div class="card-header card-2">
									<p class="card-text text-muted mt-md-4 mb-2 space">
										YOUR ORDER <span class=" small text-muted ml-2 cursor-pointer">
											SHOPPING BAG</span>
									</p>
									<hr class="my-2">
								</div>
								<div class="card-body pt-0">

									<%
										if (!list.isEmpty()) {

										for (Item i : list) {
											ItemImage img = i.getThumbnail();
									%>
									<div class="row justify-content-between product">
									
										<div class="col-auto col-md-7">
											<div class="media flex-column flex-sm-row">
												<div class="itembox">
													<img class="img-fluid2"
														src="<%=contextPath%>/<%=img.getImgPath()%>/<%=img.getSaveImgNm()%>"
														alt="">
												</div>

												<div class="media-body my-auto">
													<div class="row">
														<div class="col-auto">
															<p class="mb-0">
																<b><%=i.getItemName()%></b>
															</p>
															<small class="text-muted"><%=i.getItemDetail2()%>/<%=i.getItemSize()%></small>
														</div>
													</div>
												</div>
											</div>
										</div>
										
										<div class=" pl-0 flex-sm-col col-auto my-auto">
											<p class="boxed-1">1</p>
										</div>
										
										<div class=" pl-0 flex-sm-col col-auto my-auto "
											id="product-price">
											<p>
												<b><span class="itemPrice"><%=i.getItemPrice()%></span> won</b>
											</p>
										</div>
		
									</div>
									<%
										}
									}
									%>
									<!-- ??????????????? -->


									<hr class="my-2">

									<!-- ?????????????????? -->
									<div class="row ">
										<div class="col">
											<div class="row justify-content-between">
												<div class="col-4">
													<p class="mb-1">
														<b>Subtotal</b>
													</p>
												</div>
												<div class="flex-sm-col col-auto">
													<p class="mb-1">
														<b><span class="subPrice"></span> won</b>
													</p>
												</div>
											</div>
											<div class="row justify-content-between">
												<div class="col-4">
													<p class="mb-1">
														<b>Tax (5%)</b>
													</p>
												</div>
												<div class="flex-sm-col col-auto">
													<p class="mb-1">
														<b><span class="taxPrice"></span> won</b>
													</p>
												</div>
											</div>
											<div class="row justify-content-between">
												<div class="col-4">
													<p class="mb-1">
														<b>Shipping</b>
													</p>
												</div>
												<div class="flex-sm-col col-auto">
													<p class="mb-1">
														<b><span class="shipPrice">15000</span> won</b>
													</p>
												</div>
											</div>
											<div class="row justify-content-between">
												<div class="col-4">
													<p>
														<b>Total</b>
													</p>
												</div>
												<div class="flex-sm-col col-auto">
													<p class="mb-1">
														<b><span class="totalPrice"></span> won</b>
													</p>
												</div>
											</div>
											<hr class="my-0">
										</div>
									</div>

									<!-- ??????????????? -->

									<!-- ????????????????????????????????? -->
									<div class="row mb-5 mt-4 ">
										<div class="col-md-7 col-lg-6 mx-auto">
											
												<button type="button"
													class="btn btn-block btn-outline-primary btn-lg" id = "kakaopay">KAKAOPAY</button>
											
										</div>
									</div>
									<!-- ?????????????????????????????? -->
									<!-- ?????? ???????????? DB??? ????????? ???????????? ?????????????????????. -->

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ????????? ??? -->

	<!-- ?????? ??? ?????? ????????????????????? ! -->
	<a href="#" class="back-to-top">
		<i class="fa fa-chevron-up"></i>
	</a>

	<!-- JavaScript Libraries -->
	<script>
	$(function(){
		$('#shopping').addClass('active');
		$('.menus').not('#shopping').removeClass('active');
		
		var price = 0;
		$('.product').each(function(i){
			price += Number($(this).children().find('.itemPrice').text());
			console.log(i+" = " +$(this).children().find('.itemPrice').text());
			
		});
		var tax = price * 0.05;
		var ship = 15000;

		
		$('.subPrice').text(price);
		$('.taxPrice').text(tax);
		$('.totalPrice').text(price + tax + ship);
		console.log(price);
		
		
		
	});
	
	
	
	
	
    </script>
    
      <script>
    
    $('#kakaopay').on('click',function(){
        var IMP = window.IMP; 
        IMP.init('imp83028356'); 
        var msg;
        var totalPrice = $('.totalPrice').text();


        
        IMP.request_pay({
            pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : 'MyPT',
            amount : totalPrice,
            buyer_email : '123@co.kr',
            buyer_name : '?????????',
            buyer_tel : '010-1234-5678',
            buyer_addr : '????????? ????????? ',
            buyer_postcode : '123-456',
            
        }, function(rsp) {
            if ( rsp.success ) {
              
                jQuery.ajax({
                    url: "view/shopping/ordersuccess.jsp", 
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        imp_uid : rsp.imp_uid
                      
                    }
                }).done(function(data) {
                 
                    if ( everythings_fine ) {
                        msg = '????????? ?????????????????????.';
                        msg += '\nimp83028356 : ' + rsp.imp_uid;
                        msg += '\n?????? ??????ID : ' + rsp.merchant_uid;
                        msg += '\?????? ?????? : ' + rsp.paid_amount;
                        msg += '?????? ???????????? : ' + rsp.apply_num;
                        
                        alert(msg);
                    } else {
                       
                    }
                });
               
                window.location.href = 'http://localhost:9801/Semi/success.me'
            } else {
                msg = '????????? ?????????????????????.';
                msg += '???????????? : ' + rsp.error_msg;
                
                window.location.href = 'http://localhost:9801/Semi/checkout.me'
                alert(msg);
            }
        })
        });
        
    ;
    </script>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="js/vegas.js"></script>

	<!-- Vegas js -->
	<script src="js/vegas/vegas.min.js"></script>
</body>
</html>
