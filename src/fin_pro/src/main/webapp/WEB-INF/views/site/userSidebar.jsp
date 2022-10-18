<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
 <head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta charset="utf-8">
    <title>마이페이지 - 개인 사이드 바</title>
    <link rel="stylesheet" href="css/sidebar.css">
  </head>
<body>
<header>
<%@ include file="header.jsp" %>
</header>
<main>


<div class ="sidebar">
<div class = "sidebaruser list">
  <h1>내 정보</h1>
     <hr> 
    <a href="#">내 정보 수정</a>
    <a href="#">비밀번호 변경</a>
    <a href="#">회원 탈퇴</a>
   </div>
    <div class = "sidebaruser list">
  <h1>주문 관리</h1>
     <hr> 
    <a href="#">주문 조회</a>
    <a href="#">반품/환불 내역</a>
   </div>
    <div class = "sidebaruser list">
  <h1>문의 내역</h1>
     <hr> 
    <a href="#">내가 한 문의</a>
    <a href="#">1:1문의 바로가기</a>
   </div>
    <div class = "sidebaruser list">
  <h1>관심 브랜드</h1>
     <hr> 
    <a href="#">찜 브랜드</a>
   </div>
</div>

</main>  
<footer>
<%@ include file = "footer.jsp" %>
</footer>
</body>
</html>