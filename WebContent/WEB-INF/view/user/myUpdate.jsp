<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.model.vo.User" %>
    
<% 
	User myUser = (User)request.getAttribute("myUser"); 
	String userId = myUser.getUserId();
	String userName = myUser.getUserName();
	String nickName = myUser.getNickName();
	int age = myUser.getAge();
	String gender = myUser.getGender();
	String phone = myUser.getPhone();
	String email = myUser.getEmail();
	String address = myUser.getAddress().equals("null")? "" : myUser.getAddress();
	
	String[] checkff = new String[4];
	String ffStr = myUser.getFfood();
	if(!ffStr.equals("null")){
		String[] split = ffStr.split(",");
		for(String str : split){
			switch(str){
			case "샐러드" : checkff[0] = "checked"; break;
			case "닭가슴살" : checkff[1] = "checked"; break;
			case "단백질쉐이크" : checkff[2] = "checked"; break;
			case "도시락" : checkff[3] = "checked"; break;

			}
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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

#UpdateBtn, #ByeBtn {
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

p{ size: 10px;
	margin: 1px 0px -15px 15px;}
    
</style>
<title>My Update Form</title>
</head>
<body>
	
	 <div id="wrap">
        <h1><span style="color:snow; font-size: 50px;"> 내 정보 수정</span></h1>
        <form action="<%= request.getContextPath()%>/myupdate.me" method="post" id="MyupdateForm" name="MyupdateForm" onsubmit="return validate();" >
            <fieldset>
                <label >ID </label>
                <input type="text" name="userId" id="userId" value="<%= userId %>" readonly><br>
                                
                <label >PW</label>
                <input type="password" name="myPwd" id="pw1" minlength="4" maxlength="15" placeholder="비밀번호 입력"><br>
                
                <label >PW</label>
                <input type="password" name="myPwd2" id="pw2" minlength="4" maxlength="15" placeholder="비밀번호 확인"><br>
                <p id="message2"></p><br>
                
                <label >NAME</label>
                <input type="text" name="myUserName" id="userName" maxlength="12" value="<%= userName %>"><br>
                
                <label >NICK</label>
                <input type="text" name="myNickName" id="nickName" maxlength="12" value="<%= nickName %>"><br>
             
                <label >AGE</label>
                <input type="text" name="myAge" id="age" value="<%= age %>"><br><br>
                
                <label >GEN</label>
                <input type="text" name="myGender" id="gender" value="<%= gender %>" readonly><br><br>
                 
                <label >PHONE</label>
                <input type="text" name="myPhone" id="phone" value="<%= phone %>"><br>
                
                <label >EMAIL</label>
                <input type="text" name="myEmail" id="email"value="<%= email %>"><br>
                
                <label >ADDRESS</label>
                <input type="text" name="myAddress" value="<%= address %>"><br>

                <label>V 선호하는 식단 체크(최대2개)</label><br>
	                <input type="checkbox" id="sal" name="myFfood" value="샐러드" <%= checkff[0] %> >
	                <label for="sal">샐러드</label>              
	                <input type="checkbox" id="chiken" name="myFfood" value="닭가슴살" <%= checkff[1] %>>
	                <label for="chiken">닭가슴살</label><br>      
	                <input type="checkbox" id="shake" name="myFfood"  value="단백질쉐이크" <%= checkff[2] %>>
	                <label for="shake">단백질쉐이크</label>         
	                <input type="checkbox" id="dosirak" name="myFfood" value="도시락" <%= checkff[3] %>>
	                <label for="dosirak">도시락</label>
	               
                <br>
            </fieldset>
            
            <input type="submit" id="UpdateBtn" value="수정완료" >
        </form>
        	<input type="button" id="goMain" onclick="location.href='<%= request.getContextPath() %>/home.me'" value="메인화면">
	
															       </div>
	<script>
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
	
	
	function validate(){
		var pwd1 = $('#pw1');
		var pwd2 = $('#pw2');
		
		if(pwd1.val().trim().length== 0){
			alert("비밀번호 변경을 원하지 않으시다면, 기존 비밀번호를 입력해주세요");
			pwd1.focus();
			
			return false;
		}
		if(pwd2.val().trim().length== 0){
			alert("비밀번호를 한번 더 확인 해주세요");
			pwd2.focus();
			
			return false;
		}
		
		return true;
	}
	
	</script>
	
	
	
	
	
</body>
</html>
