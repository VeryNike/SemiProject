<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="user.model.vo.User, java.util.List, java.util.ArrayList"%>
<%@ page import="shopping.model.vo.*"%>
<%
   Item item = (Item) request.getAttribute("item");
   ItemImage itemImage = item.getThumbnail();
   List<ItemImage> images = item.getImages();
   ArrayList<Review> reviews = (ArrayList)request.getAttribute("reviews");
   
   String contextPath = request.getServletContext().getContextPath();
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>MyPT</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free Website Template" name="keywords">
<meta content="Free Website Template" name="description">

<!-- 아이콘 -->
<link href="img/favicon.ico" rel="icon">

<script src="lib/jquery-3.6.0.min.js"></script>


<style>
.my-3 {
	margin-left: 20px;
	display: inline-block;
}

.itembox {
	width: 500px;
	height: 600px;
	border: solid;
	border-color: whitesmoke;
}

.imge-fluid {
	margin-top: 50px;
	width: 100%;
	height: 100%;
}

.product-content div[class*="col-md-8"] {
	padding: 0 13px 0 0;
}

#ptitle {
	font-weight: 900;
	font-size: 40px;
}

#productcolor {
	margin-left: 24px;
	font-size: 15px;
}

.classic-tabs {
	/* width: 600px; */
	/* margin-right: -300px; */
}

.clothes {
	margin-left: 25px;
}

.rudfh {
	background-color: white;
}

/* #description-tab {
	margin-bottom: 20px;
	margin-left: -100px;
}
 */
/* #info-tab {
	margin-right: 40px;
} */

#pprice {
	margin-left: 23px;
	font-size: 30px;
	font-style: italic;
	font-weight: 40;
}

.col-md-4 {
	display: inline-block;
	position: sticky;
	margin-top: -40px;
	padding-bottom: 1500px;
	top: 15px;
	width: 100px;
	height: 10px;
}

.select {
	padding: 15px 10px;
	margin-left: 18px;
	margin-bottom: -20px;
	margin-top: -25px;
}

.select input[type="radio"] {
	display: none;
}

.select input[type="radio"]+label {
	display: inline-block;
	cursor: pointer;
	padding: 5px 25px;
	border: 2px solid #333;
	line-height: 24px;
	text-align: center;
	font-weight: bold;
	font-size: 13px;
}

.select input[type="radio"]+label {
	background-color: #fff;
	color: #333;
}

.select input[type="radio"]:checked+label {
	background-color: #333;
	color: #fff;
}

.bcbutton {
	margin-top: 24px;
	margin-left: -1px;
	pointer-events: click;
}

button {
	background: #ffffff;
	color: rgb(0, 0, 0);
	border: 1;
	position: relative;
	/* height: 60px; */
	font-size: 1.6em;
	padding: 0 2em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: black;
	font-weight: bold;
}

.bcbutton button{
	height: 60px;
} 

button:hover {
	background: #ffffff;
	color: #ff0000;
}

button:before, button:after {
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

button:hover:before, button:hover:after {
	width: 100%;
	transition: 800ms ease all;
}

.column-labels {
	margin-left: 800px;
}

#reviews {
	font-size: 13px;
}


/* popup */
#popup {
	position: absolute;
	margin-left: 18px;
	display: none;
	padding: 20px;
	background: #ffffff;
	border: 1px solid #333;
	text-align: center;
}

.popBtn {
	padding: 5px;
	margin: 7px;
	border: 1px solid #333;
	background: #333;
	color: #ffffff;
	font-weight: bold;
}

.popBtn:hover {
	background: #ffffff;
	color: #333;
}

.reviewMod, .reviewDel, .reviewUp {
	background: gray;
	color: white;
	border: 1 solid gray;
	padding: 5px 10px;
	margin: 5px;
	font-size: 10px;
	cursor: pointer;
	font-weight: bold;
}

#reviewInsert {
	background: black;
	color: white;
	border: 1px solid gray;
	position: relative;
	height: 50px;
	font-size: 1.6em;
	padding: 0 2em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: black;
	font-weight: bold;
}

#model {
	padding: 0 0 0 70%;
}

#form76 {
	resize: none;
	color: #333;
}

.update {
	display: none;
}

.cbmod {
	width: 83%;
	margin: 0 0 0 10px;
}

#ratingBox{
	margin:5px;
}



</style>

</head>

<body>

	<%@ include file="../common/menu.jsp"%>

	<!-- 페이지 헤더 시작 -->
	<div class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-12">

					<h2>Shopping</h2>
					<br>
				</div>
				<div class="col-12"></div>
			</div>
		</div>
	</div>
	<!-- 페이지 헤더 끝 -->


	<!-- Page Content -->
	<div class="container">

		<!-- Portfolio Item Heading -->
		<h1 class="my-4">
			<small></small>
		</h1>

		<!-- Portfolio Item Row -->
		<div class="row">



			<!-- 제품 디테일 시작-->
			<div class="col-lg-6 col-md-6 ">
				<div class="itembox">
					<img class="img-fluid"
						src="<%=contextPath %>/<%=itemImage.getImgPath() %>/<%=itemImage.getSaveImgNm() %>"
						alt="<%=itemImage.getImgDesc() %>" />
				</div>
				<br>
				<%   for (ItemImage ii : images) { %>
				<div class="itembox">
					<img class="img-fluid"
						src="<%=contextPath %>/<%=ii.getImgPath() %>/<%=ii.getSaveImgNm() %>"
						style="width: 500px; height: 600px;" alt="<%=ii.getImgDesc() %>" />
				</div>
				<br>
				<%   }    %>
			</div>
			<!-- 제품 디테일 끝 -->




			<!-- 리뷰탭 시작-->
			<div class="col-lg-6 col-md-6">
				<br>
				<h3 class="my-3" id="ptitle"><%=item.getItemName() %></h3>
				<h5 class="clothes"><%=item.getItemCategory() %></h5>

				<h3 id="productcolor"><%=item.getItemDetail2() %></h3>
				<br> <br>
				<h6 id="pprice"><%=item.getItemPrice() %>원
				</h6>

				<br> <br> <br>

				<div class="col-12">
					<div class="classic-tabs border1 rounded pt-3">

						<ul class="nav tabs-primary nav-justified" id="advancedTab"
							role="tablist">
							<li class="nav-item">
							<a class="nav-link active show"
								id="description-tab" data-toggle="tab" href="#description"
								role="tab" aria-controls="description" aria-selected="true">Description</a>
							</li>

							<li class="nav-item">
							<a class="nav-link" id="info-tab"
								data-toggle="tab" href="#info" role="tab" aria-controls="info"
								aria-selected="false">Information</a>
							</li>

							<li class="nav-item">
							<a class="nav-link" id="reviews-tab"
								data-toggle="tab" href="#reviews" role="tab"
								aria-controls="reviews" aria-selected="false">(<%=reviews.size()%>) Reviews
							</a>
							</li>
						</ul>

						<div class="tab-content" id="advancedTabContent">
						
							<div class="tab-pane fade show active" id="description"
								role="tabpanel" aria-labelledby="description-tab">
								<p class="pt-1">
									<%=item.getItemDesc() %>
								</p>
							</div>

							<div class="tab-pane fade" id="info" role="tabpanel"
								aria-labelledby="info-tab">
								<h5>Additional Information</h5>
								<table class="table table-striped table-bordered mt-3">
									<thead>
										<tr>
											<th scope="row" class="dark-grey-text h6">Weight</th>
											<td><em><%= item.getItemIfm() %></em></td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row" class="dark-grey-text h6">Stock</th>
											<td><em><%= item.getItemStock() %></em></td>
										</tr>
									</tbody>
								</table>
							</div>

							<div class="tab-pane fade" id="reviews" role="tabpanel"
								aria-labelledby="reviews-tab">
								<h5>
									<strong>Reviews </strong>
								</h5>
								
								<div class="media mt-3 mb-4">

									<div class="media-body">
										<% if(reviews.isEmpty()){ %>
										<div style="color: gray">작성된 리뷰가 없습니다.</div>
										<% } else{ %>
										<% for(int i=0; i<reviews.size(); i++){ %>
										<div>
											<strong id="nblank"><%=reviews.get(i).getName() %></strong>님의 Review (
											<strong id="dblank" value="<%=reviews.get(i).getCdate()%>"><%=reviews.get(i).getCdate()%></strong>
											&nbsp;written)
											
											<div class="sblank" value="<%=reviews.get(i).getstar() %>">
												<i class="fas fa-star fa-2x"></i>
												<i class="fas fa-star fa-2x"></i>
												<i class="fas fa-star fa-2x"></i>
												<i class="fas fa-star fa-2x"></i>
												<i class="fas fa-star fa-2x"></i>
											</div>
											
											<br>
											
											<div class="mb-0" id="cblank">
												&nbsp;<%=reviews.get(i).getContent() %>
											</div>
											<br>

											<% if((reviews.get(i).getName()).equals(loginUser.getUserName())){ %>
											<span class="update" id="update_<%=reviews.get(i).getRnum()%>"> 
												<input type="text" class="cbmod" id="cblankmod_<%=reviews.get(i).getRnum()%>" name="content" value="<%=reviews.get(i).getContent() %>">
												<button class="reviewUp" id="reviewUp_<%=reviews.get(i).getRnum()%>">Save</button>
											</span> 
											<span id="model">
												<button class="reviewMod" id="reviewMod_<%=reviews.get(i).getRnum()%>">Modify</button>
												<button class="reviewDel" id="reviewDel_<%=reviews.get(i).getRnum() %>">Delete</button>
											</span>
											<% } else { %>
											<% } %>
										</div>
										<hr>
										<% } %>
										<% } %>

									</div>

								</div>
								<hr>

								<p>Please your Review.</p>
								<!-- <select id="stars" name="star">
									<option selected disabled>-- 평점 선택 --</option>
									<option id="s1" value="★☆☆☆☆ 1.0">★☆☆☆☆</option>
									<option id="s2" value="★★☆☆☆ 2.0">★★☆☆☆</option>
									<option id="s3" value="★★★☆☆ 3.0">★★★☆☆</option>
									<option id="s4" value="★★★★☆ 4.0">★★★★☆</option>
									<option id="s5" value="★★★★★5.0">★★★★★</option>
								</select> -->
								
								<div id="ratingBox">
								<i class="fas fa-star ratings fa-2x"></i>
								<i class="fas fa-star ratings fa-2x"></i>
								<i class="fas fa-star ratings fa-2x"></i>
								<i class="fas fa-star ratings fa-2x"></i>
								<i class="fas fa-star ratings fa-2x"></i>
								</div>
								<div class="md-form md-outline">
									<textarea id="form76" name="content"
										class="md-textarea form-control pr-6" rows="4"
										placeholder="★★★★☆ 상품에 대한 평점 또는 후기를 남겨주세요. "></textarea>
									<br>
									<button type="submit" id="reviewInsert">Write</button>
								</div>

							</div>
						</div>
					</div>

					<br> <br>



					<div class="select">
						<input type="radio" id="select" name="shop">
						<label for="select">S</label> 
						<input type="radio" id="select2" name="shop">
						<label for="select2">M</label> 
						<input type="radio" id="select3" name="shop">
						<label for="select3">L</label>

						<!--add to cart 버튼 시작-->
						<div class="bcbutton">
							<div style="float: right; width: 100%;">
								<button>ADD TO CART</button>
							</div>

						</div>
					</div>
					<!--add to cart 버튼 끝-->

					<div id="popup">
						<h4>Added to Cart!</h4>
						<span id="goBtn" class="popBtn">Go to Cart</span> <span
							id="closeBtn" class="popBtn">continue</span>
					</div>
				</div>
			</div>

			<!-- 리뷰 탭 끝 -->
		</div>
	</div>
	<br clear="all">
	<!-- /.container -->


	<%@ include file="../common/footer.jsp"%>

	

	<script>
	$(function(){
		$('#shopping').addClass('active');
		$('.menus').not('#shopping').removeClass('active');
	});
		
   $('#main').on('click' , function(){
      location.href="<%= request.getContextPath() %>/main.me";
      
   });
   
   $(document).on('click', '#reviews-tab', function(){
	   
	   $('.sblank').each(function(i) {
		   var num = Number($(this).attr('value'));
		   for(var n = 0; n <= num; n++) {
			   $(this).children().eq(n).css('color', '#e3c032');
		   }
		   
	   });
   });
   
   var rat = 0;
   $('.ratings').on('click', function(){
	   rat = $(this).index();
	   console.log(rat);
	   $('.ratings').css('color', '#797979');
	   for(var i = 0; i <= rat; i++){
		   $('.ratings').eq(i).css('color', '#e3c032');
	   }
	   
   });
   
       
    $('.bcbutton').on('click', function(){
	   $('#popup').show();
	   $(this).css('pointer-events', 'none');
	   $.ajax({
		   url:'cart.me',
		   data:{item:<%= item.getItemCode()%>}
	   });
   });
   
   $('#goBtn').on('click', function(){
	   location.href="<%=request.getContextPath()%>/cart.me";

	});
   
   $('#closeBtn').on('click', function(){
	   $('#popup').hide();
	   $('.bcbutton').css('pointer-events', 'click');
	});
   
   $('#reviewInsert').on('click',function(){
	    if($('#form76').val().trim().length== 0){
				alert("후기를 작성해주세요");
				$('#form76').focus();
				return false;
			}
	    
			/* 	if($('#stars').val()==null){
				alert("평점을 선택해주세요");
				$('#stars').focus();
				return false;
			} */
			
			var Icode = '<%=item.getItemCode() %>';
			var name = '<%=loginUser.getUserName()%>';
			var content = $('#form76').val();	
			var star = $('#stars option:selected').val();
			console.log(star);
			
			$.ajax({
				url: 'review.insert',
				data: {'Icode':Icode, 'name':name, 'content':content, 'star':rat},
				success: function(data){
						$('#contentBox').val('');
						
						 var $nb = $('#nblank');
						 var $db = $('#dblank');
						 var $cb = $('#cblank');
						 var $sb = $('#sblank');
						 
						for(var i in data){
							$nb.text(data[i].name);
							$db.text(data[i].cdate);
							$cb.text(data[i].content);
							$sb.html(data[i].star);
							var rating = Number(data[i].star);
						}
						location.reload();
				},
				error: function(data){
					console.log("reviewInsert ajax error");
				}
			}); 
		});
	   
	   
	   $('.reviewMod').on('click',function(){
		    var rn = $(this).attr('id');
		    var rnum = rn.substring(rn.indexOf('_')+1);
			    console.log(rn.substring(rn.indexOf('_')+1));
		   	
		    var up = $('.update').attr('id');
			var upnum = up.substring(up.indexOf('_')+1);
				console.log("upnum:"+upnum);
				console.log("rnum:"+rnum);
				
		    $('#update_'+rnum).show();
			console.log("++rnum:", $('#update_'+rnum));
			
	   });
	   
	   $('.reviewUp').on('click',function(){
			var Icode = '<%=item.getItemCode() %>';
			var rn = $(this).attr('id');
			var rnum = rn.substring(rn.indexOf('_')+1);
			var name = '<%=loginUser.getUserName()%>';
			var content = $('#cblankmod_'+rnum).val();			
				console.log("cbm(val):"+ $('#cblankmod_'+rnum).val());
			
			$.ajax({
				url: 'review.update',
				data: {'Icode':Icode, 'rnum':rnum, 'name':name, 'content':content},
				success: function(data){
						var $cb = $('#cblank');
						for(var i in data){
							$cb.text(data[i].content);
						}
						location.reload();
				},
				error: function(data){
					console.log("reviewUpdate ajax error");
				}
			}); 
	   });
	   
	   $('.reviewDel').on('click',function(){
		   var bool = confirm("해당 리뷰를 삭제하시겠습니까?");
		   if(bool){
				var Icode = '<%=item.getItemCode() %>';
			    var rn = $(this).attr('id');
				var rnum = rn.substring(rn.indexOf('_')+1);
			    var name = '<%=loginUser.getUserName()%>';
			   $.ajax({
				    url:'review.delete',
			   	    data: {'Icode':Icode, 'rnum':rnum, 'name':name},
			   		success: function(result){
						console.log("d result:"+result)
						location.reload();
			},
			error: function(data){
				console.log("reviewDel ajax error");
				console.log("result:"+result);
			}
			   })
		   }
	   });
	   
   </script>


</body>
</html>
