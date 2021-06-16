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
</head>

<body>
	<!-- Top Bar Start -->
	<div class="top-bar d-none d-md-block">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                    <div class="top-bar-left">
                        <% if(loginUser != null){ %>	
                        <div class="text">
                            <i class="far fa-user-circle"></i>
                            <h2><%= loginUser.getUserName() %>님의 <a href="myPage.me"> My page</a></h2>
							<p></p>
                        </div>
                        <div class="text">
                            <i class="fa fa-sign-out-alt"></i>
                            <h2><a href=" # ">logout</a></h2>
                            <p></p>
                        </div>
                        <% } %>
                    </div>
                </div>
				<div class="col-md-4">
					<div class="top-bar-right">
						<div class="social">
							<a href=""><i class="fab fa-twitter"></i></a> <a href=""><i
								class="fab fa-facebook-f"></i></a> <a href=""><i
								class="fab fa-linkedin-in"></i></a> <a href=""><i
								class="fab fa-instagram"></i></a>
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
			<a href="<%=request.getContextPath()%>/myCalendar.me" class="navbar-brand"><img
				src="img/logo.png"></a>
			<button type="button" class="navbar-toggler" data-toggle="collapse"
				data-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse justify-content-between"
				id="navbarCollapse">
				<div class="navbar-nav ml-auto">
					<div class="nav-item nav-link menus" onclick="location.href='<%= request.getContextPath() %>/home.me'">Home</div>
					<a href = "<%=request.getContextPath() %>/shopping.me"><div class="nav-item nav-link menus">Shopping</div></a>
					<!-- onclick 미작동으로 인해 a href 태그 사용 -->
					<div class="nav-item nav-link menus" onclick="location.href='<%= request.getContextPath() %>/Diet.me'">Diet</div>

					<div class="nav-item dropdown menus">
						<a href="#" class="nav-link dropdown-toggle"
							data-toggle="dropdown">Board</a>
						<div class="dropdown-menu">
							<a href="blog.html" class="dropdown-item">Board1</a> <a
								href="single.html" class="dropdown-item">Board2</a>
						</div>
					</div>
					<div class="nav-item nav-link menus">Team</div>
					<div class="nav-item nav-link menus">About
						Us</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Nav Bar End -->
	
	
	
	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
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
	$('#logout').on('click', function(){

		location.href = "<%=request.getContextPath()%>/logout.me";
	});
	
	$('.menus').on('click', function(){
		console.log('메뉴클릭');
		$(this).addClass('active');
		$('.menus').not($(this)).removeClass('active');
	});

	</script>
</body>

</html>
