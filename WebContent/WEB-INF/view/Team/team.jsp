<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free WebsiAte Template" name="keywords">
<meta content="Free Website Template" name="description">
<script src="lib/jquery-3.6.0.min.js"></script>
<link href="css/style.css" rel="stylesheet">
   
<title>About our Team</title>

<style>

</style>
</head>
<body>

   <%@ include file="../common/menu.jsp"%>
   
     <!-- Page Header Start -->
        <div class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2>My PT</h2>
                    </div>
                    <div class="col-12">
                        <a href="">Introduce</a>
                        <a href="">about our Team</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page Header End -->


        <!-- About Start -->
        <div class="about wow fadeInUp" data-wow-delay="0.1s">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-6">
                        <div class="about-img">
                            <img src="images/logo_19.png" alt="Image">
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-6">
                        <div class="section-header text-left">
                            <p>About MyPT</p>
                            <h2>Welcome to your Personal Training</h2>
                        </div>
                        <div class="about-text">
                            <p>
                              	  요즘은 특히 라이프 스타일이 무엇보다 중요한 우선순위가 되어지면서, 건강 및 개인의 몸 관리를 위해 시간과 투자를 아끼지 않게 되는것 같습니다. 
                              	  하지만, 각자의 스케줄과 운동 목적, 체력 및 체형 등의 영향을 받는 부분들이 다 다르기 때문에, 그럴수록 개인의 특성을 고려한 맞춤형 트레이닝 필요성을 느끼게 되죠.
                            </p>
                            <p>
                                MyPT에서는 성공적인 운동계획과 실행, 건강관리의 꾸준한 참여를 위해 필요한 것들을 맞춤형으로 제공합니다.
                                                                      나의 일정에 맞는 운동계획과 종류별 강도를 조절할 수 있고, 캘린더를 통해 계획에 대한 달성률이 얼마나 되는지 확인할 수 있습니다.
								다이어트를 위한 식단을 추천받고 개인적으로 추가해서 기록할 수 있으며, 셀프 피드백을 통해 식사량, 영양 균형을 체크할 수 있습니다.
								또, 건강관리를 위해 필요한 영양제, 운동을 위해 필요한 의류 및 용품들을 구매할 수 있고 구매계획을 위해 카트에 담아 보관할 수도 있습니다.
								커뮤니티 게시판을 통해 함께 운동할 멤버를 모집하거나 참여할 수 있고, 개인운동에 대한 가이드,조언들을 공유할 수 있습니다.
                            </p>
                            <p>
                               	프라이빗한 운동 일정관리,식단,운동용품 구매,커뮤니티 참여를 위해서는 먼저 계정이 필요합니다. 
                            </p>
                            <p>   	
                               	(비회원은 커뮤니티 게시글 조회 및 열람만 가능합니다. 회원가입하신 후 이용하시길 추천드립니다.)
                            </p>
                            <a class="btn" href="<%= request.getContextPath()%>/signUpForm.me">회원가입  Go!</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->


        <!-- Team Start -->
        <div class="team">
            <div class="container">
                <div class="section-header text-center wow zoomIn" data-wow-delay="0.1s">
                    <p>Our Team Members</p>
                    <h2>are Very Nice</h2>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.0s">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="images/kettlebell.png" alt="Image">
                                <div class="team-social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="team-text">
                                <h2>강승민</h2>
                                <p>STAFF</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="images/dumbbell.png" alt="Image">
                                <div class="team-social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="team-text">
                                <h2>강정환</h2>
                                <p> STAFF</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="images/workout-machine.png" alt="Image">
                                <div class="team-social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="team-text">
                                <h2>노은비</h2>
                                <p> STAFF</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="images/bench-press.png" alt="Image">
                                <div class="team-social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="team-text">
                                <h2>이경동</h2>
                                <p> STAFF</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.6s">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="images/jumping-rope.png" alt="Image">
                                <div class="team-social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="team-text">
                                <h2>장혜연</h2>
                                <p> STAFF</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Team End -->
   

   <%@ include file="../common/footer.jsp"%>
 
   </script>
</body>
</html>