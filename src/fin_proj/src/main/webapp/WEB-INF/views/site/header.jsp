<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<%@ include file = "/resources/css/header.css" %>
</head>
<body>
<header>
<nav class="navbar">
    <h1 class="navbar_logo"><a href="main.do"><img class="logo" src="/resources/img/logo.png"></a></h1>
    <!-- 검색창 -->
      <div class="search-bar">
          <i class="fas fa-search"></i>
          <input class="search-bar__input" type="search" placeholder="브랜드명, 제품명을 검색하세요!" />
        </div>
      <!--  -->
      <div class="head_util">
      <ul class="navbar_menu">
      		<li class="nav_item"><a href="signIn.do"><img class="pictogram" src="/resources/img/signin.png"></a></li> 
      		<li class="dropdown"><a href="#"><img class="pictogram" src="/resourcesimg/mypage.png"></a>
      			<ul class="dropdown-content"> <!--제이쿼리로 로그인 상태에따라 다르게 보이기 설정 해야함 -->
      				<ul class= "userLogin"><a href="#">개인정보수정</a></ul>
      				<ul class= "userLogin"><a href="#">활동관리</a></ul>
      				<ul class= "userLogin"><a href="#">배송관리</a></ul>
      				<ul class= "userLogin"><a href="#">혜택관리</a></ul>
      				<ul class= "userLogin"><a href="#">장바구니</a></ul>
      				<ul class= "brandLogin"><a href="#">상품관리</a></ul>
      				<ul class= "brandLogin"><a href="#">web</a></ul>
      				<ul class= "brandLogin"><a href="#">주문관리</a></ul>
      				<ul class= "brandLogin"><a href="#">리뷰관리</a></ul>
      				<ul class= "brandLogin"><a href="#">1대1문의</a></ul>
      				<ul class= "pmmLogin"><a href="#">유저관리</a></ul>
      				<ul class= "pmmLogin"><a href="#">브랜드관리</a></ul>
      				<ul class= "pmmLogin"><a href="#">리뷰관리</a></ul>
      				<ul class= "pmmLogin"><a href="#">문의관리</a></ul>
      				<ul class= "pmmLogin"><a href="#">혜택관리</a></ul>
      			</ul>
      		</li>
      		<li class="nav_item"><a href="#"><img class="pictogram" src="/resources/img/cart.png"></a></li> 
      	</ul>
      </div>
</nav>
<div class="subnav">
    <ul class="navi">
      <li><a href="brandList.do" data-link-alt="브랜드"><span>브랜드</span></a></li>
      <li><a href="" data-link-alt="상품"><span>상품</span></a></li>
      <li><a href="" data-link-alt="Us"><span>Us</span></a></li>
      <li><a href="insertMembership.do" data-link-alt="이벤트"><span>이벤트</span></a></li>
      <li><a href="" data-link-alt="놀이터"><span>놀이터</span></a></li>
    </ul>
  </div>	
</header>

</body>    