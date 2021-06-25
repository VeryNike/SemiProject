<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.model.vo.User"%>

<% User user = (User)request.getAttribute("user"); %>
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
<title> My Page</title>
</head>
<body>
		
    <div id="wrap">
        <h1><span style="color:snow; font-size: 50px;"> My page</span></h1>
        
           	<form action="<%= request.getContextPath() %>/MyUpdateForm.me" method="post" id="myForm" name="myForm">
            <fieldset>
                <label >ID </label>
                <input type="text" name="userId" id="userId" value="<%= user.getUserId() %>" readonly><br>
                <input type="hidden" name ="myId" value="<%= user.getUserId() %>">
                
                <input type="hidden" name ="myPwd" value="<%= user.getUserPwd() %>">
                
                <label >NAME</label>
                <input type="text" name="userName" id="userName" value="<%= user.getUserName() %>" readonly><br>
				<input type="hidden" name ="myUserName" value="<%= user.getUserName() %>">
                
                <label >NICK</label>
                <input type="text" name="nickName" id="nickName" value="<%= user.getNickName() %>" readonly><br>
				<input type="hidden" name ="myNickName" value="<%= user.getNickName() %>">
             
                <label >AGE</label>
                <input type="text" name="age" id="age" value="<%= user.getAge() %>" readonly><br>
				<input type="hidden" name ="myAge" value="<%= user.getAge() %>">
                
                <label >GEN</label>
                <input type="text" name="gender" id="gender" value="<%= user.getGender() %>" readonly><br>
				<input type="hidden" name ="myGender" value="<%= user.getGender() %>">
                
                <label >PHONE</label>
                <input type="text" name="phone" id="phone" value="<%= user.getPhone() %>" readonly><br>
				<input type="hidden" name ="myPhone" value="<%= user.getPhone() %>">
                
                <label >EMAIL</label>
                <input type="text" name="email" id="email" value="<%= user.getEmail() %>" readonly><br>
				<input type="hidden" name ="myEmail" value="<%= user.getEmail() %>">
                
                <label >ADDRESS</label>
                <input type="text" name="address" id="address" value="<%= user.getAddress()== null? '-' : user.getAddress() %>" readonly><br>
				<input type="hidden" name ="myAddress" value="<%= user.getAddress() %>">

                <label>FAVORITE</label>
                <input type="text" name="ffood" id="ffood" value="<%= user.getFfood()== null? '-' : user.getFfood() %>" readonly><br>
				<input type="hidden" name ="myFfood" value="<%= user.getFfood() %>">	

            </fieldset>
            
            <input type="submit" id="UpdateBtn" name="UpdateBtn" value="수정하기">
            <input type="button" id="ByeBtn" name="ByeBtn" onclick="deleteuser();" value="회원탈퇴">
        </form>
	        <input type="button" id="goMain" onclick="location.href='<%= request.getContextPath() %>/home.me'" value="메인화면">
          
    </div>
	

	<script>
	function deleteuser(){

		var bool = confirm("정말 탈퇴하시겠습니까?");
		if(bool){
			$('#myForm').attr('action', "<%= request.getContextPath()%>/delete.me");
			$('#myForm').submit(); 
		}
		
	}
	</script>
</body>
</html>
