<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="board.model.vo.Board" %>
	
<% Board b = (Board)request.getAttribute("board"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="outer">
		<h4 align="center">게시판 수정</h4>
		<div class="tableArea">
			<form action="<%= request.getContextPath() %>/update.bo" method="post">
				<div class="contact-form">
					<div id="success"></div>					
					<div class="control-group col-lg-10 col-md-6 col-sm-12">
						<select name="category" class="form-control" required="required">
							<option>----선택----</option>
							<option value="10" <%= b.getCategory().equals("10") ? "selected" : "" %>>모두보기</option>
							<option value="20" <%= b.getCategory().equals("20") ? "selected" : "" %>>수영</option>
							<option value="30" <%= b.getCategory().equals("30") ? "selected" : "" %>>산책</option>
							<option value="40" <%= b.getCategory().equals("40") ? "selected" : "" %>>자전거</option>
							<option value="50" <%= b.getCategory().equals("50") ? "selected" : "" %>>헬스장</option>
							<option value="60" <%= b.getCategory().equals("60") ? "selected" : "" %>>테니스</option>
							<option value="70" <%= b.getCategory().equals("70") ? "selected" : "" %>>배드민턴</option>
						</select>
						<p class="help-block text-danger"></p>
					</div>
					<div class="control-group col-lg-10 col-md-6 col-sm-12">
						<input type="hidden" name="no" value="<%= b.getbNo() %>">
						<input type="text" class="form-control" id="title" name="title" required="required" value="<%= b.getPsTitle() %>">
						<p class="help-block text-danger"></p>
					</div>
					<div class="control-group col-lg-10 col-md-6 col-sm-12">
						<textarea class="form-control" id="content" name="content" required="required" ><%= b.getPsContent() %></textarea>
						<p class="help-block text-danger"></p>
					</div>
					<div class="col-lg-4 col-md-6 col-sm-12">
						<input type="submit" class="btn btn-outline-primary" id="updateBtn" value="수정"> 
						<input type="button" class="btn btn-outline-primary" id="cancelBtn" onclick="location.href='<%= request.getContextPath() %>/boardList.me'" value="취소">
					</div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>