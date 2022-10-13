<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<%@ include file = "/resources/css/basic.css" %>
</head>
<body>
<%@ include file = "userSidebar.jsp" %>
<div class="outline">
<form action="" method="post" class="ch-pw">
	<div class="box" align= "center">
		<br>
		<div class="title">비밀번호 변경</div>
		<br>
		<input type="password" class="scannerpw" id="" name="" placeholder="현재 비밀번호">  
		<br>
		<input type="password" class="scannerpw" id="" name="" placeholder="새 비밀번호"> 
		<br>
		<input type="password" class="scannerpw" id="" name="" placeholder="새 비밀번호 확인">   
		<br>
		<br>
		<br>
		<input class="checkbutton" type="submit" value="변경하기">
		<br>
	</div>
	<br>
	<br>

</form>
<br>
</div>

</body>
</html>