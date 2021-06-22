<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>MyPT</title>
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	 <%@ include file="../common/menu.jsp"%>
   
	<!-- Page Header Start -->
	<div class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h2>Board</h2>
				</div>
				<div class="col-12">
					<a href="">Home</a>
					<a href="">Board</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Page Header End -->


	<!-- Class Start -->
	<div class="class">
		<div class="container">
			<div class="section-header text-center wow zoomIn"
				data-wow-delay="0.1s">
				<p>Community</p>
				<h2>Work Member</h2>
			</div>
			<div class="row">
				<div class="col-12">
					<ul id="class-filter">
						<li data-filter="*" class="filter-active">모두 보기</li>
						<li data-filter=".filter-1">수영</li>
						<li data-filter=".filter-2">산책</li>
						<li data-filter=".filter-3">자전거</li>
						<li data-filter=".filter-4">헬스장</li>
						<li data-filter=".filter-5">테니스</li>
						<li data-filter=".filter-6">배드민턴</li>
					</ul>
				</div>
			</div>
			<div class="row class-container">
				<div
					class="col-lg-4 col-md-6 col-sm-12 class-item filter-1 wow fadeInUp"
					data-wow-delay="0.0s">
					<div class="class-wrap">
						<div class="class-text">
							<h2>수영 하실 분</h2>
							<div class="class-meta">
								<p><i class="far fa-user"></i>user01</p>
								<p><i class="far fa-comments"></i>5</p>
								<p><i class="far fa-eye"></i>0</p>
							</div>
							<p>Lorem ipsum dolor sit amet elit. Neca pretim miura bitur
								facili ornare velit non vulpte liqum metus tortor</p>
							<a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
				<div
					class="col-lg-4 col-md-6 col-sm-12 class-item filter-2 wow fadeInUp"
					data-wow-delay="0.2s">
					<div class="class-wrap">
						<div class="class-text">
							<h2>산책 같이 하실 분</h2>
							<div class="class-meta">
								<p><i class="far fa-user"></i>user02</p>
								<p><i class="far fa-comments"></i>5</p>
								<p><i class="far fa-eye"></i>0</p>
							</div>
							<p>Lorem ipsum dolor sit amet elit. Neca pretim miura bitur
								facili ornare velit non vulpte liqum metus tortor</p>
							<a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
				<div
					class="col-lg-4 col-md-6 col-sm-12 class-item filter-3 wow fadeInUp"
					data-wow-delay="0.4s">
					<div class="class-wrap">
						<div class="class-text">
							<h2>자전거 같이 타실 분</h2>
							<div class="class-meta">
								<p><i class="far fa-user"></i>user03</p>
								<p><i class="far fa-comments"></i>5</p>
								<p><i class="far fa-eye"></i>0</p>
							</div>
							<p>Lorem ipsum dolor sit amet elit. Neca pretim miura bitur
								facili ornare velit non vulpte liqum metus tortor</p>
							<a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>

				<div
					class="col-lg-4 col-md-6 col-sm-12 class-item filter-4 wow fadeInUp"
					data-wow-delay="0.6s">
					<div class="class-wrap">
						<div class="class-text">
							<h2>헬스장 같이 가실 분</h2>
							<div class="class-meta">
								<p><i class="far fa-user"></i>user05</p>
								<p><i class="far fa-comments"></i>5</p>
								<p><i class="far fa-eye"></i>0</p>
							</div>
							<p>Lorem ipsum dolor sit amet elit. Neca pretim miura bitur
								facili ornare velit non vulpte liqum metus tortor</p>
							<a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>

				<div
					class="col-lg-4 col-md-6 col-sm-12 class-item filter-5 wow fadeInUp"
					data-wow-delay="0.8s">
					<div class="class-wrap">
						<div class="class-text">
							<h2>테니스 같이 치실 분</h2>
							<div class="class-meta">
								<p><i class="far fa-user"></i>user05</p>
								<p><i class="far fa-comments"></i>5</p>
								<p><i class="far fa-eye"></i>0</p>
							</div>
							<p>Lorem ipsum dolor sit amet elit. Neca pretim miura bitur
								facili ornare velit non vulpte liqum metus tortor</p>
							<a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>

				<div
					class="col-lg-4 col-md-6 col-sm-12 class-item filter-6 wow fadeInUp"
					data-wow-delay="0.8s">
					<div class="class-wrap">
						<div class="class-text">
							<h2>배드민턴 같이 치실 분</h2>
							<div class="class-meta">
								<p><i class="far fa-user"></i>user06</p>
								<p><i class="far fa-comments"></i>6</p>
								<p><i class="far fa-eye"></i>0</p>
							</div>
							<p>Lorem ipsum dolor sit amet elit. Neca pretim miura bitur
								facili ornare velit non vulpte liqum metus tortor</p>
							<a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
			</div>
			<button type="button" class="btn btn-outline-primary">글쓰기</button>
			<div class="row">
				<div class="col-12">
					<ul class="pagination justify-content-center">
						<li class="page-item"><a class="page-link" href="#">Previous</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item active"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- Class End -->

	<%@ include file="../common/footer.jsp" %>

</body>
</html>