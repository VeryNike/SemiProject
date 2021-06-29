<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="user.model.vo.User, diet.model.vo.Diet, java.util.ArrayList"%>
   
<% Diet d = (Diet)request.getAttribute("diet"); %>
<% ArrayList<Diet> list = (ArrayList)request.getAttribute("list"); %>

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

ul{
   margin: 0;
   padding: 0;
   list-style: none;
}

#date{
   width:200px;
}
.imgbox{
   width:300px; height:100px;
}

#selectDiet ul li ul{
   display:none;
}

#selectDiet ul li ul li{
   margin: 5px 0;
}
#selectDiet ul li ul li:hover{
   opacity: 0.5;
}

#tBox{
   resize:none;
   width: 200px;
   height: 220px;
   cols :60;
}

#saveBtn{
    background-color: #c1dff0;
    color: white;
    text-align: center;
    font-weight: 700;
    width: 200px; 
    border: 2px solid #c1dff0;
    border-radius: 10px;
}
#deleteBtn{
	background-color: #c1dff0;
    color: white;
    text-align: center;
    font-weight: 700;
    width: 200px; 
    border: 2px solid #c1dff0;
    border-radius: 10px;
}

#dTable{
   width: 300px;
   height:400px;
   overflow-y: scroll;
   font-size:13px;
   border:1px solid grey;
}
th{
	border-bottom: 1px solid grey;
	width: 40px;	
}
td{
	border-bottom: 1px solid grey;
	width: 260px;	
}

#dList{
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

#tcount{
	margin-left: 60%;
	font-size: 12px;
	color:  #c1dff0;
}

.ch{
	width:10px;
	text-align:left;
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
            <div class="section-header text-center wow zoomIn" data-wow-delay="0.1s">
                <p>Daily</p>
                <h2>Food Check</h2>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.0s">
                    <div class="service-item">
                        <div class="service-icon">
                            <i class="flaticon-workout"></i>
                        </div>
                        <h3>추천 메뉴</h3>
                        <p> Season Menu Updated! </p>
                        <div id="selectDiet">
                           <ul>
                              <li>
                                  <label>든든하게 먹고 싶을 때</label>
                                  <ul>
                                      <li value="단백질쉐이크, 현미밥, 닭가슴살"><img class="imgbox" src="<%= request.getContextPath() %>/images/diet/s1.png"></li>
                                      <li value="잡곡밥, 순두부찌개, 콩나물무침  "><img class="imgbox" src="<%= request.getContextPath() %>/images/diet/s2.png"></li>
                                      <li value="잡곡밥, 된장국, 삼치구이, 콩나물"><img class="imgbox" src="<%= request.getContextPath() %>/images/diet/s3.png"></li>
                                  </ul>
                              </li>
                              <li>
				                  <label>하드하게 관리할 때</label>
				                  <ul>
				                     <li value="닭가슴살, 고구마, 드레싱 없이 샐러드"><img class="imgbox" src="<%= request.getContextPath() %>/images/diet/h1.png"></li>
				                     <li value="연어스테이크,토마토,아스파라거스/브로콜리"><img class="imgbox" src="<%= request.getContextPath() %>/images/diet/h2.png"></li>
				                     <li value="닭가슴살, 사과, 오이, 두유"><img class="imgbox" src="<%= request.getContextPath() %>/images/diet/h3.png"></li>
				                  </ul>
                              </li>
                              <li>
                                  <label> 출출할 때</label>
                                  <ul>
                                     <li value="마카다미아, 다크초콜렛, 호두"><img class="imgbox" src="<%= request.getContextPath() %>/images/diet/d1.png"></li>
                                     <li value="삶은 달걀, 방울토마토, 아보카도, 크림치즈"><img class="imgbox" src="<%= request.getContextPath() %>/images/diet/d2.png"></li>
                                     <li value="곤약면, 닭가슴살볼, 딸기"><img class="imgbox" src="<%= request.getContextPath() %>/images/diet/d3.png"> </li>
                                  </ul>
                              </li>
                           </ul>
                                        
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="service-item active">
                        <div class="service-icon">
                            <i class="flaticon-workout-1"></i>
                        </div><br>
                        
                        <form action="<%= request.getContextPath() %>/dForm.save" method="post" onsubmit="return validate();" >
                         <div>
	                         <h3>날짜별 기록</h3>
	                         <input type="date" id="date" name="dateNo"><br><br>

                             <label>피드백 작성</label><br>
                                <textarea id="tBox" name="dtext" placeholder="추천메뉴를 클릭하시거나 직접 기록하세요:)"></textarea>
                                <span id="tcount">0</span><span style="font-size:12px;">/100</span><br><br>
                         </div>
	                         <input type="submit" id="saveBtn" name="save" value="Save">
                        </form>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
                    <div class="service-item">
                        <div class="service-icon">
                            <i class="flaticon-workout-2"></i>
                        </div>
                        <h3 id="dLoad">나의 식단 일기</h3><br>
	                        <table id="dTable" style="margin-left: auto; margin-right: auto;">
								<% if(list.isEmpty()){%>
									<tr>
										<td>작성한 기록이 없습니다.</td>
									</tr> 
								<%} else {%>
									<tr height="10px;">
										<th style="border-bottom: 1px solid white;"></th>
										<td style="border-bottom: 1px solid white;"></td>
										<td style="border-bottom: 1px solid white;"class="ch"><input type="checkbox" id="chall"></td>
									</tr>
										<% for(int i=0; i<list.size(); i++){ %>
											<tr>
												<th><%= list.get(i).getdDate()%></th>
												<td><%= list.get(i).getMemo()%></td>
												<td class="ch"><input type="checkbox" name="checkRow" value="<%= list.get(i).getdCode()%>"></td>
											</tr>
										<%} %>
								<%} %>  
	                        </table><br>
						<input type="button" id="deleteBtn" name="delete" value="select Delete">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Service End -->

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
              alert("100자 이내로 입력해주세요!");
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
				url: 'dForm.save',
				data: {dateNo:dDate,  dtext:memo, userId:userId},
				success: function(data){
					 $('#tBox').text('');
					 var $tB = $('#dTable');
					 $tB.html('');
					 
					for(var i in data){
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
      
     $('#chall').click(function(){
          if($("#chall").prop("checked")){
             $("input[type=checkbox]").prop("checked",true); 
         }else{
             $("input[type=checkbox]").prop("checked",false); 
         }
     });
       
 	 $('#deleteBtn').on('click',function(){	
           var charr = new Array();
          	$("input[name=checkRow]:checked").each(function(i){	
          		charr[i] = $(this).attr("value");
          		console.log("charr[]:"+charr[i]);
          	});
 
           if(charr.length==0){
         	  alert("삭제하려는 글을 체크하세요");
           }else{
				$.ajax({
						url: 'dForm.delete',
						data: {'charr':charr},
						success: function(result){
							if(result=='d.success'){
								console.log("선택된 식단기록 삭제 성공");
								location.reload();
							}else{
								console.log("선택된 식단기록 삭제 실패");
							}
						},
						 error: function(result){
							 console.lof("res:"+result)
							 console.log("ajax 삭제 실패");
						}
			    });
				charr= new Array(); //초기화
            }
        });

      function validate(){
  		var date = $('#date');
  		var memo = $('#tBox');
  		
  		if(date.val().trim().length== 0){
  			alert("날짜를 선택하세요");
  			date.focus();
  			return false;
  		}
  		if(memo.val().trim().length== 0){
  			alert("추천 식단을 선택하거나 식단 내용을 작성해주세요");
  			memo.focus();
  			return false;
  		}
  		return true;
  	}
   </script>
</body>
</html>
