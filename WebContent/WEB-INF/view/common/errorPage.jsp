<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <% String msg = (String)request.getAttribute("msg"); %> 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>

<style>
body{
	background-color: #c1dff0;
}
#ui{
	margin-left: 30%;
	margin-right: 30%;
	position: fixed;
	text-align: center;
}
button{
	text-decoration: none;
	border: none;
	width: 200px;
	background-color: #ffffff;
	color: #7295d6;
	font-weight: 500;
	border-radius: 15px;
	padding: 5px;
}
h1{
	color:#ffffff;
}
</style>

</head>
<body>
	<div id="ui">
		<img src="images/errorPig.jpg">
		<h1><%= msg %></h1>
		<button onclick="history.back();">이전페이지</button>
		<button onclick="location.href='<%=request.getContextPath() %>'">로그인화면</button>
	</div>
	
</body>
</html>