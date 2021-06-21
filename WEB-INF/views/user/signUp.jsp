<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
 
<!DOCTYPE html>
<html>
<head>
 
<meta charset="UTF-8">
   <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <title>JoinUs</title>
    
<style>
body {
    background-color: #c1dff0;
    font-family: 'Do Hyeon', sans-serif;
	overflow: scroll;
}


form {
    width: 280px;
    padding: 30px;
    background-color: snow;
    border-radius: 80px;
    font-weight: 800;
    color: #c1dff0;

}
#wrap{
	width: 330px;
	height: 100%;
	margin: 100px auto;
    text-align: center;
}


fieldset {
    font-size: 12px;
    border: 0;
    margin-bottom: 10px;
}

fieldset input:not([type="checkbox"]) {
    width: 10em; height: 1.5em;
    padding: 5px 15px 2px 2px;
    text-align: center;
    font-size: 12px;
    margin: 10px 10px 1px 5px;
    border:snow;
    border-radius: 10px;
}
fieldset label {
    text-align: left;
    font-size: 12px;
    margin: 5% 3% 1% 5% ;
    border:white;
}

#joinBtn {
    background-color: #c1dff0;
    color: white;
    text-align: center;
    font-weight: 700;
    width: 100px; 
    border: 2px solid #c1dff0;
    border-radius: 10px;
    
}

#goMain {

	border: 1px solid #c1dff0;
	background: #c1dff0;
	color: white;

}

select {
    -moz-appearance: none;
	-webkit-appearance: none;
	appearance: none;
	width: 140px; height:25px;	
	font-size: 12px;
	padding: 1px 1px 1px 20%;
	color: #a4a4a5;
	border: 1px solid white;
	border-radius: 10px;
}

p{ size: 10px;
	margin: 1px 0px -15px 15px;}


    
</style>
</head>
<body>

    <div id="wrap">
        <h1><span style="color:snow; font-size: 50px;"> JOIN</span></a></h1>
        <form action="<%= request.getContextPath()%>/insert.me" method="post" id="joinForm" name="joinForm" onsubmit="return validate();" >
            <fieldset>
                <label >ID </label>
                	<input type="text" name="userId" id="userId" maxlength="12" placeholder="아이디 입력"><br>
                <p id="message1"></p><br>
                                
                <label >PW</label>
                <input type="password" name="userPwd" id="pw1" maxlength="15" placeholder="비밀번호 입력"><br>
                
                <label > PW</label>
                <input type="password" name="userPwd2" id="pw2" maxlength="15" placeholder="비밀번호 확인"><br>
                <p id="message2"></p><br>
                
                <label >NAME</label>
                <input type="text" name="userName" id="userName" maxlength="12" placeholder="이름 입력"><br>
                
                <label >NICK</label>
                <input type="text" name="nickName" id="nickName" maxlength="12" placeholder="닉네임 입력">
                <p id="message3"></p><br>
             
                <label >AGE</label>
                <input type="text" name="age" id="age" size="10px;" placeholder="나이 입력"><br><br>
                 <p id="message4"></p><br>
                
                <label >GEN</label>
                <select id="gender" name="gender">
                    <option disabled selected>성별</option>
                    <option value="여" id="female">여자</option>
                    <option value="남" id="male">남자</option>
                </select><br>
                
                <label >PHONE</label>
                <input type="text" name="phone" id="phone" placeholder="전화번호 입력(-제외)"><br>
                
                <label >EMAIL</label>
                <input type="text" name="email" id="email" placeholder="이메일 입력 "><br>
                
                <label >ADDRESS</label>
                <input type="text" name="address" placeholder="주소 입력 (선택사항)"><br>

                <label>V 선호하는 식단 체크</label><br>
	                <input type="checkbox" id="sal" name="ffood" value="샐러드">
	                <label for="sal">샐러드</label>              
	                <input type="checkbox" id="chiken" name="ffood" value="닭가슴살">
	                <label for="chiken">닭가슴살</label><br>      
	                <input type="checkbox" id="shake" name="ffood"  value="단백질쉐이크">
	                <label for="shake">단백질쉐이크</label>         
	                <input type="checkbox" id="dosirak" name="ffood" value="도시락" >
	                <label for="dosirak">도시락</label>
                <br>
            </fieldset>
            
            <input type="submit"  value="JOIN" id="joinBtn">
        </form>
	        <input type="button" id="goMain" onclick="history.back();" value="로그인화면">
        
        
    </div>


	<script>
	function validate(){
		var Id = $('#userId');
		var pwd = $('#pw2');
		var name = $('#userName');
		var nick = $('#nickName');
		var phone = $('#phone');
		var email = $('#email');
		
		if(Id.val().trim().length == 0){
			alert("아이디를 입력하세요");
			id.focus();
			
			return false;
		}
	
		if(pwd.val().trim().length == 0){
			alert("비밀번호를 확인하세요");
			pwd.focus();
			
			return false;
		}
		if(name.val().trim().length == 0){
			alert("이름을 입력하세요");
			name.focus();
			
			return false;
		}
	
		if(nick.val().trim().length == 0){
			alert("닉네임을 입력하세요");
			nick.focus();
			
			return false;
		}
		if(phone.val().trim().length == 0){
			alert("전화번호를 입력하세요");
			phone.focus();
			
			return false;
		}
	
		if(email.val().trim().length == 0){
			alert("이메일을 입력하세요");
			email.focus();
			
			return false;
		}
		
		alert("회원가입성공! 로그인해주세요.");
		return true;
	}
	
	
		$('#userId').keyup(function(){
			var Id = $('#userId').val();			
			$.ajax({
				type: 'post',
				async:false, //비동기 default=false
				url:'http://localhost:9801/checkId.me',
				dataType:'text',
				data:{"Id": Id},
				success: function(result, textStatus){
						console.log(" success result:"+result)
					if(result === 'usable'){
						$('#message1').text('Very Nice!');
						$('#message1').css('color','skyblue');
						
					}else{
						$('#message1').text('이미 사용중입니다.');
						$('#message1').css('color','orangered');
					}
				},
				error:function(data, textStatus){
					console.log('error');
				}
			}); //ajax
		});
		
		
		$("#pw2").keyup(function(){
			console.log($(this).val());
			console.log("keyup test2..");
			if($("#pw1").val() == $("#pw2").val()){
				$("#message2").text("비밀번호가 정확합니다");
				$('#message2').css('color','skyblue');
			}else{
				$('#message2').text("비밀번호가 일치하지않습니다");
				$('#message2').css('color','orangered');
			}
		});
		
	</script>
	



</body>
</html>