<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="board.model.vo.Board, java.util.ArrayList, user.model.vo.User"%>

<%
	Board b = (Board) request.getAttribute("board");
User loginUser2 = (User) session.getAttribute("loginUser");
%>
<%-- <% ArrayList<Reply> list = (ArrayList)request.getAttribute("list"); %> --%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>운동 멤버 게시판 상세보기</title>
<link href="css/style.css" rel="stylesheet">
<script src="lib/jquery-3.6.0.min.js"></script>
<style>
#content {
	height: 200px;
	resize: none;
}
#infoArea{
	font-size:20px;
}
#infoArea span {
	display: inline-block;
	font-weight: bold;
	font-size: 20px;
	width: 100px;
	height: 50px;
	line-height: 50px;
}

#btnArea, .replyArea {
	margin: 20px 0;
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
					<h2>게시판 상세보기</h2>
				</div>
				<div class="col-12">
					<a href="">Home</a> <a href="">Board</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Page Header End -->


	<div class="container">
		<div class="col-8" style="float: none; margin: 0 auto;">
			<div class="tableArea">
				<form action="<%=request.getContextPath()%>/boardUpdateForm.bo"
					class="detailForm" id=<%=b.getbNo()%> method="post">
					<div>
						<div id="infoArea" class="row col-lg-12 col-md-12 col-sm-12">
							<div class="col-lg-6 col-md-6 col-sm-6">
								<span>카테고리</span>
								<%=b.getCategory()%>
								<input type="hidden" name="category"
									value="<%=b.getCategory()%>">
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6">
								<span>제목</span>
								<%=b.getPsTitle()%><input type="hidden" name="title"
									value="<%=b.getPsTitle()%>">
							</div>

							<div class="col-lg-6 col-md-6 col-sm-6">
								<span>작성자</span>
								<%=b.getPsWriter()%>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6">
								<span>작성일</span>
								<%=b.getPsDate()%>
							</div>
						</div>
					</div>
					<%-- <input type="hidden" name="bId" value="<%=b.getPsContent()%>"> --%>

					<div class="control-group col-lg-12 col-md-12 col-sm-12">
						<textarea class="form-control" id="content" name="content" readonly><%=b.getPsContent()%></textarea>
					</div>


					<div id="btnArea" class="col-lg-12 col-md-6 col-sm-12 text-center">
						<%
							if (loginUser2 != null && b.getPsWriter().equals(loginUser2.getUserId())) {
						%>
						<input type="submit" class="btn btn-outline-primary" id="updateBtn" value="수정"> 
						<input type="button" class="btn btn-outline-primary" onclick="deleteBoard();" id="deleteBtn" value="삭제">
						<%
							}
						%>
						<input type="button" class="btn btn-outline-primary" id="cancelBtn" onclick="location.href='<%=request.getContextPath()%>/boardList.me'"
							value="취소">
					</div>

				</form>
			</div>

			<div class="replyArea col-lg-12 col-md-6 col-sm-12 text-center">
				<div class="replyWriteArea row">

					<div class="col-lg-10 col-md-8 col-sm-12">
						<textarea class="form-control" id="replyContent"
							name="replyContent" placeholder="Content" required="required"
							data-validation-required-message="Please enter your Content"></textarea>
					</div>

					<div class="col-lg-2 col-md-4 col-sm-12 align-self-center">
						<input type="button" class="btn btn-outline-dark" id="addReply"
							value="댓글 등록">
					</div>

				</div>
			</div>

		</div>
	</div>

	<%@ include file="../common/footer.jsp"%>

	<script>
		function deleteBoard() {
			// 정말 게시글을 삭제할 것인지 물어본 후 삭제한다고 하면 delete.bo로 넘기기
			var bool = confirm("정말 삭제하시겠습니까?");

			if (bool) {
				var no = $(this).attr('id');
				$('.detailForm').attr('action', 'delete.bo');
				$('.detailForm').submit();
			}
		}
		
<%-- 		$('#updateBtn').on('click', function(){
			location.href='<%=request.getContextPath()%>/update.bo';
		}); --%>
	</script>
</body>
</html>
