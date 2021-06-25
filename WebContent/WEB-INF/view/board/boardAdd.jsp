<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>운동 멤버 게시판</title>
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<%@ include file="../common/menu.jsp"%>

	<div class="outer">
		<br><br><br><br>
		<h4 align="center">게시판 작성</h4>
		<div class="tableArea">
			<form action="<%= request.getContextPath() %>/insert.bo" method="post">
				<div class="contact-form">
					<div id="success"></div>
					<form name="sentMessage" id="contactForm" novlidate="novalidate">
						<div class="control-group">
							<input type="text" class="form-control" id="title" placeholder="Title" required="required" data-validation-required-message="Please enter a title" />
							<p class="help-block text-danger"></p>
						</div>
						<div class="control-group">
                            <textarea class="form-control" id="content" placeholder="Content" required="required" data-validation-required-message="Please enter your Content"></textarea>
                            <p class="help-block text-danger"></p>
                        </div>
						<div>
							<button class="btn btn-outline-primary" type="submit" id="sendMessageButton">Send Message</button>
						</div>
					</form>
				</div>
				<div align="center">
					<input type="submit" class="btn btn-outline-primary" id="insertBtn" value="등록">
					<input type="button" class="btn btn-outline-primary" id="cancelBtn" onclick="location.href='<%= request.getContextPath() %>/boardList.me'" value="취소">
				</div>
			</form>
		</div>
	</div>
	
	<%@ include file="../common/footer.jsp"%>
</body>
</html>