<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="board.model.vo.Board, java.util.ArrayList, user.model.vo.User"%>

<%@ page import="board.model.vo.*"%>
<% Board b = (Board) request.getAttribute("board");
   ArrayList<Reply> replys = (ArrayList)request.getAttribute("replys");
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

#infoArea {
	font-size: 20px;
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

.update {
	display: none;
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
					<a href="">Home</a> 
					<a href="">Board</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Page Header End -->


	<div class="container">
		<div class="col-8" style="float: none; margin: 0 auto;">
			<div class="tableArea">
				<form action="<%=request.getContextPath()%>/boardUpdateForm.bo" class="detailForm" id=<%=b.getbNo()%> method="post">
					<div>
						<div id="infoArea" class="row col-lg-12 col-md-12 col-sm-12">
							<div class="col-lg-6 col-md-6 col-sm-6">
								<span>카테고리</span>
								<%-- <%=b.getCategory()%> --%>
								<% if(b.getCategory().equals("20")) { %>
									수영
								<% } else if(b.getCategory().equals("30")) { %>
									산책
								<% } else if(b.getCategory().equals("40")) { %>
									자전거
								<% } else if(b.getCategory().equals("50")) { %>
									헬스장
								<% } else if(b.getCategory().equals("60")) { %>
									테니스
								<% } else if(b.getCategory().equals("70")) { %>
									배드민턴
								<% } %>
								<input type="hidden" name="category" value="<%=b.getCategory()%>">
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6">
								<span>제목</span>
								<%=b.getPsTitle()%>
								<input type="hidden" name="title" value="<%=b.getPsTitle()%>">
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

					<div class="col-lg-12 col-md-12 col-sm-12">
						<textarea class="form-control" id="content" name="content"
							readonly><%=b.getPsContent()%></textarea>
					</div>


					<div id="btnArea" class="col-lg-12 col-md-6 col-sm-12 text-center">
						<% if (loginUser2 != null && b.getPsWriter().equals(loginUser2.getUserId())) { %>
							<input type="submit" class="btn btn-outline-primary" id="updateBtn" value="수정"> 
							<input type="button" class="btn btn-outline-primary" onclick="deleteBoard();" id="deleteBtn" value="삭제"> 
							<input type="hidden" name="no" value="<%=b.getbNo()%>">
						<% } %>
						<input type="button" class="btn btn-outline-primary" id="cancelBtn" onclick="location.href='<%=request.getContextPath()%>/boardList.me'" value="취소">
					</div>

				</form>
			</div>

			<div class="replyArea col-lg-12 col-md-6 col-sm-12 text-center">
				<div class="replyWriteArea row">
					<div class="col-lg-10 col-md-8 col-sm-12">
						<textarea class="form-control" id="replyContent" name="replyContent" placeholder="Content" required="required" data-validation-required-message="Please enter your Content"></textarea>
					</div>

					<div class="col-lg-2 col-md-4 col-sm-12 align-self-center">
						<input type="button" class="btn btn-outline-dark" id="addReply" value="댓글 등록">
					</div>
					
					<% if(replys.isEmpty()){ %>
					<div style="color: gray">작성된 리뷰가 없습니다.</div>
					<% } else{ %>
					<% for(int i=0; i<replys.size(); i++){ %>
					<div>
						<strong id="nblank"><%=replys.get(i).getID()%></strong>님의 댓글 (
						<strong id="dblank" value="<%=replys.get(i).getWriteDate()%>"><%=replys.get(i).getWriteDate()%></strong>
						&nbsp;written) <strong id="cblank">&nbsp;<%=replys.get(i).getCommentContent() %></strong>

						<% if(replys.get(i).getID().equals(loginUser2.getUserName())){ %>
						<span class="update" id="update_<%=replys.get(i).getCNum()%>">
							<input type="text" class="cbmod" id="cblankmod_<%=replys.get(i).getCNum()%>" name="content" value="<%=replys.get(i).getCommentContent() %>">
							<button class="replyUp" id="replyUp_<%=replys.get(i).getCNum()%>">Save</button>
						</span> <span id="model">
							<button class="replyMod" id="replywMod_<%=replys.get(i).getCNum()%>">Modify</button>
							<button class="replyDel" id="replyDel_<%=replys.get(i).getCNum()%>">Delete</button>
						</span>
						<% } %>
					</div>

					<% }%>

					<%} %>


				</div>
			</div>

		</div>
	</div>

	<%@ include file="../common/footer.jsp"%>


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
		
		$('#addReply').on('click',function(){
		    if($('#replyContent').val().trim().length== 0){
					alert("댓글을 작성해주세요");
					$('#replyContent').focus();
					return false;
				}
		
				var bNo = '<%=b.getbNo()%>';
				var name = '<%=loginUser2.getUserName()%>';
				var content = $('#replyContent').val();
				
				$.ajax({
					url: 'BoardReply.insert',
					data: {'bNo':bNo, 'name':name, 'content':content},
					success: function(data){
							
							console.log(data);
							 $('#replyContent').val('');
							
							 var $nb = $('#nblank');
							 var $db = $('#dblank');
							 var $cb = $('#cblank');
							 
							for(var i in data){
								$nb.text(data[i].ID);
								$db.text(data[i].WriteDate);
								$cb.text(data[i].CommentContent);
							}
							
							location.reload();
					},
					error: function(data){
						console.log("reviewInsert ajax error");
					}
				}); 
			});
		   
			$('.replyMod').on('click',function(){
				var rn = $(this).attr('id');
				var rnum = rn.substring(rn.indexOf('_')+1);
				console.log(rn.indexOf('_')+1);
				
				  var up = $('.update').attr('id');
					var upnum = up.substring(up.indexOf('_')+1);
						console.log("upnum:"+upnum);
						console.log("rnum:"+rnum);
						
				    $('#update_'+rnum).show();
					console.log("++rnum:", $('#update_'+rnum));
				
			});
			
			$('.replyUp').on('click',function(){
				var bno = '<%=b.getbNo()%>';
				var rn = $(this).attr('id');
				var rnum = rn.substring(rn.indexOf('_')+1);
				
				var name = '<%=loginUser2.getUserName()%>';
				var content = $('#cblankmod_'+rnum).val();
				console.log("cbm(val):"+$('#cblankmod_'+rnum).val);
				
				$.ajax({
						url : 'reply.update',
						data : {'bno' : bno, 'rnum':rnum , 'name':name, 'content':content},
						success: function(data) {
							var $cb = $('#cblank');
							for(var i in data) {
								$cb.text(data[i].content);
							}
							location.reload();
						},
						
						error : function(data) {
							console.log("reply ajax error");
						}
				
					});
				
				
			});
			
			$('.replyDel').on('click',function(){
				
				var bool = confirm("해당 댓글을 삭제하시겠습니까?")
			
				if(bool) {
					var bno = '<%=b.getbNo()%>';
					var rn = $(this).attr('id');
					var rnum = rn.substring(rn.indexOf('_')+1);
					var name ='<%=loginUser2.getUserName()%>';
					
					$.ajax({
						url : 'reply.delete',
						data : {'bno' : bno, 'rnum' : rnum, 'name' :name },
						success : function(result){
							console.log("d.result:"+result);
							location.reload();
							
						},
						
						error : function(result){
							console.log("reply ajax erro");
							console.log("result:"+result);
						}
						
					});
				
				}
			});
		
	</script>
</body>
</html>