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

<% if (){  %>

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
   
 <%} else if (){  %>  
   
   <div class = "sidebaradmin list">
  <h1>유저 관리</h1>
     <hr> 
    <a href="#">멤버십</a>
    <a href="#">상세보기</a>
    <a href="#">구매내역조회</a>
   </div>
    <div class = "sidebaradmin list">
  <h1>리뷰 관리</h1>
     <hr> 
    <a href="#">제품리뷰관리</a>
   </div>
    <div class = "sidebaradmin list">
  <h1>문의 관리</h1>
     <hr> 
    <a href="#">문의 관리</a>
   </div>
    <div class = "sidebaradmin list">
  <h1>혜택 관리</h1>
     <hr> 
    <a href="#">포인트</a>
    <a href="#">쿠폰</a>
    <a href="#">이벤트</a>
   </div>
   
  <%} else {  %>    
   <div class = "sidebarbrand list">
  <h1>브랜드 관리</h1>
     <hr> 
    <a href="#">브랜드 소개 수정</a>
    <a href="#">브랜드 계정 수정</a>
    <a href="#">브랜드 탈퇴</a>
   </div>
    <div class = "sidebarbrand list">
  <h1>제품 관리</h1>
     <hr> 
    <a href="#">상품 등록</a>
    <a href="#">상품 수정</a>
    <a href="#">상품 리스트</a>
   </div>
    <div class = "sidebarbrand list">
  <h1>배송 관리</h1>
     <hr> 
    <a href="#">주문 관리</a>
    <a href="#">반품/환불 관리</a>
   </div>
    <div class = "sidebarbrand list">
  <h1>QNA 관리</h1>
     <hr> 
    <a href="#">리뷰 관리</a>
    <a href="#">1대1 문의 관리</a>
   </div>
   
 <%}  %>     
   
   
   
   
   
</div>

</main>  
<footer>
<%@ include file = "footer.jsp" %>
</footer>
</body>
</html>