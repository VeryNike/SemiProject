<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="user.model.vo.User, diet.model.vo.Diet, java.util.ArrayList"%>

<%
	Diet d = (Diet) request.getAttribute("diet");
%>
<%
	ArrayList<Diet> list = (ArrayList) request.getAttribute("list");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free WebsiAte Template" name="keywords">
<meta content="Free Website Template" name="description">

<script src="lib/jquery-3.6.0.min.js"></script>

<link href="css/style.css" rel="stylesheet">

<title>Diet</title>

<Style>
ul {
	margin: 0;
	padding: 0;
	list-style: none;
}

#date {
	width: 200px;
}

.imgbox {
	width: 100%;
}
#selectDiet{
	height: 450px;
}

#selectDiet ul li ul {
	display: none;
}

#selectDiet ul li ul li {
	margin: 5px 0;
}

#selectDiet ul li ul li:hover {
	opacity: 0.5;
}

#date{
	width: 100%;
	text-align:center;
	padding: 5px;
}

#tBox {
	resize: none;
	width: 100%;
	padding: 10px;
	height: 220px;
}
#inputArea{
	height: 500px;
}

#inputArea span {
	font-size: 15px;
}

#deleteBtn, #saveBtn {
	background-color: #c1dff0;
	color: white;
	text-align: center;
	font-weight: 700;
	width: 200px;
	border: none;
	border-radius: 10px;
}

#deleteBtn:hover, #saveBtn:hover {
	background-color: #ffffff;
	color: #c1dff0;
}

#sall{
	border-top: 1px solid grey;
	border-right: 1px solid grey;
	border-left: 1px solid grey;
	padding-right: 10px;
	/* padding: 3px; */
	text-align:right;
}

#dTableBox{
	width : 100%;
	height: 400px;
	border: 1px solid grey;
	overflow-y: scroll;
}

/* #dTableBox::-webkit-scrollbar {
    display: none;
} */

#dTableBox::-webkit-scrollbar{
	width: 8px;
}

#dTableBox::-webkit-scrollbar-thumb{
	height: 5%; 
	background-color: rgb(255, 255, 255, 0.7);
	border-radius: 10px; 
}

#dTableBox::-webkit-scrollbar-track{
	background-color: rgba(0,0,0,0);
}

#dTable {
	width: 100%;
	font-size: 13px;
	
}

th {
	border-bottom: 1px solid grey;
	width: 40px;
}

td {
	border-bottom: 1px solid grey;
	width: 260px;
}

#dList {
	display: none;
}

label {
	display: block;
	padding: 12px 20px;
	font-size: 14px;
	font-weight: 600;
	letter-spacing: 1px;
	color: #c1dff0;
	border-radius: 0;
	transition: .3s;
}

label:hover {
	color: #636363;
	background: #ffffff;
}

#tcount {
	margin-left: 60%;
	font-size: 12px;
	color: #c1dff0;
}

.ch {
	width: 10px;
	text-align: left;
}

</Style>
</head>
<body>

	<%@ include file="../common/menu.jsp"%>

	<div class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h2>Diet</h2>
				</div>
				<div class="col-12">
					<a href="">Home</a>
					<a href="">Diet</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Service Start -->
	<div class="service">
		<div class="container">

			<div class="section-header text-center wow zoomIn"
				data-wow-delay="0.1s">
				<p>Daily</p>
				<h2>Food Check</h2>
			</div>

			<div class="row">

				<div id="box1" class="col-lg-4 col-md-12 wow fadeInUp"
					data-wow-delay="0.0s">
					<div class="service-item">

						<div class="service-icon">
							<i class="flaticon-workout"></i>
						</div>

						<h3>?????? ??????</h3>
						<p>Season Menu Updated!</p>
						<div id="selectDiet">
							<ul>
								<li><label>???????????? ?????? ?????? ???</label>
									<ul>
										<li value="??????????????????, ?????????, ????????????">
											<img class="imgbox" src="<%=request.getContextPath()%>/images/diet/s1.png">
										</li>
										<li value="?????????, ???????????????, ???????????????  ">
											<img class="imgbox" src="<%=request.getContextPath()%>/images/diet/s2.png">
										</li>
										<li value="?????????, ?????????, ????????????, ?????????">
											<img class="imgbox" src="<%=request.getContextPath()%>/images/diet/s3.png">
										</li>
									</ul>
								</li>
								<li><label>???????????? ????????? ???</label>
									<ul>
										<li value="????????????, ?????????, ????????? ?????? ?????????">
											<img class="imgbox" src="<%=request.getContextPath()%>/images/diet/h1.png">
										</li>
										<li value="??????????????????,?????????,??????????????????/????????????">
											<img class="imgbox" src="<%=request.getContextPath()%>/images/diet/h2.png">
										</li>
										<li value="????????????, ??????, ??????, ??????">
											<img class="imgbox" src="<%=request.getContextPath()%>/images/diet/h3.png">
										</li>
									</ul>
								</li>
								<li><label> ????????? ???</label>
									<ul>
										<li value="???????????????, ???????????????, ??????">
											<img class="imgbox" src="<%=request.getContextPath()%>/images/diet/d1.png">
										</li>
										<li value="?????? ??????, ???????????????, ????????????, ????????????">
											<img class="imgbox" src="<%=request.getContextPath()%>/images/diet/d2.png">
										</li>
										<li value="?????????, ???????????????, ??????">
											<img class="imgbox" src="<%=request.getContextPath()%>/images/diet/d3.png">
										</li>
									</ul>
								</li>
							</ul>

						</div>
					</div>
				</div>

				<div id="box2" class="col-lg-4 col-md-12 wow fadeInUp"
					data-wow-delay="0.2s">
					<div class="service-item active">

						<div class="service-icon">
							<i class="flaticon-workout-1"></i>
						</div>

						<div id="inputArea">
							<h3>????????? ??????</h3>
							<form action="<%=request.getContextPath()%>/dForm.save"
								method="post" onsubmit="return validate();">
								<input type="date" id="date" name="dateNo">

								<label>????????? ??????</label>
								<textarea id="tBox" name="dtext" placeholder="??????????????? ?????????????????? ?????? ???????????????:)"></textarea>
								
								<span id="tcount">0</span><span>/100</span><br>
								<br>
								<input type="submit" id="saveBtn" name="save" value="Save">
							</form>
						</div>
					</div>
				</div>

				<div id="box3" class="col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.4s">
					<div class="service-item">
					
						<div class="service-icon">
							<i class="flaticon-workout-2"></i>
						</div>
						
						<h3 id="dLoad">?????? ?????? ??????</h3>
						<div id="sall">
						<input type="checkbox" id="chall">
						</div>
						<div id="dTableBox">
						
						<table id="dTable">
							<%
								if (list.isEmpty()) {
							%>
							<tr>
								<td>????????? ????????? ????????????.</td>
							</tr>
							<%
								} else {
							%>
							<!-- <tr height="10px;">
								<th style="border-bottom: 1px solid white;"></th>
								<td style="border-bottom: 1px solid white;"></td>
								<td style="border-bottom: 1px solid white;" class="ch">
									<input type="checkbox" id="chall">
								</td>
							</tr> -->
							<%
								for (int i = 0; i < list.size(); i++) {
							%>
							<tr height="45px;">
								<th><%=list.get(i).getdDate()%></th>
								<td><%=list.get(i).getMemo()%></td>
								<td class="ch">
									<input type="checkbox" name="checkRow"
										value="<%=list.get(i).getdCode()%>">
								</td>
							</tr>
							<%
								}
							%>
							<%
								}
							%>
						</table>
						</div>
						<br>
						<input type="button" id="deleteBtn" name="delete" value="select Delete">
						
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- Service End -->
	<br>

	<%@ include file="../common/footer.jsp"%>

	<script>
	$(function(){
		$('#diet').addClass('active');
		$('.menus').not('#diet').removeClass('active');
	});

	
      $('#selectDiet ul>li>label').on('click', function(){
         $(this).next().slideToggle();
         $('#selectDiet ul li ul').not($(this).next()).slideUp();
      });
      
      $('#selectDiet ul li ul li').on('click', function(){
         $('#tBox').val($(this).attr('value'));
      });
     
      $('#tBox').keyup(function(e){
          var memo = $(this).val();
          $('#tcount').html(memo.length);
          if(memo.length>100){
              alert("100??? ????????? ??????????????????!");
              $(this).val(memo.substring(0,100));
              $('#tcount').html('100');
              $('#tcount').css('color','orangered');            
          }else{
       	   $('#tcount').css('color',' #c1dff0');  
          }
      });
    
      $('#saveBtn').on('click',function(){
		var dateNo = $('#date').val();			
		var dtext = $('#tBox').val();			
		var userId = '<%=loginUser.getUserId()%>';

			$.ajax({
				url : 'dForm.save',
				data : {
					dateNo : dDate,
					dtext : memo,
					userId : userId
				},
				success : function(data) {
					$('#tBox').text('');
					var $tB = $('#dTable');
					$tB.html('');

					for ( var i in data) {
						var d = data[i];

						var $tr = $('<tr>');
						var $dateTd = $('<th>').html(d.dDate);
						var $memoTd = $('<td>').html(d.memo);

						$tr.append($dateTd);
						$tr.append($memoTd);
						$tB.append($tr);
					}
				}
			});
		});

		$('#chall').click(function() {
			if ($("#chall").prop("checked")) {
				$("input[type=checkbox]").prop("checked", true);
			} else {
				$("input[type=checkbox]").prop("checked", false);
			}
		});

		$('#deleteBtn').on('click', function() {
			var charr = new Array();
			$("input[name=checkRow]:checked").each(function(i) {
				charr[i] = $(this).attr("value");
				console.log("charr[]:" + charr[i]);
			});

			if (charr.length == 0) {
				alert("??????????????? ?????? ???????????????");
			} else {
				$.ajax({
					url : 'dForm.delete',
					data : {
						'charr' : charr
					},
					success : function(result) {
						console.log(result);
						if (result == 'd.success') {
							console.log("????????? ???????????? ?????? ??????");
							location.reload();
						} else {
							console.log("????????? ???????????? ?????? ??????");
						}
					},
					error : function(result) {
						console.lof("res:" + result)
						console.log("ajax ?????? ??????");
					}
				});
				charr = new Array(); //?????????
			}
		});
		function validate() {
			var date = $('#date');
			var memo = $('#tBox');

			if (date.val().trim().length == 0) {
				alert("????????? ???????????????");
				date.focus();
				return false;
			}
			if (memo.val().trim().length == 0) {
				alert("?????? ????????? ??????????????? ?????? ????????? ??????????????????");
				memo.focus();
				return false;
			}
			return true;
		}
	</script>
</body>
</html>