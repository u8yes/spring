<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
 <head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta charset="utf-8">
    <title>브랜드 리스트</title>
    <link rel="stylesheet" href="/resources/css/sidebar.css">
    <%@include file = "/resources/css/basic.css" %>
    <script>
    </script>
	<style>
	.productcard{
     	background-color: gray;
     	width: 100px;
        height: 150px;
        display: center;
        border-radius:10px;
     }
  .productcard_box:hover{
  transform: translateY(-.5rem);
	}
	.productcard_box:hover ~ .productcard{
  transform: translateX(1rem);
	}
	
	.productcard_box{
     	background-color: lightgray;
        border-radius: 10px;
        width: 100px;
        height: 200px;
        text-align: left;
        display: inline-block;
        margin: 20px;
        scroll-snap-align: center;
	}
	.addtocart{
	background-color: gray;
	border: solid gray;
	border-radius: 5px;
	height:20px;
	width:75px;
	color:white;
	}
	.buy{
	background-color: #92bd51;
	border: solid #92bd51;
	border-radius: 5px;
	height:20px;
	width:75px;
	color:white;
	}
	.product-newandbest{
	display: flex;
	margin-left:200px;
	}
	.product-all{
	display: flex;
	margin-left:200px;
	}
	h5{
	font-size: 10px;
	}
	.productcard_body_title{
	margin: 5px; 
	}
	.brand-logo{
	margin-top: 30px;
	margin-left:200px;
	border-radius:10px;
	width: 200px;
	height: 100px;
	}
	.brand-history{
	background-color: lightgray;
	margin-left:200px;
	border-radius:10px;
	width: 900px;
	height: 150px;
	}
	
	</style>
  </head>
<body>
<header>
<%@ include file="header.jsp" %>
</header>
<main>
<div class ="sidebar">
<div class = "sidebaruser list">
  <h1>브랜드 목록</h1>
     <hr> 
    <a href="brand1.jsp">브랜드 1</a>
    <a href="#">브랜드 2</a>
    <a href="#">브랜드 3</a>
    <a href="#">브랜드 4</a>
    <a href="#">브랜드 5</a>
    <a href="#">브랜드 6</a>
    <a href="#">브랜드 7</a>
    <a href="#">브랜드 8</a>
   </div>
</div>

</main> 
<!--  -->
<div class="outline">
	<div class="brand-info">
	<!--브랜드 로고  -->
		<img class= "brand-logo" src="https://thumb.mt.co.kr/06/2021/02/2021021910302594096_1.jpg/dims/resize/1200/crop/1200x630!/optimize/">
		<!--브랜드 소개  -->
		<div class="brand-history">
		<p> 
		<hr>대통령은 법률에서 구체적으로 범위를 정하여 위임받은 사항과 법률을 집행하기 위하여 필요한 사항에 관하여 대통령령을 발할 수 있다. 국가는 법률이 정하는 바에 의하여 재외국민을 보호할 의무를 진다.

예비비는 총액으로 국회의 의결을 얻어야 한다. 예비비의 지출은 차기국회의 승인을 얻어야 한다. 정당은 법률이 정하는 바에 의하여 국가의 보호를 받으며, 국가는 법률이 정하는 바에 의하여 정당운영에 필요한 자금을 보조할 수 있다.

중앙선거관리위원회는 대통령이 임명하는 3인, 국회에서 선출하는 3인과 대법원장이 지명하는 3인의 위원으로 구성한다. 위원장은 위원중에서 호선한다.
</p>
		</div>
	</div>
	<!-- 신상품 -->
	<div class="product-newandbest">
		<h2>신상품</h2>
  		<div class="productcard_box" onclick="'href=#'">
			<div class="productcard_head">
			<img class="productcard" src="http://image.auction.co.kr/itemimage/18/29/6c/18296c8816.jpg">
			</div>
				<h5 class="productcard_body_title">강아지 사료<br>5,000원</h5>
		</div>
		<div class="productcard_box" onclick="'href=#'">
			<div class="productcard_head">
			<img class="productcard" src="http://image.auction.co.kr/itemimage/18/29/6c/18296c8816.jpg">
			</div>
			<div class="productcard_body">
				<h5 class="productcard_body_title">강아지 사료<br>5,000원</h5>
			</div>
		</div>
		<div class="productcard_box" onclick="'href=#'">
			<div class="productcard_head">
			<img class="productcard" src="http://image.auction.co.kr/itemimage/18/29/6c/18296c8816.jpg">
			</div>
			<div class="productcard_body">
				<h5 class="productcard_body_title">강아지 사료<br>5,000원</h5>
			</div>
		</div>
		<div class="productcard_box" onclick="'href=#'">
			<div class="productcard_head">
			<img class="productcard" src="http://image.auction.co.kr/itemimage/18/29/6c/18296c8816.jpg">
			</div>
			<div class="productcard_body">
				<h5 class="productcard_body_title">강아지 사료<br>5,000원</h5>
			</div>
		</div>
	</div>
	<!-- 베스트상품 -->
	<div class="product-newandbest">
		<h2>인기상품</h2>
  		<div class="productcard_box" onclick="'href=#'">
			<div class="productcard_head">
			<img class="productcard" src="http://image.auction.co.kr/itemimage/18/29/6c/18296c8816.jpg">
			</div>
			<div class="productcard_body">
				<h5 class="productcard_body_title">강아지 사료<br>5,000원</h5>
			</div>
		</div>
	</div>
	<!-- 전체상품 -->
	<div class="product-all">
		<h2>전체상품</h2>
		<div class="productcard_box" onclick="'href=#'">
			<div class="productcard_head">
			<img class="productcard" src="http://image.auction.co.kr/itemimage/18/29/6c/18296c8816.jpg">
			</div>
			<div class="productcard_body">
				<h5 class="productcard_body_title">강아지 사료<br>5,000원</h5>
			</div>
		</div>
	</div>
</div> 

<br><br><br><br>
<%@ include file = "footer.jsp" %>
</body>
</html>