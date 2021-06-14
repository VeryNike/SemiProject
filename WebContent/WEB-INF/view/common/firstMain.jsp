<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"  import="user.model.vo.User"%>

<% User loginUser = (User)session.getAttribute("loginUser"); %>   

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/keyboard_login.css">
    <script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery-3.6.0.min.js"></script>
    <title>Log_In</title>
    
<style>
body {
    background-color: white;
    font-family: 'Flaticon', sans-serif;
	overflow: scroll;
}

a {
    color: inherit;
    text-decoration: none;
}


form {
    width: 250px;
    padding: 30px;
    /* margin: 100px auto; */

    background-color: #a7d0f9c7;
    border-radius: 80px;

    font-size: 12px;
    font-weight: 800;
    color: white;
    text-align: center;
}
#wrap{
	width: 310px;
	height: 100%;
	margin: 100px auto;
	text-align: center;
}

.pig {
    width: 200px;
    height: 200px;
    background: url("../images/pig_body.png") center 30px no-repeat;
    margin: 20px auto;
    background-color: whitesmoke;
    border-radius: 50%;
    position: relative;
    overflow: hidden;
}

.face {
    position: absolute;
    top: 70px;
    left: 50px;
}

.left,.right {
    width: 94px;
    height: 158px;
    position: absolute;
    top: 100px;
    left: -100px;
    transform: rotate(45deg);
    transition: all 0.5s ease;
}

.right {
    left: 210px;
    transform: rotate(-45deg);
}

.on .left {
    top: 50px;
    left: -10px;
}

.on .right {
    top: 50px;
    left: 120px;
}

fieldset {
    border: 0;
    padding: 0;
    margin-bottom: 10px;
}

fieldset input:not([type="checkbox"]) {
    width: 100%;
    padding: 10px 15px;
    box-sizing: border-box;
    text-align: center;
    margin: 10px 0;
    border: 1px solid #7295d6;
    border-radius: 15px;
}

nav{
	width: 40px;
	height: 210px;
	position: fixed;
	right: 0;
	top: 0;
	bottom: 0;
	margin: auto;
	z-index: 100;
}

#loginBtn {
    background-color: #7295d6;
    color: white;
    font-weight: 700;
}
    
#joinBtn{
	text-decoration: none;
	border:0;
	width:200px;
	background-color: #white;
    color: #7295d6;
    font-weight: 500;
    border-radius: 15px;
}
</style>
</head>


<body>
    <div id="wrap"> 
    
        <h1><a href="#"><span id="logo" style="color:#7099e6; font-size: 50px;">MyPT</span></a></h1>     
	
        <form id="loginForm" action="<%= request.getContextPath() %>/login.me" method="post" onsubmit="return validate();">
            <div class="pig">
                <div class="face"><img src="../images/pig_face.png" alt="얼굴"></div>
                <div class="left"><img src="../images/pig_left.png" alt="왼팔"></div>
                <div class="right"><img src="../images/pig_right.png" alt="오른팔"></div>
            </div>
    
            <fieldset>
                <input type="text" name="userId" id="userId" maxlength="12" placeholder="아이디">
                <input type="password" name="userPwd" id="userPwd" placeholder="비밀번호">
                <input type="checkbox" id="idMemory" name="memoryId">
                <label for="chk">아이디 기억하기</label>
                <input type="submit" value="LOG_IN" id="loginBtn">
            </fieldset>
    
            <input type="button" id="joinBtn" value="회원가입"> <br>
            <a href="#">아이디 ? 비밀번호 찾기</a>
    
        </form>
        <a href="#" style="color:gray">비회원 둘러보기</a>   
    </div>
	<br clear="all">

<Script>

		
	$('#joinBtn').on('click',function(){
		location.href="<%= request.getContextPath()%>/signUpForm.me";
	});
		

/*      $('nav ul a').click(function (e) {
    
        //클릭했을때 일어나는 페이지의 위치전환을 막아줌 (a태그의 anchor point)
        e.preventDefault();
    
        $('html, body').stop().animate({
            'scrollTop': $(this.hash).offset().top
        }, 1000, "easeOutQuad");
    
        $(this).addClass('active');
        $('nav ul a').not(this).removeClass('active'); */
    
  /*   }); */
    
    $(function () {   //애니메이션 move

        var faceX;
        var faceY;
        var txtLength;
    
      function faceMove(txtLength) {
    
            faceX = 50 + txtLength * 2;
            faceY = 90;
    
            $('.face').stop().animate({
                'top': faceY,
                'left': faceX
            }, 150);
    
        }
    
        $('#userId').focus(function () {
    
            $('.pig').removeClass('on');
    
            faceMove(txtLength);
    
        });
    
        $('#userId').keydown(function () {
    
            txtLength = $(this).val().length;
    
            faceMove(txtLength);
    
        });
    
        $('#userPwd').focus(function () {
            faceX = 50;
            faceY = 70;
    
            $('.face').stop().animate({
                'top': faceY,
                'left': faceX
            }, 150);
    
            $('.pig').addClass('on')
        });
    
        $('#userId, #userPwd').blur(function () {
            faceX = 50;
            faceY = 70;
    
            $('.pig').removeClass('on');
    
            $('.face').stop().animate({
                'top': faceY,
                'left': faceX
            }, 150);
        });
    
    });
  
  
	$(function validate(){
		var Id = $('#userId');
		var pwd = $('#userPwd');
		
		if(Id.val().trim().length() == 0){
			alert("아이디를 입력하세요");
			id.focus();
			
			return false;
		}
		
		if(pwd.val().trim().length() == 0){
			alert("비밀번호를 확인하세요");
			pwd.focus();
			
			return false;
		}
		
		return true;
	});
    
</Script>

</body>
</html>