<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="board.model.vo.PageInfo"%>
    
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>


.btn btn-outline-primary {

}

.btn btn-outline-warning {
	margin-left: 10px;
	margin-right: 10px;
}

.btn btn-outline-danger {
	
}

.b-select-wrap1 {
	position: absolute;
	right: 0px;
	top: -20px;
	margin-right:100px;
}

.b-select-wrap2 {
    position: absolute;
    right: 0px;
    top: -20px;
	margin-right: 0px;
}

</style>
<title>Insert title here</title>

</head>
<body>
	<%@ include file = "WEB-INF/views/common/base.jsp" %>
	
	<!-- Blog Start -->
	<div class="blog">
		<div class="container">
			<div class="section-header text-center wow zoomIn"
				data-wow-delay="0.1s">
				<p>Commnuity</p>
				<h2>Work Member</h2>
			</div>
			<div class="row blog-page">
				<div class="row col-12">
					<!-- <button type="button" class="btn btn-outline-primary">추천수</button>&nbsp; 
					<button type="button" class="btn btn-outline-warning">조회수</button>&nbsp;
					<button type="button" class="btn btn-outline-danger">댓글수</button> -->
					
					<input type="button" class="btn btn-outline-primary" value="추천수">
					<input type="button" class="btn btn-outline-warning" value="조회수">
					<input type="button" class="btn btn-outline-danger" value="댓글수">
					
					<div class="b-select-wrap1">
						<select class="form-control b-select">
							<option>운동</option>
							<option>자전거</option>
							<option>산책</option>
						</select>
					</div>
		
					<div class="b-select-wrap2">
						<select class="form-control b-select" style="float: right;">
							<option>지역</option>
							<option>자전거</option>
							<option>산책</option>
						</select>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.0s">
					<div class="blog-item">
						<div class="blog-text">
							<h2>수영 하실 분</h2>
							<div class="blog-meta">
								<p><i class="far fa-user"></i>user01</p>
								<p><i class="far fa-list-alt"></i>수영</p>
								<p><i class="far fa-calendar-alt"></i>01-Jan-2045</p>
								<p><i class="far fa-comments"></i>5</p>
							</div>
							<p>Lorem ipsum dolor sit amet elit. Neca pretim miura bitur
								facili ornare velit non vulpte liqum metus tortor</p>
							<a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
					<div class="blog-item">

						<div class="blog-text">
							<h2>산책 같이 하실 분</h2>
							<div class="blog-meta">
								<p><i class="far fa-user"></i>user02</p>
								<p><i class="far fa-list-alt"></i>산책</p>
								<p><i class="far fa-calendar-alt"></i>01-Jan-2045</p>
								<p><i class="far fa-comments"></i>5</p>
							</div>
							<p>Lorem ipsum dolor sit amet elit. Neca pretim miura bitur
								facili ornare velit non vulpte liqum metus tortor</p>
							<a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
					<div class="blog-item">
						<div class="blog-img"></div>
						<div class="blog-text">
							<h2>자전거 같이 타실 분</h2>
							<div class="blog-meta">
								<p><i class="far fa-user"></i>user03</p>
								<p><i class="far fa-list-alt"></i>자전거</p>
								<p><i class="far fa-calendar-alt"></i>01-Jan-2045</p>
								<p><i class="far fa-comments"></i>5</p>
							</div>
							<p>Lorem ipsum dolor sit amet elit. Neca pretim miura bitur
								facili ornare velit non vulpte liqum metus tortor</p>
							<a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.6s">
					<div class="blog-item">
						<div class="blog-img"></div>
						<div class="blog-text">
							<h2>헬스장 같이 가실 분</h2>
							<div class="blog-meta">
								<p><i class="far fa-user"></i>user04</p>
								<p><i class="far fa-list-alt"></i>헬스</p>
								<p><i class="far fa-calendar-alt"></i>01-Jan-2045</p>
								<p><i class="far fa-comments"></i>5</p>
							</div>
							<p>Lorem ipsum dolor sit amet elit. Neca pretim miura bitur
								facili ornare velit non vulpte liqum metus tortor</p>
							<a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.8s">
					<div class="blog-item">
						<div class="blog-img"></div>
						<div class="blog-text">
							<h2>테니스 같이 치실 분</h2>
							<div class="blog-meta">
								<p><i class="far fa-user"></i>user05</p>
								<p><i class="far fa-list-alt"></i>테니스</p>
								<p><i class="far fa-calendar-alt"></i>01-Jan-2045</p>
								<p><i class="far fa-comments"></i>5</p>
							</div>
							<p>Lorem ipsum dolor sit amet elit. Neca pretim miura bitur
								facili ornare velit non vulpte liqum metus tortor</p>
							<a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="1s">
					<div class="blog-item">

						<div class="blog-text">
							<h2>배드민턴 같이 치실 분</h2>
							<div class="blog-meta">
								<p><i class="far fa-user"></i>user06</p>
								<p><i class="far fa-list-alt"></i>배드민턴</p>
								<p><i class="far fa-calendar-alt"></i>01-Jan-2045</p>
								<p><i class="far fa-comments"></i>5</p>
							</div>
							<p>Lorem ipsum dolor sit amet elit. Neca pretim miura bitur
								facili ornare velit non vulpte liqum metus tortor</p>
							<a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
			</div>
			<!-- 페이징 처리 -->
			<div class="row">
				<div class="col-12">
					<ul class="pagination justify-content-center">
						<li class="page-item disabled"><a class="page-link" onclick="location.href = '<%= request.getContextPath()%>/list.bo?<%= currentPage -1%>'">Previous</a></li>
						<% for(int p = startPage; p <= endPage; p++){%>
							<%if(p == currentPage) { %>
								<li class="page-item"><a class="page-link" onclick="disabled"><%=p %></a>				
							<%}else { %>
								<li class="page-item"><a class="page-link" onclick="location.href='<%=request.getContextPath()%>/list.bo?currentPage=<%= p %>'"><%= p %></a></li>
							<%} %>
						<%} %>
						<li class="page-item"><a class="page-link" onclick ="location.href = '<%= request.getContextPath()%>/list.bo?<%=currentPage +1%>'">Next</a></li>
					</ul>
				</div>
			</div>
			<!-- 페이징 끝 -->
		</div>
	</div>
	
	
	<%@ include file = "WEB-INF/views/common/footer.jsp" %>
</body>
</html>