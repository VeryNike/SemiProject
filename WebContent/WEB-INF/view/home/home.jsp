<%@page import="home.model.vo.PT"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ArrayList<PT> list = (ArrayList) request.getAttribute("list");
System.out.println(list);
%>

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
				<div class="col-sm-12 col-md-6">
					<%@ include file="../weather/weather.jsp"%>
				</div>
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
						</div>

						<div id="checkList" class="list">
							<h4>Check-List</h4>
							<input type="button" class="save" value="save">

							<div class="chk"></div>
						</div>
					</div>

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

							<%
								if (!list.isEmpty()) {
							%>
							<div id="allBox" class="pt">
								<ul>
									<%
										for (PT p : list) {
										if (p.getPtType().equals("전신")) {
									%>
									<li><input type="button" value="+"> <%=p.getPtName()%></li>
									<%
										}
									}
									%>
								</ul>
							</div>

							<div id="legBox" class="pt">
								<ul>
									<%
										for (PT p : list) {
										if (p.getPtType().equals("하체")) {
									%>
									<li><input type="button" value="+"> <%=p.getPtName()%></li>
									<%
										}
									}
									%>
								</ul>
							</div>

							<div id="armBox" class="pt">
								<ul>
									<%
										for (PT p : list) {
										if (p.getPtType().equals("팔")) {
									%>
									<li><input type="button" value="+"> <%=p.getPtName()%></li>
									<%
										}
									}
									%>
								</ul>
							</div>

							<div id="chestBox" class="pt">
								<ul>
									<%
										for (PT p : list) {
										if (p.getPtType().equals("가슴")) {
									%>
									<li><input type="button" value="+"> <%=p.getPtName()%></li>
									<%
										}
									}
									%>
								</ul>
							</div>

							<div id="absBox" class="pt">
								<ul>
									<%
										for (PT p : list) {
										if (p.getPtType().equals("복근")) {
									%>
									<li><input type="button" value="+"> <%=p.getPtName()%></li>
									<%
										}
									}
									%>
								</ul>
							</div>

							<div id="backBox" class="pt">
								<ul>
									<%
										for (PT p : list) {
										if (p.getPtType().equals("등")) {
									%>
									<li><input type="button" value="+"> <%=p.getPtName()%></li>
									<%
										}
									}
									%>
								</ul>
							</div>
							<%
								}
							%>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>


	<%@ include file="../common/footer.jsp"%>



	<script src="js/script_home.js"></script>

</body>

</html>
