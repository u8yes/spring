<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<head>

  <%@include file = "/resources/css/header.css" %> 
  <script src="resources/js/jquery-3.6.1.min.js"></script>

<script type="text/javascript">




window.onload= function()
{
	var grade = <%=session.getAttribute("userGr")%>;
	
	
	
	var menu = document.getElementById("user");
	
	if(grade == 5)
	{
		//메뉴 보이기
		//alert("메뉴 보이기");
		menu.style.display = "block";
	}
	else
	{
		
		//메뉴 감추기
		//alert("메뉴 감추기");
		menu.style.display ="none";
	}
}


function login() {
	alert('로그인해주세요');
}


</script>






</head>

<body>
<header>
<nav class="navbar">
    <h1 class="navbar_logo"><a href="toMain.do"><img class="logo" src="${pageContext.request.contextPath}/resources/img/logo.png"></a></h1>
    <!-- 검색창 -->
      <div class="search-bar">
          <i class="fas fa-search"></i>
          <input class="search-bar__input" type="search" placeholder="브랜드명, 제품명을 검색하세요!" />
        </div>
      <!--  -->
      <div class="head_util">
      <ul class="navbar_menu">
      <% if(session.getAttribute("userName")==null){  %>
      		<li class="nav_item"><a href="login.me"><img class="pictogram" src="resources/img/signin.png"></a></li> 
      		<% }else{ %>
      		<form method="post" action="logout.me">
	<%=session.getAttribute("userName") %>님 환영합니다~
	
	<input type="submit" value="로그아웃" />
</form>
<% } %>

	 <%if(session.getAttribute("userGr")==null || session.getAttribute("userGr").equals("")){   %>

      		<li class="dropdown"><a href="login.me" onclick="login()"><img class="pictogram" src="resources/img/mypage.png"></a>
      			<ul class="dropdown-content"> <!--제이쿼리로 로그인 상태에따라 다르게 보이기 설정 해야함 -->
      		
      
    
         <%} else{        %>                              
        	 
        <li class="dropdown"><a href="#"><img class="pictogram" src="resources/img/mypage.png"></a>
      			<ul class="dropdown-content"> <!--제이쿼리로 로그인 상태에따라 다르게 보이기 설정 해야함 -->
        
        				<!--관리자 아이디 로그인  -->
      				<li class="admin">
      			
          <%if(session.getAttribute("userGr").equals(0)){  %>  			
         
      				<ul class= "pmmLogin"><a href="adlist.do">유저관리</a></ul>
      				<ul class= "pmmLogin"><a href="adblist.do">브랜드관리</a></ul>
      				<ul class= "pmmLogin"><a href="#">리뷰관리</a></ul>
      				<ul class= "pmmLogin"><a href="#">문의관리</a></ul>
      				<ul class= "pmmLogin"><a href="#">혜택관리</a></ul>
      				</li>
      	<!-- 브랜드아이디 로그인  -->
      				<li class="brandsdf">
       <%} else if(session.getAttribute("userGr").equals(1)){  %>  		
      			
      			
      				<ul class= "brandLogin"><a href="#">상품관리</a></ul>
      				<ul class= "brandLogin"><a href="getBrandThemeList.bt">web</a></ul>
      				<ul class= "brandLogin"><a href="#">주문관리</a></ul>
      				<ul class= "brandLogin"><a href="#">리뷰관리</a></ul>
      				<ul class= "brandLogin"><a href="getBAskList.zo">1대1문의</a></ul>
      				</li>
   
     <li class="user" id="user">
      			
      <%} else {   %>							<!-- 유저아이디 로그인 -->		
      			
      				<ul class= "userLogin"><a href="mdetail.do?um_no=<%=session.getAttribute("userNo")%>">개인정보수정</a></ul>
      				<ul class= "userLogin"><a href="#">활동관리</a></ul>
      				<ul class= "userLogin"><a href="#">배송관리</a></ul>
      				<ul class= "userLogin"><a href="#">혜택관리</a></ul>
      				<ul class= "userLogin"><a href="getBasketList.ba">장바구니</a></ul>
      				</li >
      				
      			<%}    %>			
        
        
           
       <% } %>	
      		
      			
      			
      
      			</ul>
      		</li>
     	 <%if(session.getAttribute("userGr")==null || session.getAttribute("userGr").equals("")){   %>
      <li class="nav_item"><a href="login.me" onclick="login()" ><img class="pictogram" src="resources/img/cart.png"></a>
         	</li>				 		
      		
      		 <%} else {   %>	
      		<li class="nav_item"><a href="getBasketList.do" ><img class="pictogram" src="resources/img/cart.png"></a></li> 
      		<%} %>
      	</ul>
      </div>
</nav>
<div class="subNav">
    <ul class="navi">
      <li><a href="getBrandList.do" data-link-alt="브랜드"><span>브랜드</span></a></li>
      <li><a href="getProductList.do" data-link-alt="상품"><span>상품</span></a></li>
      <li><a href="toUs.do" data-link-alt="Us"><span>Us</span></a></li>
      <li><a href="" data-link-alt="이벤트"><span>이벤트</span></a></li>
      <li><a href="getCommuList.zo" data-link-alt="놀이터"><span>놀이터</span></a></li>
	<li><a href="map.zo" data-link-alt="지도"><span>지도</span></a></li> 
    </ul>
  </div>	
</header>

</body>    