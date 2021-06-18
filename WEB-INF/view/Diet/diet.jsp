<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="css/style.css" rel="stylesheet">
	<script src="lib/jquery-3.6.0.min.js"></script>
 	<meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free Website Template" name="keywords">
        <meta content="Free Website Template" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&display=swap" rel="stylesheet">

        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/flaticon/font/flaticon.css" rel="stylesheet"> 
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        
<title>Diet</title>
<Style>

#date{
   width:200px;
}
#imgbox{
   width:300px; height:100px;
}
#selectD{
   width:200px;
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
</Style>

<script src="lib/jquery-3.6.0.min.js"></script>

</head>
<body>

   <%@ include file="../common/menu.jsp"%>

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
                        <p> Season Menu Updated! </p><br>
                        <div>
                            <label style="color:#c1dff0">든든하게 먹고 싶을 때</label><br>
                                <img id="imgbox" src="<%= request.getContextPath() %>/images/diet/s1.png"><br>          
                                <img id="imgbox" src="<%= request.getContextPath() %>/images/diet/s2.png"><br>          
                                <img id="imgbox" src="<%= request.getContextPath() %>/images/diet/s3.png"><br><br>          
                                                                                            
                            <label style="color:#c1dff0">하드하게 관리할 때</label><br>     
                                <img id="imgbox" src="<%= request.getContextPath() %>/images/diet/h1.png"><br>          
                                <img id="imgbox" src="<%= request.getContextPath() %>/images/diet/h2.png"><br>          
                                <img id="imgbox" src="<%= request.getContextPath() %>/images/diet/h3.png"><br><br>        
                                                                                            
                            <label style="color:#c1dff0"> 출출할 때</label><br>             
                                <img id="imgbox" src="<%= request.getContextPath() %>/images/diet/d1.png"><br>          
                                <img id="imgbox" src="<%= request.getContextPath() %>/images/diet/d2.png"><br>          
                                <img id="imgbox" src="<%= request.getContextPath() %>/images/diet/d3.png"><br>        
                


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
                         <label style="color:#c1dff0">날짜 선택</label><br>
                         <input type="date" id="date"><br><br>
                            <label style="color:#c1dff0">추천메뉴에서 고르기</label><br>
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
                                
                            <label style="color:#c1dff0">직접 기록하기</label><br>
                                <textarea id="tBox" name="tBox"></textarea><br><br>

                            <label style="color:#c1dff0">사진 기록하기</label><br>
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
                        <label style="color:#c1dff0">날짜별 기록</label><br>

                        <table id="dTable">
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

</body>

</html>