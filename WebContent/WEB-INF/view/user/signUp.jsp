<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

a {
    color: inherit;
    text-decoration: none;
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

#Btn {
    background-color: #c1dff0;
    color: white;
    text-align: center;
    font-weight: 700;
    width: 100px; 
    border: 2px solid #c1dff0;
    border-radius: 10px;
    
}

.naming{
    text-align: left;
    color: #c1dff0;
    font-size: 11px;

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
        <form action="<%= request.getContextPath()%>/insert.me" method="post" id="joinForm" name="joinForm">
            <fieldset>
                <label class="naming" >ID </label>
                	<input type="text" name="userId" id="userId" maxlength="12" placeholder="아이디 입력"><br>
                <p id="message1"></p><br>
                                
                <label class="naming" >PW</label>
                <input type="password" name="userPwd" id="pw1" maxlength="15" placeholder="비밀번호 입력"><br>
                
                <label id="pwdcheck" > PW</label>
                <input type="password" name="userPwd2" id="pw2" maxlength="15" placeholder="비밀번호 확인"><br>
                <p id="message2"></p><br>
                
                <label class="naming" >NAME</label>
                <input type="text" name="userName" maxlength="12" placeholder="이름 입력"><br>
                
                <label class="naming" >NICK</label>
                <input type="text" name="nickName" maxlength="12" placeholder="닉네임 입력">
                <p id="message3"></p><br>
             
                <label class="naming" >AGE</label>
                <input type="text" name="age" size="10px;" placeholder="나이 입력"><br><br>
                 <p id="message4"></p><br>
                
                <label class="naming" >GEN</label>
                <select id="gender">
                    <option disabled selected>성별</option>
                    <option value="여">여자</option>
                    <option value="남">남자</option>
                </select><br>
                <label class="naming" >PHONE</label>
                <input type="text" name="phone" placeholder="전화번호 입력(-제외)"><br>
                <label class="naming" >EMAIL</label>
                <input type="text" name="emaill" placeholder="이메일 입력 "><br>
                <label class="naming">ADDRESS</label>
                <input type="text" name="address" placeholder="주소 입력 (선택사항)"><br>

                <label>V 선호하는 식단 체크</label><br>
                <input type="checkbox" id="chk1" name="chkGroup">
                <label for="chk">샐러드</label>
                <input type="checkbox" id="chk2" name="chkGroup">
                <label for="chk">닭가슴살</label><br>
                <input type="checkbox" id="chk3" name="chkGroup">
                <label for="chk">단백질쉐이크</label>
                <input type="checkbox" id="chk4" name="chkGroup">
                <label for="chk">도시락</label>
                <br>
            </fieldset>
            
            <input type="submit" value="JOIN" id="Btn">
        </form>
        
        <a href="#" style="color:gray";>로그인 화면</a>
    </div>



	<script>
	$(document).ready(function(){
		$('#userId').keyup(function(){
			
			console.log("keyup test1..");
			var Id = document.getElementById("userId").value();
			if(Id.trim() == "" || Id ==null) return document.getElementById("#message").innerHTML = "이름을 입력하세요";
			
			$.ajax({
				type: 'post',
				async:false, //비동기 default=false
				url:'http://localhost:9801/checkIdFormServlet',
				dataType:'text',
				data:{Id:Id},
				success: function(data, textStatus){
					if(data === 'usable'){
						$('#message').text('Very Nice!')
					}else{
						$('#message').text('이미 사용중입니다.')
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
				$('p').css('color','skyblue');
			}else{
				$('#message2').text("비밀번호가 일치하지않습니다");
				$('p').css('color','orangered');
			}
		});
	
	});
	</script>

</body>
</html>