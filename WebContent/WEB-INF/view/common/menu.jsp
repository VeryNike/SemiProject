<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="user.model.vo.User"%>
<%
	User loginUser = (User) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPT - about us</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free Website Template" name="keywords">
<meta content="Free Website Template" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&display=swap"
	rel="stylesheet">

<!-- CSS Libraries -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/flaticon/font/flaticon.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
<link href="css/style_home.css" rel="stylesheet">
</head>

<body>
	<!-- Top Bar Start -->
	<div class="top-bar d-none d-md-block">
		<div class="container-fluid">
			<div class="row">

				<div class="col-md-8">
					<div class="top-bar-left">

						<div class="text">
								<% if(loginUser != null){ %>
							<h2 id="mypage">
								<i class="far fa-user-circle"></i>
								<%=loginUser.getUserName()%>님의 My page
							</h2>
								<% } else { %>
									비회원 보기 입니다
								<%} %>
						</div>
						<div class="text">
						<% if(loginUser != null){ %>
							<h2 id="logout">
								<i class="fa fa-sign-out-alt"></i> logout
							</h2>
						<% } else { %>
							<h2 id="login">
								<i class="fa fa-sign-in-alt"></i> login
							</h2>
						<%} %>
						</div>
						
					</div>
				</div>

				<div class="col-md-4">
					<div class="top-bar-right">
						<div class="social">
							<a href=""><i class="fab fa-twitter"></i></a> 
							<a href=""><i class="fab fa-facebook-f"></i></a> 
							<a href=""><i class="fab fa-linkedin-in"></i></a> 
							<a href=""><i class="fab fa-instagram"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Top Bar End -->

	<!-- Nav Bar Start -->
	<div class="navbar navbar-expand-lg bg-dark navbar-dark">
		<div class="container-fluid">
			<% if(loginUser != null){ %>
			<a href="<%=request.getContextPath()%>/home.me" class="navbar-brand">
				<img src="images/logo.png">
			</a>
			<% } else { %>
			<a href="<%=request.getContextPath()%>" class="navbar-brand">
				<img src="images/logo.png">
			</a>
			<% } %>
			<button type="button" class="navbar-toggler" data-toggle="collapse"
				data-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse justify-content-between"
				id="navbarCollapse">
				<div class="navbar-nav ml-auto">
				<% if(loginUser != null){ %>
					<div id="home" class="nav-item nav-link menus">Home</div>
					<div id="diet" class="nav-item nav-link menus">Diet</div>
					<div id="shopping" class="nav-item nav-link menus">Shopping</div>
					<% } else { %>
					<div class="nav-item nav-link menus">Home</div>
					<div class="nav-item nav-link menus">Diet</div>
					<div class="nav-item nav-link menus">Shopping</div>
					<% } %>
					<div id="board" class="nav-item nav-link menus">Board</div>
					<div id="team" class="nav-item nav-link menus">AboutUs</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Nav Bar End -->




	<!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/wow/wow.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="lib/isotope/isotope.pkgd.min.js"></script>
	<script src="lib/lightbox/js/lightbox.min.js"></script>


	<script src="mail/jqBootstrapValidation.min.js"></script>
	<script src="mail/contact.js"></script>

	<script src="js/main.js"></script> -->

	<script>

	
	$('#mypage').on('click', function(){
		location.href = "<%=request.getContextPath()%>/mypage.me"; 
	});
	
	$('#logout').on('click', function(){
		location.href = "<%=request.getContextPath()%>/logout.me";
	});
	
	$('#login').on('click', function(){
		location.href = "<%=request.getContextPath()%>";
	});
	
	
	$('.menus').on('click', function(){
		console.log('메뉴클릭');
		$(this).addClass('active');
		$('.menus').not($(this)).removeClass('active');
	});
	
	
	$('#home').on('click', function(){
		location.href='<%=request.getContextPath()%>/home.me';
	});
	
	$('#diet').on('click', function(){
		location.href='<%=request.getContextPath()%>/diet.me';
	});
	$('#shopping').on('click', function(){
		location.href='<%=request.getContextPath()%>/shopping.me';
	});

	$('#board').on('click', function(){
		location.href='<%=request.getContextPath()%>/boardList.me';
	});

	$('#team').on('click', function(){
		location.href='<%=request.getContextPath()%>/team.me';
	});
	</script>
</body>

</html>