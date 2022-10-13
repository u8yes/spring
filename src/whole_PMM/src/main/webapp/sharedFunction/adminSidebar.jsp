<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta charset="utf-8">
<title>마이페이지 - 관리자 사이드바</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
<style>
@charset "UTF-8";


@font-face {
    font-family: 'KoPubWorldDotum';
    font-weight: 300;
    font-style: normal;
    src: url('https://cdn.jsdelivr.net/gh/webfontworld/kopus/KoPubWorldDotumLight.eot');
    src: url('https://cdn.jsdelivr.net/gh/webfontworld/kopus/KoPubWorldDotumLight.eot?#iefix') format('embedded-opentype'),
        url('https://cdn.jsdelivr.net/gh/webfontworld/kopus/KoPubWorldDotumLight.woff2') format('woff2'),
        url('https://cdn.jsdelivr.net/gh/webfontworld/kopus/KoPubWorldDotumLight.woff') format('woff'),
        url('https://cdn.jsdelivr.net/gh/webfontworld/kopus/KoPubWorldDotumLight.ttf') format("truetype");
    font-display: swap;
}

body{
  margin : 0; 
}

.sidebar{
  margin-top : 160px;
  padding-top : 50px;
  position:absolute;
  top : 0px;
  left : 0px;
  width : 170px;
  height : 100%;
  top : 0;
  left: 0;
  bottom : 0;
  background-color : #92bd51;
  overflow: auto;
  
}

.brandside{
  font-family: 'KoPubWorldDotum';
  color : white;
  list-style-type: none;
  
}

.sidebar a{
  display : block;
  font-family: 'KoPubWorldDotum';
  text-decoration: none;
  color : white;
  font-size : 13px;
}

.sidebar a:hover {
  background: #729F39;
  color: #fff;
}

h1{
  text-align : center;
  color : white;
  font-family: 'KoPubWorldDotum';
  font-size : 15px;
  margin-bottom : 2px;
 
  
}

.list{
  margin-bottom : 25px;
  text-align : center;
}

hr {
  width : 70%;
  color : #FFF;
  border : none;
  border-top : 1px solid #fff;

}

.contents {
margin-top : 80px;
margin-left : 220px;
margin-right : 10%;
}



</style>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <script>
  $( function() {
    // run the currently selected effect
    function runEffect() {
      // get effect type from
      var selectedEffect = $( "#effectTypes" ).val();
 
      // Most effect types need no options passed by default
      var options = {};
      // some effects have required parameters
      if ( selectedEffect === "scale" ) {
        options = { percent: 50 };
      } else if ( selectedEffect === "size" ) {
        options = { to: { width: 200, height: 60 } };
      }
 
      // Run the effect
      $( "#effect" ).toggle( selectedEffect, options, 1000, callback );
    };
    
    // Callback function to bring a hidden box back
    function callback() {
      setTimeout(function() {
        $( "#effect" ).toggleSlide( "style" ).hide().fadeIn();
      }, 1000 );
    };
 
    // Set effect from select menu value
    $( "#button" ).on( "click", function() {
      runEffect();
    });
  } );
  </script>
</head>
<body>


<main class="toggler">

<div class ="sidebar" id="effect" class="ui-widget-content ui-corner-all">

	<div class = "sidebaradmin list">
  <h1>유저 관리</h1>
     <hr> 
    <a href="#">멤버십</a>
    <a href="#">상세보기</a>
    <a href="getProductBuyList.o">구매내역조회</a>
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
    <a href="getBrandThemeList.bt">폰트&컬러</a>
   </div>
   <div class = "sidebaradmin list">
  <h1>주문 관리</h1>
     <hr> 
    <a href="getBuyList.po">주문 상품</a>
    <a href="getDeliveryList.d">배송 업체</a>
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
</div>
</main>

<!-- toggle -->

 
<select name="effects" id="effectTypes">
  <option value="slide">Slide</option>
</select>
 
<button id="button" class="ui-state-default ui-corner-all" >메뉴 넣기</button>
 

   



</body>
</html>