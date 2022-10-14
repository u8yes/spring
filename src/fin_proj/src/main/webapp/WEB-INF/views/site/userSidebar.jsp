<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
 <head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta charset="utf-8">
    <title>마이페이지 - 개인 사이드 바</title>
    <link rel="stylesheet" href="./resources/css/sidebar.css">
  </head>
<body>
<header>

</header>
<main>

<div class ="sidebar">
<div class = "sidebaruser list">
  <h1>내 정보</h1>
     <hr> 
    <a href="./WEB-INF/views/member/mdetail.jsp">개인정보 조회</a>
    <a href="./WEB-INF/views/member/medit.jsp">내 정보 수정</a>
    <a href="./WEB-INF/views/member/mdelete.jsp">회원 탈퇴</a>
   </div>
  <div class = "sidebaruser list">
  <h1>주문 관리</h1>
     <hr> 
    <a href="getBuyList.po">주문 조회</a>
  </div>
  <div class = "sidebaruser list">
  	<h1>문의 내역</h1>
     <hr> 
    <a href="getUAskList.zo">내가 한 문의</a>
    <a href="insertUAsk.zo">1:1문의 바로가기(브랜드)</a>
  </div>
</div>

</main>  
<footer>

</footer>
</body>
</html>