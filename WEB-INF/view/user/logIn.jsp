<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="user.model.vo.User"%>

<%
	User loginUser = (User) session.getAttribute("loginUser");
%>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"  import="user.model.vo.User"%>

<% User loginUser = (User)session.getAttribute("loginUser"); %>   
>>>>>>> main

<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD
<meta charset="UTF-8">

<title>Log_In</title>

<link rel="stylesheet" href="css/login_css/keyboard_login.css">

<script src="lib/jquery-3.6.0.min.js"></script>

</head>

<body>
    <div id="wrap"> 
    
        <h1><a href="#"><img src="images/logo_19.png"></a></h1>     
	
        <form id="loginForm" action="<%= request.getContextPath() %>/login.me" method="post" onsubmit="return validate();">
            <div class="pig">
                <div class="face"><img src="images/pig/pig_face.png" alt="얼굴"></div>
                <div class="left"><img src="images/pig/pig_left.png" alt="왼팔"></div>
                <div class="right"><img src="images/pig/pig_right.png" alt="오른팔"></div>
=======
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/keyboard_login.css">
    <script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery-3.6.0.min.js"></script>
    <title>Log_In</title>
</head>


<body>
    <div id="wrap"> 
    
        <h1><a href="#"><span id="logo" style="color:#7099e6; font-size: 50px;">MyPT</span></a></h1>     
	
        <form id="loginForm" action="<%= request.getContextPath() %>/login.me" method="post" onsubmit="return validate();">
            <div class="pig">
                <div class="face"><img src="<%= request.getContextPath() %>/images/pig/pig_face.png" alt="얼굴"></div>
                <div class="left"><img src="<%= request.getContextPath() %>/images/pig/pig_left.png" alt="왼팔"></div>
                <div class="right"><img src="<%= request.getContextPath() %>/images/pig/pig_right.png" alt="오른팔"></div>
>>>>>>> main
            </div>
    
            <fieldset>
                <input type="text" name="userId" id="userId" maxlength="12" placeholder="아이디">
<<<<<<< HEAD
                
                <input type="password" name="userPwd" id="userPwd" placeholder="비밀번호">

                <input type="submit" value="LOG_IN" id="loginBtn">
                
            </fieldset>
    
            <input type="button" id="joinBtn" value="회원가입"> 
            
            <br>

=======
                <input type="password" name="userPwd" id="userPwd" placeholder="비밀번호">

                <input type="submit" value="LOG_IN" id="loginBtn">
            </fieldset>
    
            <input type="button" id="joinBtn" value="회원가입"> <br>

    
>>>>>>> main
        </form>
        <a href="<%= request.getContextPath()%>/aboutUs.me" style="color:gray">비회원 둘러보기</a>   
    </div>
	<br clear="all">
<<<<<<< HEAD
	
	<script src="js/login_js/keyboard_login.js"></script>
=======
>>>>>>> main

<Script>

	$('#joinBtn').on('click',function(){
		location.href="<%= request.getContextPath()%>/signUpForm.me";
	});
		
	function validate(){
		var id = $('#userId');
		var pwd = $('#userPwd');
		
		if(id.val().trim().length== 0){
			alert("아이디를 입력하세요");
			id.focus();
			
			return false;
		}
		
		if(pwd.val().trim().length== 0){
			alert("비밀번호를 입력하세요");
			pwd.focus();
			
			return false;
		}
		
		return true;
	}
	
<<<<<<< HEAD
=======
$(function(){
	//애니메이션 move
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
    
>>>>>>> main
</Script>

</body>
</html>