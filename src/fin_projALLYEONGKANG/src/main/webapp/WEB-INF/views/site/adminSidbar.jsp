<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta charset="utf-8">
<title>마이페이지 - 관리자 사이드바</title>
<link rel="stylesheet" href="resources/css/sidebar.css">
</head>
<body>
<%-- <header>
<%@ include file = "header.jsp" %>
</header> --%>
<main>

<div class ="sidebar">
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
</div>


   
</main>

<%-- 
<%@ include file = "footer.jsp" %> --%>

</body>
</html>