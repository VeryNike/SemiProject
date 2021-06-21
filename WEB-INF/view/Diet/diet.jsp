<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free WebsiAte Template" name="keywords">
<meta content="Free Website Template" name="description">
   
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
#selectD{
   width:200px;
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
   height:200px;
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
#dTable{
   width: 250px;
   height:350px;
   border:1px solid grey;
}
td{border-bottom: 1px solid grey;}

#dList{
   display: none;
   
}   

label{
   color: #c1dff0;
} 

label {
   display: block;
    padding: 12px 20px;
    font-size: 14px;
    font-weight: 600;
    letter-spacing: 1px;
    color: #c1dff0;
    /* background: #636363; */
    border-radius: 0;
    transition: .3s;
}

label:hover {
    color: #636363;
    background: #ffffff;
}

</Style>

<script src="lib/jquery-3.6.0.min.js"></script>

<link href="css/style.css" rel="stylesheet">

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
                                        <li value="s1"><img class="imgbox" src="<%= request.getContextPath() %>/images/diet/s1.png"></li>
                                        <li value="s2"><img class="imgbox" src="<%= request.getContextPath() %>/images/diet/s2.png"></li>
                                        <li value="s3"><img class="imgbox" src="<%= request.getContextPath() %>/images/diet/s3.png"></li>
                                     </ul>
                              </li>
                              <li>
                                     <label>하드하게 관리할 때</label>
                                     <ul>
                                        <li value="h1"><img class="imgbox" src="<%= request.getContextPath() %>/images/diet/h1.png"></li>
                                        <li value="h2"><img class="imgbox" src="<%= request.getContextPath() %>/images/diet/h2.png"></li>
                                        <li value="h3"><img class="imgbox" src="<%= request.getContextPath() %>/images/diet/h3.png"></li>
                                     </ul>
                              </li>
                              <li>
                                     <label> 출출할 때</label>
                                     <ul>
                                        <li value="d1"><img class="imgbox" src="<%= request.getContextPath() %>/images/diet/d1.png"></li>
                                        <li value="d2"><img class="imgbox" src="<%= request.getContextPath() %>/images/diet/d2.png"></li>
                                        <li value="d3"><img class="imgbox" src="<%= request.getContextPath() %>/images/diet/d3.png"> </li>
                                     </ul>
                              </li>
                           </ul>
                                        
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="service-item active">
                        <div class="service-icon">
                            <i class="flaticon-workout-1"></i>
                        </div><br>
                        
                        <form>
                        <div>
                         <label>날짜 선택</label><br>
                         <input type="date" id="date"><br><br>
                            <label>추천메뉴에서 고르기</label><br>
                                <select id="selectD" name="selectD" >
                                   <option selected> - - </option>
                                   <option value="s1">든든 메뉴1</option>
                                   <option value="s2">든든 메뉴2</option>
                                   <option value="s3">든든 메뉴3</option>
                                   <option value="h1">하드 메뉴1</option>
                                   <option value="h2">하드 메뉴2</option>
                                   <option value="h3">하드 메뉴3</option>
                                   <option value="d1">간식 메뉴1</option>
                                   <option value="d2">간식 메뉴2</option>
                                   <option value="d3">간식 메뉴3</option>
                                </select><br><br>
                                
                            <label>직접 기록하기</label><br>
                                <textarea id="tBox" name="tBox"></textarea><br><br>

                            <label>사진 기록하기</label><br>
                                <input id="fileBtn" type="file"><br><br>
                               
                                <input type="button" id="saveBtn" name="save" value="Save">
                        </div>
                        </form>
                        
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
                    <div class="service-item">
                        <div class="service-icon">
                            <i class="flaticon-workout-2"></i>
                        </div>
                        <label>날짜별 기록</label><br>

                        <table id="dTable" style="margin-left: auto; margin-right: auto;">
                           <tr>
                              <td>2021/06/10</td>
                              <div id="dList">
                                 숨겨져있다가 내용으로 나올부분                              
                              </div>
                           </tr>
                           
                           <tr>
                              <td>2021/06/11</td>
                           </tr>
                           <tr>
                              <td>2021/06/12</td>
                           </tr>
                           <tr>
                              <td>2021/06/13</td>
                           </tr>
                           <tr>
                              <td>2021/06/14</td>
                           </tr>
                           <tr>
                              <td>2021/06/15</td>
                           </tr>
                        </table>
                        

                    </div>
                </div>
                
            </div>
        </div>
    </div>
    <!-- Service End -->
   

   <%@ include file="../common/footer.jsp"%>
   
   <script>
      $('#selectDiet ul>li>label').on('click', function(){
         $(this).next().slideToggle();
         $('#selectDiet ul li ul').not($(this).next()).slideUp();
      });
      
      $('#selectDiet ul li ul li').on('click', function(){
         $('#selectD').val($(this).attr('value')).prop("selected", true);
      });
   </script>

</body>

</html>