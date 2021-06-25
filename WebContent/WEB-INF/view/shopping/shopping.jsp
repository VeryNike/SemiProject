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
         <link href="css/shoppingcss/style.css" rel="stylesheet">
         <script src="lib/jquery-3.6.0.min.js"></script>
         
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

					for (Item item : list) {
					ItemImage img = item.getThumbnail();
					
					

%>
                    <div class="col-lg-4 col-md-6 col-sm-12 class-item filter-1 wow fadeInUp" data-wow-delay="0.0s" style="position: absolute; left: 0px; top: 0px; visibility: visible; animation-delay: 1s; animation-name: fadeInUp;">
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


        <%@ include file="../common/footer.jsp"%>

        <br clear = "all">
    
        
		
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
    	<script>
    	$(document).on("click", "#main", function(e) {
			location.href="<%=contextPath %>/main.me";
		});
    	
    	$(document).on("click", "#logout", function(){
    		location.href = "<%=contextPath %>/logout.me";
    	});
    	</script>
    	
    	
       

<div id="lightboxOverlay" class="lightboxOverlay" style="display: none;"></div><div id="lightbox" class="lightbox" style="display: none;"><div class="lb-outerContainer"><div class="lb-container"><img class="lb-image" src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=="><div class="lb-nav"><a class="lb-prev" href=""></a><a class="lb-next" href=""></a></div><div class="lb-loader"><a class="lb-cancel"></a></div></div></div><div class="lb-dataContainer"><div class="lb-data"><div class="lb-details"><span class="lb-caption"></span><span class="lb-number"></span></div><div class="lb-closeContainer"><a class="lb-close"></a></div></div></div></div></body></html>