<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="user.model.vo.User, java.util.List, java.util.ArrayList" %>
<%@ page import="shopping.model.vo.Item, shopping.model.vo.ItemImage"%>
<%

   Item item = (Item) request.getAttribute("item");
   ItemImage itemImage = item.getThumbnail();
   List<ItemImage> images = item.getImages();
   
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
        
        <!-- 구글 폰트 -->
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&display=swap" rel="stylesheet">

        <!-- CSS 라이브러리 -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/flaticon/font/flaticon.css" rel="stylesheet"> 
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

        <!-- 스타일시트 -->
      <!--<link href="css/shoppingcss/style.css" rel="stylesheet">-->        
       <script src="lib/jquery-3.6.0.min.js"></script>
        
        
 <style>
        
 .my-3 {
  margin-left: 20px;
  display:inline-block;
  
  
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
  width: 600px;
  margin-right: -300px;
}

.clothes {
  margin-left: 25px;
}
.rudfh {
  background-color: white;
}
#description-tab {
  margin-bottom: 20px;
  margin-left: -100px;
}
#info-tab {
  margin-right: 40px;
}
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
.select input[type="radio"] + label {
  display: inline-block;
  cursor: pointer;
  height: 24px;
  width: 70px;
  border: 2px solid #333;
  line-height: 24px;
  text-align: center;
  font-weight: bold;
  font-size: 13px;
}
.select input[type="radio"] + label {
  background-color: #fff;
  color: #333;
}
.select input[type="radio"]:checked + label {
  background-color: #333;
  color: #fff;
}

.bcbutton {
  margin-top: 24px;
  margin-left: -1px;
}
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
.column-labels {
  margin-left: 800px;
}

#reviews {
  font-size: 13px;
}
/* popup */
#popup{
	position: absolute;
	margin-left: 18px;
	display: none;
	padding: 20px;
	background: #ffffff;
	border: 1px solid #333;
	text-align: center;
} 

.popBtn{
	padding: 5px;
	margin: 7px;
	border: 1px solid #333;
	background: #333;
	color: #ffffff;
	font-weight:bold;
}

.popBtn:hover{
	background: #ffffff;
	color: #333;
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
                    <div class="col-12">
                        
                        
                    </div>
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
    <div class="col-md-8">
        <div class = "itembox">
        <img class="img-fluid" src="<%=contextPath %>/<%=itemImage.getImgPath() %>/<%=itemImage.getSaveImgNm() %>"  alt="<%=itemImage.getImgDesc() %>" />
    </div>
    <br>
<%   for (ItemImage ii : images) { %>
    <div class = "itembox">
        <img class="img-fluid" src="<%=contextPath %>/<%=ii.getImgPath() %>/<%=ii.getSaveImgNm() %>" style="width:500px; height:600px;" alt="<%=ii.getImgDesc() %>" />
    </div>
   <br>
<%   }    %>
    </div>
    <!-- 제품 디테일 끝 -->




    <!-- 리뷰탭 시작-->
    <div class="col-md-4">
        <br>
        <h3 class="my-3" id = "ptitle"><%=item.getItemName() %></h3>
        <h5 class = "clothes"><%=item.getItemCategory() %></h5>
        
        <h3 id="productcolor"><%=item.getItemDetail2() %></h3>
        <br>
        <br>
        <h6 id = "pprice"><%=item.getItemPrice() %>원</h6>
        
        <br>
        <br>
        <br>

        <div> 
            <div class="classic-tabs border1 rounded px-4 pt-3">
            
                <ul class="nav tabs-primary nav-justified" id="advancedTab" role="tablist">
                <li class="nav-item">
                <a class="nav-link active show" id="description-tab" data-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true">Description</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="info-tab" data-toggle="tab" href="#info" role="tab" aria-controls="info" aria-selected="false">Information</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="reviews-tab" data-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false">Reviews (1)</a>
                </li>
                </ul>
                <div class="tab-content" id="advancedTabContent">
                <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                   
                   
                    
                    <p class="pt-1">
                       <%=item.getItemDesc() %>
                    </p>
                </div>
                <div class="tab-pane fade" id="info" role="tabpanel" aria-labelledby="info-tab">
                    <h5>Additional Information</h5>
                    <table class="table table-striped table-bordered mt-3">
                    <thead>
                        <tr>
                        <th scope="row" class="w-150 dark-grey-text h6">Weight</th>
                        <td><em><%= item.getItemIfm() %></em></td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                        <th scope="row" class="w-150 dark-grey-text h6">Stock</th>
                        <td><em><%= item.getItemStock() %></em></td>
                        </tr>
                    </tbody>
                    </table>
                </div>
                <div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
                    <h5><span>1</span> review for <span>Fantasy T-shirt</span></h5>
                    <div class="media mt-3 mb-4">
                    <img class="d-flex mr-3 z-depth-1" src="https://mdbootstrap.com/img/Photos/Others/placeholder1.jpg" width="62" alt="Generic placeholder image">
                    <div class="media-body">
                        <div class="d-sm-flex justify-content-between">
                        <p class="mt-1 mb-2">
                            <strong>Marthasteward </strong>
                            <span>– </span><span>January 28, 2020</span>
                        </p>
                        
                        </div>
                        <p class="mb-0">Nice one, love it!</p>
                    </div>
                    </div>
                    <hr>
                    
                    <p>Your email address will not be published.</p>
                  
                    <div>
                    <!-- 상세보기 리뷰 작성 탭 -->
                    <div class="md-form md-outline">
                        <textarea id="form76" class="md-textarea form-control pr-6" rows="4"></textarea>
                        <label for="form76">Your review</label>
                    </div>
                    <!-- 이름 -->
                    <div class="md-form md-outline">
                        <input type="text" id="form75" class="form-control pr-6">
                        <label for="form75">Name</label>
                    </div>
                    <!-- 이메일 -->
                    <div class="md-form md-outline">
                        <input type="email" id="form77" class="form-control pr-6">
                        <label for="form77">Email</label>
                        <br>
                        <button type="submit" >submit </button>
                    </div>
                   
                    
                    </div>
                </div>
                </div>
            </div>

        <br>
        <br>
        
        

        <div class="select">
            <input type="radio" id="select" name="shop"><label for="select">S</label>
            <input type="radio" id="select2" name="shop"><label for="select2">M</label>
            <input type="radio" id="select3" name="shop"><label for="select3">L</label>

            <!--add to cart 버튼 시작-->
           <div class = "bcbutton">
             <div style="float: right; width: 100%;">
                <!-- <a href="<%=request.getContextPath()%>/cart.me"><button>ADD TO CART</button></a> -->
                <button>ADD TO CART</button>
            </div>
		   
           </div>
            </div>
            <!--add to cart 버튼 끝-->
		
           <div id="popup">
		   <h4>Added to Cart!</h4>
		   <span id="goBtn" class="popBtn">Go to Cart</span>
		   <span id="closeBtn" class="popBtn">continue</span>
		</div>
        
        
        </div>
    </div>

   <!-- 리뷰 탭 끝 -->
   </div>
   </div>
   <br clear = "all">
   <!-- /.container -->
     <%@ include file="../common/footer.jsp"%>

    
    <script>
   $('#main').on('click' , function(){
      location.href="<%= request.getContextPath() %>/main.me";
      
   });
       
    $('.bcbutton').on('click', function(){
	   $('#popup').show();;
   });
   
   $('#goBtn').on('click', function(){
	   location.href="<%=request.getContextPath()%>/cart.me";
	});
   $('#closeBtn').on('click', function(){
	   $('#popup').hide();
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
   

    
    
</body>
</html>
