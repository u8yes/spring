<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>아이디 비밀번호 찾기</title>
<%@ include file="/resources/css/signIn.css"  %>
</head>
<body>
<header>
<%@include file="../header.jsp" %>
</header>
<main>
<div class="siginall">
  <div class= "signintop">
	<div class= "usersignin">
		<h2 class="signintitle">아이디찾기</h2>
		<form action="idfindch.me" method="post">
  		  	 <div class="">
      			<input type="text" class="form-control" id="" name="um_ars" placeholder="이름">
    		 </div>
    		 <div class="">
      			<input type="password" class="form-control" id="" name="um_email" placeholder="이메일">    		
    		</div>
			<br>
    		<button id="signIn" class="signinbutton" type="submit">아이디 찾기</button>
    		
   			
 		 </form>
	</div>
	
		<div class= "usersignin">
		<h2 class="signintitle">비밀번호 찾기</h2>
		<form action="psfindch.me" method="post">
  		  	 <div class="">
      			<input type="text" class="form-control" id="" name="um_mid" placeholder="아이디">
    		 </div>
    		 <div class="">
      			<input type="text" class="form-control" id="" name="um_ars" placeholder="이름">    		
    		</div>
    		<div class="">
      			<input type="text" class="form-control" id="" name="um_email" placeholder="이메일">    		
    		</div>
			<br>
    		<button id="signIn" class="signinbutton" type="submit">비밀번호 찾기</button>

 		 </form>
	</div>
  
  </div>

</div>
</main>
<br>
<%@include file="../footer.jsp" %>
</body>
</html>