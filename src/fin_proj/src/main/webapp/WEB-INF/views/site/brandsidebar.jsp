<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta charset="UTF-8">
<title>브랜드 sidebar</title>

<link rel="stylesheet" href="/resources/css/sidebar.css">

</head>
<body>


<div class ="sidebar">
  <div class = "sidebarbrand list">
  <h1>브랜드 관리</h1>
     <hr> 
    <a href="WEB-INF/views/member/bdetail.jsp">브랜드 소개 수정</a>
    <a href="WEB-INF/views/member/bedit.jsp">브랜드 계정 수정</a>
    <a href="WEB-INF/views/member/bdelete.jsp">브랜드 탈퇴</a>
   </div>
    <div class = "sidebarbrand list">
  <h1>제품 관리</h1>
     <hr> 
    <a href="insertProduct.do">상품 등록</a>
    <a href="updateProductService.do">상품 수정</a>
    <a href="getProductList.do">상품 리스트</a>
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
    <a href="getBRvList.zo">리뷰 관리</a>
    <a href="getBAskList.zo">1대1 문의 관리</a>
   </div>
</div>

</body>
</html>