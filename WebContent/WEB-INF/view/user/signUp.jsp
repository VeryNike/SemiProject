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
    background-color: #c1dff0;;
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
	width: 270px;
	height: 100%;
	margin: 100px auto;
    text-align: center;
}

.naming{
    color: #c1dff0;
    font-size: 13px;

}

fieldset {
    font-size: 16px;
    border: 0;
    margin-bottom: 10px;
}

fieldset input:not([type="checkbox"]) {
    width: 70px; height: 10px;
    padding: 10px 15px ;
    text-align: left;
    font-size: 10px;
    margin: 10px 0;
    border:white;
    border-bottom-width: 1px blue;
}
fieldset label {
    text-align: left;
    font-size: 12px;
    margin: 0px 10px ;
    border:white;
}

#Btn {
    background-color: #c1dff0;
    color: white;
    text-align: center;
    font-weight: 700;
    width: 100px; 
    border: 1px solid #89a9e4;
    border-radius: 5px;
    
}

.Btn2 {
    background-color: #c1dff0;
    color: white;
    text-align: center;
    width: 10px; height: 10px;
    border: 2px solid #4279df;
    border-radius: 20px;
    
}

    
</style>
</head>
<body>
    <div id="wrap">
        <h1><span style="color:snow; font-size: 50px;"> &nbsp;&nbsp;&nbsp; JOIN</span></a></h1>
        <form action="<%= request.getContextPath()%>/insert.me" method="post" id="joinForm" name="joinForm">
            <fieldset>
                <label class="naming" >ID</label> 
                <input type="text" id="userId" maxlength="12" placeholder="아이디 입력">
                <input type="button" id="checkId" value="중복확인" class="Btn2">
                <br>
                <label class="naming" >PW</label>
                <input type="password" id="userPw" maxlength="15" placeholder="비밀번호 입력"><br>
                <span id="pwdcheck" > check</span>
                <input type="password" id="userPw2" maxlength="15" placeholder="비밀번호 확인"><br>
                <label class="naming" >NAME</label>
                <input type="text" id="userName" maxlength="12" placeholder="NAME">
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