<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="css/style_home.css" rel="stylesheet">
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
                        <h3>추천 식단</h3>
                        <p>
                            Season Menu Update! <br> 단백질, 탄수화물, 비타민 등의  밸런스를 고려해 추천드립니다.<br> 즐겨찾는 식단은 ▶을 클릭해서 넣어보세요.
                        </p><br>
                        <div>
                            <label style="color:#c1dff0">근육 탄탄한 몸매를 위해</label><br>
                                <input type="text" class="tBox" value=" 닭가슴살"><button class="checkBtn">▶</button><br>
                                <input type="text" class="tBox" value=" 소세지"><button class="checkBtn">▶</button><br>
                                <input type="text" class="tBox" value=" 삶은 달걀"><button class="checkBtn">▶</button><br>
                                <input type="text" class="tBox" value=" 단백질 쉐이크"><button class="checkBtn">▶</button><br><br>                        
                              
                            <label style="color:#c1dff0">통통 튀는 활력을 위해</label><br>
                                <input type="text" class="tBox" value=" 시리얼 & 우유"><button class="checkBtn">▶</button><br>
                                <input type="text" class="tBox" value=" 통곡물 식빵"><button class="checkBtn">▶</button><br>
                                <input type="text" class="tBox" value=" 현미밥"><button class="checkBtn">▶</button><br>
                                <input type="text" class="tBox" value=" 두부 스테이크"><button class="checkBtn">▶</button><br><br>
                   
                            <label style="color:#c1dff0">시원한 장운동을 위해</label><br>
                                <input type="text" class="tBox" value=" 고구마"><button class="checkBtn">▶</button><br>
                                <input type="text" class="tBox" value=" 쌈채소"><button class="checkBtn">▶</button><br>
                                <input type="text" class="tBox" value=" 바나나"><button class="checkBtn">▶</button><br>
                                <input type="text" class="tBox" value=" 플레인 요거트"><button class="checkBtn">▶</button><br><br>
                


                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="service-item active">
                        <div class="service-icon">
                            <i class="flaticon-workout-1"></i>
                        </div>
                        <h3><span id="date">(Date)2021/05/27</span></h3>
                        <div>
                            <label style="color:#c1dff0">BreakFast</label><br>
                                <input  type="checkbox"><input type="text" class="tBox"><br>
                                <input type="checkbox"><input type="text" class="tBox"><br>
                                <input type="checkbox"><input type="text" class="tBox"><br>
                                image upload &nbsp;<input class="fileBtn" type="file"><br><br>
                              
                            <label style="color:#c1dff0">Lunch</label><br>
                                <input type="checkbox"><input type="text" class="tBox"><br>
                                <input type="checkbox"><input type="text" class="tBox"><br>
                                <input type="checkbox"><input type="text" class="tBox"><br>
                                image upload &nbsp;<input class="fileBtn" type="file"><br><br>

                            <label style="color:#c1dff0">Dinner</label><br>
                                <input type="checkbox"><input type="text" class="tBox"><br>
                                <input type="checkbox"><input type="text" class="tBox"><br>
                                <input type="checkbox"><input type="text" class="tBox"><br>
                                image upload &nbsp;<input class="fileBtn" type="file"><br><br>
                                <textarea id="fBox">self feedback</textarea><br>
                                <input id="saveBtn" type="submit" value="Save">

                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
                    <div class="service-item">
                        <div class="service-icon">
                            <i class="flaticon-workout-2"></i>
                        </div>
                        <h3>일별 기록</h3>
                        < 달력 >
                        
                        <p>
                           <label>아침</label><br>
                           a / b / c <br>
                           <div class="imageUp"></div>
                           <label>점심</label><br>
                           a / b / c <br>
                           <div class="imageUp"></div>
                           <label>저녁</label><br>
                           a / b / c <br>
                           <div class="imageUp"></div>
                           comment: 오늘 아침은 80% 허기가 채워짐. 점심은 배고파서 더먹음. 저녁은 외식.
                           
                        </p>
                    </div>
                </div>
              
            </div>
        </div>
    </div>


    <!-- <Script>
        function todayIs(){
            var today = new Date();
            var dd = today.getDate();
            var mm = today.getMonth()+1;
            var yy= today.getFullYear();

            if(dd<10){
                dd ="0"+dd;
            }
            if(mm<10){
                mm="0"+mm;
            }
            today = yy+"년" +mm+"월"+dd+"일";
            alert(today);
            document.getElementById("date").innerHTML=today;
            // $('#date').text(today);
        }
    </Script> -->
    <!-- Service End -->
	

	<%@ include file="../common/footer.jsp"%>
	<script src="js/script_home.js"></script>

</body>

</html>