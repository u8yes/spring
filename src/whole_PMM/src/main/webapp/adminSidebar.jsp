<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta charset="utf-8">
<title>마이페이지 - 관리자 사이드바</title>
<link rel="stylesheet" href="css/sidebar.css">
</head>
<body>


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
  <h1>상품 관리</h1>
     <hr> 
    <a href="insertProduct.p">단순상품등록</a>
    <a href="getProductList.p">상품 리스트</a>
   </div>
   
   <div class = "sidebaradmin list">
  <h1>브랜드 테마</h1>
     <hr> 
    <a href="#">폰트&컬러</a>
   </div>
   <div class = "sidebaradmin list">
  <h1>주문 관리</h1>
     <hr> 
    <a href="#">주문 상품</a>
    <a href="#">배송 확인</a>
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


</body>
</html>