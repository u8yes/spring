<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<%@ include file="/resources/css/basic.css" %>
</head>
<body>
<header>
<%@ include file="header.jsp" %>
</header>
 <div class="outline">
<form action="" method="post" class="ch-pw">
	<div class="box" align= "center">
		<br>
		<div class="title">회원탈퇴</div>
		<br>
		<p>비밀번호 입력시 탈퇴처리 됩니다.
      정말로 탈퇴하시겠습니까? ( ˃̣̣̥᷄⌓˂̣̣̥᷅ ) </p> 
		<br>
		<input type="password" class="scannerpw" id="" name="" placeholder="비밀번호 입력">   
		<br>
		<br>
		<br>
		<input class="checkbutton" type="submit" value="탈퇴하기">
		<br>
	</div>
	<br>
	<br>
</form>
<br>
</div>
<%@include file="footer.jsp" %>
</body>
</html>