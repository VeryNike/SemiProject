<<<<<<< HEAD
<%@page import="home.model.vo.PT"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
>>>>>>> main
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="css/style_home.css" rel="stylesheet">
<script src="lib/jquery-3.6.0.min.js"></script>

</head>
<body>

	<%@ include file="../common/menu.jsp"%>

	<div class="hero">
		<div class="container-fluid">
			<div class="row align-items-center">
				<div class="col-sm-12 col-md-6">
					<div class="hero-text">
						<h1>MyPT For Good Health</h1>
						<p>Physical fitness is not only one of the most important keys
							to a healthy body, it is the basis of dynamic and creative
							intellectual activity.</p>
					</div>
				</div>
<<<<<<< HEAD
				<div class="col-sm-12 col-md-6">
					<%@ include file="../weather/weather.jsp" %>
				</div>
=======
>>>>>>> main
			</div>
		</div>
	</div>

	<div class="about wow fadeInUp" data-wow-delay="0.1s">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 col-md-6 h-50">
					<div class="about-img">
						<div id="calendarArea">
							<div id="calendarTop" class="clearfix">
								<div id="prev"></div>
								<div id="todayis">TodayIs</div>
								<div id="next"></div>
							</div>
							<div id="calendarbox">
								<table id="calendar">
									<thead>
										<tr>
											<th>일</th>
											<th>월</th>
											<th>화</th>
											<th>수</th>
											<th>목</th>
											<th>금</th>
											<th>토</th>
										</tr>
									</thead>
									<tbody id="calendarbody" class="calendarbody"></tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-5 col-md-6">
					<div class="section-header text-left">
						<div id="goalList" class="list">
							<h4>Achievement Status</h4>
							<div class="progress">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="0" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>
<<<<<<< HEAD
<!-- 							<div id="goal">
								<div id="goalBar"></div>
							</div> -->
=======
							<div id="goal">
								<div id="goalBar"></div>
							</div>
>>>>>>> main
						</div>
						<div id="checkList" class="list">
							<h4>Check-List</h4>
							<h6 class="save">save</h6>
							<div class="chk"></div>
						</div>
					</div>

<<<<<<< HEAD
=======
					<br>

>>>>>>> main
					<div class="about-text">
						<div id="ptList" class="list">
							<ul class="clearfix">
								<li id="all" class="cate">전신</li>
								<li id="leg" class="cate">하체</li>
								<li id="arm" class="cate">팔</li>
								<li id="chest" class="cate">가슴</li>
								<li id="abs" class="cate">복근</li>
								<li id="back" class="cate">등</li>
							</ul>
<<<<<<< HEAD
							
							<div id="allBox" class="pt">
                                <ul>
                                    <li title="1set"><input type="button" value="+"> 버피 (Burpee)</li>
                                    <li title="1set"><input type="button" value="+"> 마운틴 클라이버(Moutain climber)</li>
                                    <li title="1set"><input type="button" value="+"> 플랭크 (Plank)</li>
                                    <li title="1set"><input type="button" value="+"> 푸쉬업(Push-up)</li>
                                    <li title="1set"><input type="button" value="+"> 스쿼드 점프(Squat jump)</li>
                                    <li title="1set"><input type="button" value="+"> 런지 (Lunge)</li>
                                </ul>
                            </div>
                            <div id="legBox" class="pt">
                                <ul>
                                    <li title="1set"><input type="button" value="+"> 스쿼트 (squat)</li>
                                    <li title="1set"><input type="button" value="+"> 레그프레스 (Leg press)</li>
                                    <li title="1set"><input type="button" value="+"> 레그 익스텐션 (Leg extension)</li>
                                    <li title="1set"><input type="button" value="+"> 레그 컬(Leg curl)</li>
                                    <li title="1set"><input type="button" value="+"> 데드리프트(Deadlift)</li>
                                </ul>
                            </div>
                            <div id="armBox" class="pt">
                                <ul>
                                    <li title="1set"><input type="button" value="+"> 덤벨 컬 (Dumbbell – curl)</li>
                                    <li title="1set"><input type="button" value="+"> 바벨 컬 (Barbell – curl)</li>
                                    <li title="1set"><input type="button" value="+"> 트라이 셉스 푸시다운 (Triceps Pushdown)</li>
                                    <li title="1set"><input type="button" value="+"> 트라이 셉스 익스텐션 (Triceps Extension)</li>
                                    <li title="1set"><input type="button" value="+"> 덤벨 시티드 오버헤드 프레스(Dumbbell seated overhead
                                            press)</li>
                                </ul>
                            </div>
                            <div id="chestBox" class="pt">
                                <ul>
                                    <li title="1set"><input type="button" value="+"> 벤치 프레스 (Bench press)</li>
                                    <li title="1set"><input type="button" value="+"> 덤벨 플라이 (Dumbbell Fly)</li>
                                    <li title="1set"><input type="button" value="+"> 푸쉬 업 (Push-up)</li>
                                    <li title="1set"><input type="button" value="+"> 케이블 크로스 오버 (Cable Cross over)</li>
                                    <li title="1set"><input type="button" value="+"> 딥스 (Dips)</li>
                                </ul>
                            </div>
                            <div id="absBox" class="pt">
                                <ul>
                                    <li title="1set"><input type="button" value="+"> 시티드 니업 (Seated Knee Up)</li>
                                    <li title="1set"><input type="button" value="+"> 브이 업 (V-up)</li>
                                    <li title="1set"><input type="button" value="+"> 러시안 트위스트 (Russian-twist)</li>
                                    <li title="1set"><input type="button" value="+"> 레그 레이즈 (Leg – raise)</li>
                                    <li title="1set"><input type="button" value="+"> 크런치 (Crunch)</li>
                                    <li title="1set"><input type="button" value="+"> 푸쉬업 홀드 (Push-up hold)</li>
                                </ul>
                            </div>
                            <div id="backBox" class="pt">
                                <ul>
                                    <li title="1set"><input type="button" value="+"> 벤트 오버 바벨로우(Bent-over Barbell Row)</li>
                                    <li title="1set"><input type="button" value="+"> 렛풀다운 (Lat pull down)</li>
                                    <li title="1set"><input type="button" value="+"> 풀업 (Pull-up)</li>
                                    <li title="1set"><input type="button" value="+"> 시티드 케이블 로우 (Seated cable row)</li>
                                    <li title="1set"><input type="button" value="+"> 티바 로우 (T-bar Row)</li>
                                </ul>
                            </div>
				
						</div>
					</div>
					
=======
							<div id="allBox" class="pt">
								<ul>
									<li><input type="button" value="+"> 버피 (Burpee)</li>
									<li><input type="button" value="+"> 마운틴 클라이버(Moutain climber)</li>
									<li><input type="button" value="+"> 플랭크 (Plank)</li>
									<li><input type="button" value="+"> 푸쉬업(Push-up)</li>
									<li><input type="button" value="+"> 스쿼드 점프(Squat jump)</li>
									<li><input type="button" value="+"> 런지 (Lunge)</li>
								</ul>
							</div>
							<div id="legBox" class="pt">
								<ul>
									<li><input type="button" value="+"> 스쿼트 (squat)</li>
									<li><input type="button" value="+"> 레그프레스 (Leg press)</li>
									<li><input type="button" value="+"> 레그 익스텐션 (Leg extension)</li>
									<li><input type="button" value="+"> 레그 컬(Leg curl)</li>
									<li><input type="button" value="+"> 데드리프트(Deadlift)</li>
								</ul>
							</div>
							<div id="armBox" class="pt">
								<ul>
									<li><input type="button" value="+"> 덤벨 컬 (Dumbbell
										– curl)</li>
									<li><input type="button" value="+"> 바벨 컬 (Barbell
										– curl)</li>
									<li><input type="button" value="+"> 트라이 셉스 푸시다운
										(Triceps Pushdown)</li>
									<li><input type="button" value="+"> 트라이 셉스 익스텐션
										(Triceps Extension)</li>
									<li><input type="button" value="+"> 덤벨 시티드 오버헤드
										프레스(Dumbbell seated overhead press)</li>
								</ul>
							</div>
							<div id="chestBox" class="pt">
								<ul>
									<li><input type="button" value="+"> 벤치 프레스 (Bench
										press)</li>
									<li><input type="button" value="+"> 덤벨 플라이
										(Dumbbell Fly)</li>
									<li><input type="button" value="+"> 푸쉬 업 (Push-up)</li>
									<li><input type="button" value="+"> 케이블 크로스 오버
										(Cable Cross over)</li>
									<li><input type="button" value="+"> 딥스 (Dips)</li>
								</ul>
							</div>
							<div id="absBox" class="pt">
								<ul>
									<li><input type="button" value="+"> 시티드 니업 (Seated
										Knee Up)</li>
									<li><input type="button" value="+"> 브이 업 (V-up)</li>
									<li><input type="button" value="+"> 러시안 트위스트
										(Russian-twist)</li>
									<li><input type="button" value="+"> 레그 레이즈 (Leg –
										raise)</li>
									<li><input type="button" value="+"> 크런치 (Crunch)</li>
									<li><input type="button" value="+"> 푸쉬업 홀드
										(Push-up hold)</li>
								</ul>
							</div>
							<div id="backBox" class="pt">
								<ul>
									<li><input type="button" value="+"> 벤트 오버
										바벨로우(Bent-over Barbell Row)</li>
									<li><input type="button" value="+"> 렛풀다운 (Lat pull
										down)</li>
									<li><input type="button" value="+"> 풀업 (Pull-up)</li>
									<li><input type="button" value="+"> 시티드 케이블 로우
										(Seated cable row)</li>
									<li><input type="button" value="+"> 티바 로우 (T-bar
										Row)</li>
								</ul>
							</div>

						</div>
						<a class="btn" href="">Learn More</a>
					</div>
>>>>>>> main
				</div>
			</div>
		</div>
	</div>
<<<<<<< HEAD
	
			<%-- <%@ include file="../weather/weather.jsp" %> --%>

	<%@ include file="../common/footer.jsp"%>
	
	<script src="js/script_home.js"></script>
	<script>
	$(function () {
		$('.pt li').attr({'data-toggle':'tooltip', 'data-placement' : 'left'});
		$('[data-toggle="tooltip"]').tooltip();
	})
	</script>
	
	<!-- <script>
	$(function(){
		$.ajax({
			url:'ptList.me',
			success:function(data){
				console.log("ptlist : " + data);
				
				for(var i in data){
					var p = data[i];
					
					var $li = $('<li>').html('<input type="button" value="+">' + p.name);
					
					if(p.type == "전신"){
						$('#allBox ul').append($li);
					} else if(p.type == "하체"){
						$('#legBox ul').append($li);
					} else if(p.type == "팔"){
						$('#armBox ul').append($li);
					} else if(p.type == "가슴"){
						$('#chestBox ul').append($li);
					}else if(p.type == "복근"){
						$('#absBox ul').append($li);
					} else if(p.type == "등"){
						$('#backBox ul').append($li);
					}
				}
			}
			
		});
		
	});
	</script> -->
	
=======

	<%@ include file="../common/footer.jsp"%>
	<script src="js/script_home.js"></script>
>>>>>>> main

</body>

</html>