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
    width: 10em; height: 2em;
    padding: 5px 5px ;
    text-align: left;
    font-size: 12px;
    margin: 10px 0;
    border:white;
    border-radius: 10px;
}
fieldset label {
    text-align: left;
    font-size: 12px;
    margin: 0px 5% ;
    border:white;
}

#Btn {
    background-color: #c1dff0;
    color: white;
    text-align: center;
    font-weight: 700;
    width: 100px; 
    border: 2px solid #c1dff0;;
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
	width: 130px; height:20px;
	
	font-size: 12px;
	text-align: center;
	color: #lightgray;
	
	border: 1px solid white;
	border-radius: 0.5em;
}

span{
	margin: -10;
	height: 10px
	line-height:0.5em
	font-size:9px;
	color: #f35c36;
}
    
</style>
</head>
<body>
    <div id="wrap">
        <h1><span style="color:snow; font-size: 50px;"> JOIN</span></a></h1>
        <form action="<%= request.getContextPath()%>/insert.me" method="post" id="joinForm" name="joinForm">
            <fieldset>
                <label class="naming" >ID &nbsp;</label>
                <input type="text" id="userId" maxlength="12" placeholder="아이디 입력"><br>
                <br><span id="idcheck" name="아이디중복체크">중복된 아이디 입니다.</span><br>
                <label class="naming" >PW</label>
                <input type="password" id="userPw" maxlength="15" placeholder="비밀번호 입력"><br>
                <label id="pwdcheck" > check</label>
                <input type="password" id="userPw2" maxlength="15" placeholder="비밀번호 확인"><br>
                <br><span id="pwdcheck" name="비밀번호중복체크">비밀번호가 일치하지 않습니다.</span><br>
                <label class="naming" >NAME</label>
                <input type="text" id="userName" maxlength="12" placeholder="NAME"><br>
                <label class="naming" >NICK</label>
                <input type="text" id="nickName" maxlength="12" placeholder="NICKNAME">
                <br>
                <label class="naming" >AGE</label>
                <input type="text" id="age" size="10px;" placeholder="나이"><br>
                <label class="naming" >GEN</label>
                <select id="gender">
                    <option disabled selected>성별</option>
                    <option value="여">여자</option>
                    <option value="남">남자</option>
                </select><br>
                <label class="naming" >phone</label>
                <input type="text" id="phone" placeholder="전화번호(-제외)"><br>
                <label class="naming" >EMAIL</label>
                <input type="text" id="emaill" placeholder="이메일"><br>
                <label class="naming">ADDRESS</label>
                <input type="text" id="address" placeholder="주소"><br>

                <label>V 선호하는 식단 체크</label><br>
                <input type="checkbox" id="chk1" name="chkGroup">
                <label for="chk">샐러드</label>
                <input type="checkbox" id="chk2" name="chkGroup">
                <label for="chk">닭가슴살</label><br>
                <input type="checkbox" id="chk3" name="chkGroup">
                <label for="chk">단백질쉐이크</label>
                <input type="checkbox" id="chk3" name="chkGroup">
                <label for="chk">도시락</label>
                <br>
            </fieldset>
            
            <input type="submit" value="JOIN" id="Btn">
        </form>
        
        <a href="#" style="color:gray";>로그인 화면</a>
    </div>

	<script>
		$('#checkId').on('click',function(){
				window.open('checkIdForm.me','checkIdForm','width=300,height=200');
		});
		
	
		
	</script>
	



</body>
</html>