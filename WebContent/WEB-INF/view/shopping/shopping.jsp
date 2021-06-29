<%@page import="shopping.model.vo.ItemImage"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8" %>
<%@ page import = "user.model.vo.User , java.util.ArrayList , shopping.model.vo.Item"%>
<%
	ArrayList<Item> list = (ArrayList)request.getAttribute("list");
	
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
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&amp;display=swap" rel="stylesheet">

        <!-- CSS 라이브러리 -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/shoppingcss/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/flaticon/font/flaticon.css" rel="stylesheet"> 
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

        <!-- 스타일시트 -->
<!--          <link href="css/shoppingcss/style.css" rel="stylesheet">
 -->         <script src="lib/jquery-3.6.0.min.js"></script>
         
         
         
         <style>
         /*******************************/
/********** Class CSS **********/
/*******************************/
.class {
  position: relative;
  padding: 45px 0 15px 0;
}

.class #class-filter {
  padding: 0;
  margin: -15px 0 25px 0;
  list-style: none;
  font-size: 0;
  text-align: center;
}

.class #class-filter li {
  cursor: pointer;
  display: inline-block;
  margin: 5px;
  padding: 6px 12px;
  color: #636363;
  font-size: 14px;
  font-weight: 400;
  border-radius: 0;
  background: none;
  border: 1px solid #636363;
  transition: 0.3s;
}

.class #class-filter li:hover,
.class #class-filter li.filter-active {
  background: #636363;
  color: #c1dff0;
}

.class .class-item {
  position: relative;
  margin-bottom: 30px;
  overflow: hidden;
  transition: 0.3s;
}

.class .class-wrap {
  position: relative;
  width: 100%;
}

.class .class-img {
  position: relative;
  width: 300px;
  height: 400px;
  border: solid;
  border-color: whitesmoke;
}

.class .class-img img {
  position: relative;
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.class .class-text {
  position: relative;
  padding: 30px 30px 25px 30px;
  border-right: 1px solid rgba(0, 0, 0, 0.07);
  border-bottom: 1px solid rgba(0, 0, 0, 0.07);
  border-left: 1px solid rgba(0, 0, 0, 0.07);
  width: 300px;
  border: solid;
  border-color: whitesmoke;
}

.class .class-text h2 {
  font-size: 18px;
  font-weight: 600;
  margin-bottom: 10px;
}

.class .class-teacher {
  position: relative;
  height: 40px;
  width: 300px;
  margin-top: -50px;
  margin-bottom: 20px;
  display: flex;
  margin-left: -30px;
  background: #ffffff;
  box-shadow: 0 0 10px rgb(255, 255, 255);
  border-radius: 40px;
}

.class .class-teacher img {
  width: 40px;
  height: 40px;
  border-radius: 40px;
  background: #c1dff0;
}

.class .class-teacher h3 {
  width: calc(100% - 95px);
  font-size: 15px;
  font-weight: 600;
  text-align: center;
  padding: 10px 10px;
  white-space: nowrap;
  overflow: hidden;
}

.class .class-teacher a {
  width: 40px;
  height: 40px;
  padding: 0 0 3px 1px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 30px;
  font-weight: 100;
  color: #636363;
  background: #c1dff0;
  border-radius: 40px;
  transition: 0.3s;
}

.class .class-wrap:hover .class-teacher a {
  color: #c1dff0;
  background: #636363;
}

.class .class-meta {
  position: relative;
  display: flex;
  align-items: center;
}

.class .class-meta p {
  margin: 0;
  font-size: 14px;
}

.class .class-meta p i {
  margin-right: 5px;
  color: #636363;
}

.class .class-meta p:first-child {
  margin-right: 10px;
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

		<!-- 제품  시작 -->
         <div class="class">
            <div class="container">
                <div class="section-header text-center wow zoomIn" data-wow-delay="0.1s" style="visibility: visible; animation-delay: 0.1s; animation-name: zoomIn;">
                    <p>ALL</p>
                    
                </div>
               
                <div class="row">
                    <div class="col-12">
                        <ul id="class-filter">
                            <li data-filter="*" class="filter-active">All</li>
                            <li data-filter=".filter-1">CLOTHES</li>
                            <li data-filter=".filter-2">SPORTS</li>
                            <li data-filter=".filter-3">ETC</li>
                        </ul>
                    </div>
                </div>
                <div class="row class-container" style="position: relative; height: 734.3px;">
			<%
				String filter = "";
					for (Item item : list) {
						if(item.getItemCode().equals("1") || item.getItemCode().equals("2") || item.getItemCode().equals("3")){
							filter = "filter-1";
						} else if(item.getItemCode().equals("4") || item.getItemCode().equals("5") || item.getItemCode().equals("6")){
							filter = "filter-2";
						} else if(item.getItemCode().equals("7") || item.getItemCode().equals("8") || item.getItemCode().equals("9")){
							filter = "filter-3";
						}
					ItemImage img = item.getThumbnail();
				%>
                    <div class="col-lg-4 col-md-6 col-sm-12 class-item <%= filter%> wow fadeInUp" data-wow-delay="0.0s" style="position: absolute; left: 0px; top: 0px; visibility: visible; animation-delay: 1s; animation-name: fadeInUp;">
                        <div class="class-wrap">
                            <div class="class-img">
                             	<a href="<%=contextPath %>/productinfo.me?itemCode=<%=item.getItemCode() %>">
                                	<img src="<%=contextPath %>/<%=img.getImgPath() %>/<%=img.getSaveImgNm() %>" alt="Image">
                                </a>
                            </div>
                            <div class="class-text">
                                <div class="class-teacher">
                                   	<img src="<%=contextPath %>/<%=img.getImgPath() %>/<%=img.getSaveImgNm() %>" alt="Image">
                                    <h3><%=item.getItemName() %></h3>
                                    <a href="">+</a>
                                </div>
                                <h2><i class="fas fa-tag"></i> <%=item.getItemPrice() %>원</h2>
                                
                                <div class="class-meta">
                                    <p><i class="far fa-circle"></i> <%= item.getItemDetail2() %></p>
                                    <p><i class="fas fa-check"></i> <%= item.getItemSize() %> size</p>
                                </div>
                                 
                            </div>
                        </div>
                    </div>
<%				}
%>
                   
                </div>
            </div>
        </div>
  		<!-- 제품  끝 -->

		<br clear = "all">
    
        <%@ include file="../common/footer.jsp"%>
		<script>
		$(function(){
		$('#shopping').addClass('active');
		$('.menus').not('#shopping').removeClass('active');
		});
		</script>

        
    
        
		
        <!-- 하단 footer 끝 -->
		
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
