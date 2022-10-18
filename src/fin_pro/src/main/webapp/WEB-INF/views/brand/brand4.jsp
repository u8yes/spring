<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
 <head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta charset="utf-8">
    <title>브랜드 1번 - 강아지 슈펫</title>
	 <%@ include file="/resources/css/basic.css" %>
    <script>
    </script>
	<style>
	.productcard{
     	background-color: gray;
     	width: 200px;
        height: 300px;
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
        width: 200px;
        height: 300px;
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
	margin-left:130px;
	}
	.product-all{
	display: flex;
	margin-left:130px;
	}
	h5{
	font-size: 15px;
	}
	.productcard_body_title{
	margin: 5px; 
	background-color:  #AEDBF5;
	border-radius: 20px;
	text-align: center;
	}
	
/* 여기 위까지 가져가기 */
	
	.brand-logo{
	margin-top: 30px;
	margin-left:480px;
	border-radius:10px;
	width: 250px;
	height: 250px;
	background-color: #AEDBF5;
	}
	
	.brand-history{
	background-color: #AEDBF5;
	margin-left:150px;
	border-radius:10px;
	width: 900px;
	height: 150px;
	border:none;
	padding-left: 20px;
	padding-right: 20px;
	text-align: center;
	font-family: 'KoPubWorldDotum';
	}
	
		.sidebar{
  margin-top : 170px;
  padding-top : 50px;
  position:absolute;
  top : 0px;
  left : 0px;
  width : 120px;
  height : 80%;
  top : 0;
  left: 0;
  bottom : 0;
  background-color : #88b04b;
  overflow: auto;
}
.sidebar a{
  display : block;
  font-family: 'MICEGothic Bold';
  text-decoration: none;
  color : white;
  font-size : 15px;
  text-align: center;
  padding-top : 15px;
  padding-bottom : 5px;
}

.sidebar a:hover{
	background-color: #749641;
}
.img-back{
	width : 40px;
	height: 40px;
	float: left;
	margin-right: 10px;
}
.b_page1{
	padding-left: 100px;
}
.subtitle{
	font-family: 'MICEGothic Bold';
	font-size: 32px;
	padding-left: 120px;
}

	</style>
  </head>
<body>
<header>
<jsp:include page="../header.jsp"></jsp:include>

</header>
<main>
<div class ="sidebar">
<div class = "sidebaruser list">
 <a href="brand1.bt">슈펫</a>
    <a href="brand2.bt">이누마루</a>
    <a href="brand3.bt">채셔캣</a>
    <a href="brand4.bt">알로하네코</a>
    <a href="brand5.bt">달나라토끼마을</a>
    <a href="brand6.bt">도치나라</a>
   </div>
</div>

</main> 
<!--  -->
<div class="outline">

<br>
<br>


	 <div class="b_page1">
    	<a href="getBrandList.bt">
      	<img class="img-back" src="resources/img/back.png"/>
  		</a>
		<div class="title">알로하네코</div> <!-- 고양이 -->
		<br>
		<br>
	</div>

	

	<div class="brand-info">
	<!--브랜드 로고  -->
		<img class= "brand-logo" src="resources/img/brandlogo4.png">
		<!--브랜드 소개  -->
		<br>
		<br>
		<hr>
		<br>
		<div class="brand-history">
		<p> 
		<hr>저희 브랜드는 강아지 용품을 전문으로 하는 브랜드로, 아이들이 즐겁게 먹을 수 있는 사료와 간식을 전문으로 하는 브랜드 입니다.
		<br> 20년간 오래 영업을 해온 브랜드로, 세계 16개국에 물건을 수출하며 특히 유럽에서의 인기가 높습니다.

		</div>
	</div>
	
	<br>
	<br>
	<br>
	<!-- 신상품 -->
	<div class="subtitle">신상품</div>
	<div class="product-newandbest">
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
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- 베스트상품 -->
	<div class="subtitle">인기상품</div>
	<div class="product-newandbest">
  		<div class="productcard_box" onclick="'href=#'">
			<div class="productcard_head">
			<img class="productcard" src="http://image.auction.co.kr/itemimage/18/29/6c/18296c8816.jpg">
			</div>
			<div class="productcard_body">
				<h5 class="productcard_body_title">강아지 사료<br>5,000원</h5>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- 전체상품 -->
	<div class="subtitle">전체상품</div>
	<div class="product-all">
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
<footer>
<jsp:include page="../footer.jsp"></jsp:include>

</footer>
</body>
</html>