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
</header>
<main>

<% if ("1".equals(session.getAttribute("userGr"))){  %>
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
    <a href="getBuyList.po">주문 관리</a>
    <a href="#">반품/환불 관리</a>
   </div>
    <div class = "sidebarbrand list">
  <h1>QNA 관리</h1>
     <hr> 
    <a href="getBRvList.zo">리뷰 관리</a>
    <a href="getBAskList.zo">1대1 문의 관리</a>
   </div>



   
 <%} else if ("0".equals(session.getAttribute("userGr"))){  %>  
   
    <div class = "sidebaradmin list">
	  	<h1>유저 관리</h1>
	    <hr> 
	    <a href="/WEB-INF/views/member/mlist.jsp">멤버십</a>
	    <a href="#">상세보기</a>
	    <a href="#">구매내역조회</a>
    </div>
    <div class = "sidebaruser list">
	  	<h1>브랜드 관리</h1>
	     <hr> 
	    <a href="getBrandInfoList.bi">브랜드 정보</a>
	    <a href="getBrandThemeList.bt">브랜드 테마</a>
    </div>
    <div class = "sidebaradmin list">
	  	<h1>문의 관리</h1>
	     <hr> 
	    <a href="getPAskList.zo">문의 관리</a>
    </div>
    <div class = "sidebaradmin list">
	  	<h1>리뷰 관리</h1>
	     <hr> 
	    <a href="#">제품리뷰관리</a>
    </div>
    <div class = "sidebaradmin list">
	  	<h1>커뮤니티 관리</h1>
	     <hr> 
	    <a href="getCommuList.zo">커뮤니티 리스트</a>
    </div>
    <div class = "sidebaradmin list">
	  	<h1>MD 관리</h1>
	     <hr> 
	    <a href="getMDList.md">MD 리스트</a>
    </div>
    <div class ="sidebaradmin list">
	  	<h1>코드 관리</h1>
	     <hr> 
	    <a href="getCodeList.co">코드 리스트</a>
    </div>
    <div class ="sidebaradmin list">
	  	<h1>코드분류 관리</h1>
	     <hr> 
	    <a href="getDivisionCodeList.dc">코드분류 리스트</a>
    </div>
    <div class ="sidebaradmin list">
	  	<h1>혜택 관리</h1>
	     <hr> 
	    <a href="getPointList.do">포인트</a>
	    <a href="#">이벤트</a>
   </div>
   
  <%}else if ("2".equals(session.getAttribute("userGr"))) { %>    
  
   
<div class ="sidebar">
<div class = "sidebaruser list">
  <h1>내 정보</h1>
     <hr> 
    <a href="/WEB-INF/views/member/mdetail.jsp">개인정보 조회</a>
    <a href="/WEB-INF/views/member/medit.jsp">내 정보 수정</a>
    <a href="/WEB-INF/views/member/mdelete.jsp">회원 탈퇴</a>
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
    <a href="insertUAsk.zo">1:1문의 바로가기(브랜드에게 문의)</a>
    <a href="insertUAskP.zo">1:1문의 바로가기(관리자에게 문의)</a>
  </div>

 <%} else{} %>     
   
</div>

</main>  
<footer>
</footer>
</body>
</html>