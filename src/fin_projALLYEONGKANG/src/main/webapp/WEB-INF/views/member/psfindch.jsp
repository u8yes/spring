	

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
	<div class= "usersignin" align = "center">
		<h2 class="signintitle">비밀번호 찾기</h2>
		<form action="idpsfind.me" method="post">
		
  		  	 <div class=""  align="center" >
      			 회원님이 가입하신 아이디의<br>비밀번호는 <br> <h1 align="center">" ${userPS} "</h1> 
      			 <br>입니다.
    		 </div>
    		 
			<br>
			
    		<button id="singIn" class="signinbutton"  type="button" onclick= "location.href='login.me'">로그인</button>
   			
 		 </form>
	</div>

  
  </div>

</div>
</main>
<br>
<%@include file="../footer.jsp" %>
</body>
</html>