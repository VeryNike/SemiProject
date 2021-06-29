<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>운동 멤버 게시판</title>
<link href="css/style.css" rel="stylesheet">
<style>
#content{
	height: 200px;
	resize: none;
}
</style>
</head>
<body>
	<%@ include file="../common/menu.jsp"%>

	<!-- Page Header Start -->
	<div class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h2>게시판 작성</h2>
				</div>
				<div class="col-12">
					<a href="">Home</a> 
					<a href="">Board</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Page Header End -->

	<div class="container">
	<div class="col-10" style="float: none; margin:0 auto;">
		<div class="tableArea">
			<form action="<%= request.getContextPath() %>/insert.bo" method="post">
				<div class="contact-form">
					<div id="success"></div>
					
					<div class="control-group col-lg-12 col-md-12 col-sm-12">
						<select name="category" class="form-control" required="required">
							<option>----선택----</option>
							<option value="10">모두보기</option>
							<option value="20">수영</option>
							<option value="30">산책</option>
							<option value="40">자전거</option>
							<option value="50">헬스장</option>
							<option value="60">테니스</option>
							<option value="70">배드민턴</option>
						</select>
						<p class="help-block text-danger"></p>
					</div>
					
					<div class="control-group col-lg-12 col-md-12 col-sm-12">
						<input type="text" class="form-control" id="title" name="title" placeholder="Title" required="required" data-validation-required-message="Please enter a title" />
						<p class="help-block text-danger"></p>
					</div>
					
					<div class="control-group col-lg-12 col-md-12 col-sm-12">
						<textarea class="form-control" id="content" name="content" placeholder="Content" required="required" data-validation-required-message="Please enter your Content"></textarea>
						<p class="help-block text-danger"></p>
					</div>
					
					<div class="col-lg-4 col-md-6 col-sm-12">
						<input type="submit" class="btn btn-outline-primary" id="insertBtn" value="등록"> 
						<input type="button" class="btn btn-outline-primary" id="cancelBtn" onclick="location.href='<%= request.getContextPath() %>/boardList.me'" value="취소">
					</div>
					
				</div>
			</form>
		</div>
		</div>
	</div>


	<%@ include file="../common/footer.jsp"%>
	
	<script src="mail/contact.js"></script>


</body>
</html>