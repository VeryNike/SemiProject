<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="board.model.vo.Board, java.util.ArrayList, user.model.vo.User"%>

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
</head>
<body>
	<%@ include file="../common/menu.jsp"%>


	<div class="container">
		<div class="col-12 text-center">
			<div class="col-md-6">
				<h2 align="center">게시판 상세보기</h2>
				<div class="tableArea">
					<form action="<%=request.getContextPath()%>/boardUpdateForm.bo" class="detailForm" id=<%=b.getbNo() %> method="post">
						<table>
							<tr>
								<th>카테고리</th>
								<td><%=b.getCategory()%><input type="hidden" name="category" value="<%=b.getCategory()%>"></td>
								<th>제목</th>
								<td colspan="3"><%=b.getPsTitle()%><input type="hidden" name="title" value="<%=b.getPsTitle()%>"></td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><%=b.getPsWriter()%></td>
								<th>작성일</th>
								<td><%=b.getPsDate()%></td>
							</tr>
							<tr>
								<th>내용<input type="hidden" name="bId" value="<%=b.getPsContent()%>"></th>
							</tr>
							<tr>
								<td colspan="6"><textarea cols="60" rows="15" style="resize: none;" readonly name="content"><%=b.getPsContent()%></textarea></td>
							</tr>
						</table>

						<div align="center">
							<%-- <% if (b.getPsWriter().equals(loginUser2.getUserId()) && loginUser2 != null) { %> --%>
								<input type="submit" id="updateBtn" value="수정"> 
								<input type="button" onclick="deleteBoard();" id="deleteBtn" value="삭제">
								<input type="hidden" name="no" value="<%= b.getbNo() %>">
							<%-- <% } %> --%>
							<input type="button" onclick="location.href='<%=request.getContextPath()%>/boardList.me'" id="menuBtn" value="메뉴로">
						</div>
					</form>
				</div>

				<div class="replyArea">
					<div class="replyWriteArea">
						<table>
							<tr>
								<td>댓글 작성</td>
								<td><textarea rows="3" cols="80" id="replyContent" style="resize: none;"></textarea></td>
								<td><input type="button" id="addReply" value="댓글 등록"></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script>
		function deleteBoard() {
				// 정말 게시글을 삭제할 것인지 물어본 후 삭제한다고 하면 delete.bo로 넘기기
				var bool = confirm("정말 삭제하시겠습니까?");
				
				if(bool) {
					var no = $(this).attr('id');
					$('.detailForm').attr('action', 'delete.bo');
					$('.detailForm').submit();
				}
		}
	</script>
</body>
</html>