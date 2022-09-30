<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BrandListDetail</title>
<style type="text/css">
	/* header */
	header{
		height: 100px;
		background-color: red; 
		
	}
	/* body */
	.container{
	
		height: 800px;
		
	}
		
	/* sidebar */
	
	.aside1{
		width: 250px;
		height: 800px;
		background-color: blue; 
		float: left;
	}

	.aside2{
	
	}
	
	.aside3{
		list-style: none;
	}
	
	/* content */
	.content{
		
	}
	
	.content_logo{
		height: 150px;
		background-color: gold;
	}
			
	.content_desc{
		height: 200px;
		background-color: green;
	}
	.plan_br_prod{
		background-color: gray;
		height: 200px;
	}
	
	.plan_br_prod > div > p{
		float: left;
		border: 1px solid;
	}
	
	.wh_br_prod{
		background-color: purple;
		height: 200px;
	}
	
	.br_prod_seq{
		float: right;
	}
	
	.wh_br_prod > div > p{
		float: left;
		border: 1px solid;
	}
	
	
	/* footer */
	
	footer{
		background-color: red;
		height: 100px;
	
	}
</style>

</head>
<body>


<!-- header 시작 -->
<header>
	<div>Header</div>
</header>

<div class="container">
	<div class="aside1">sidebar
		<div class="aside2">
		<ul class="aside3">
			<li>brand1</li>
		</ul>
		</div>
	</div> <!-- sidebar 종료 -->
	
	<div class="content">
		<div class="content_logo"><img src="" />logo</div>
		<div class="content_desc">브랜드 설명</div>
		
		<div class="plan_br_prod">
			<div class="entire_title">기획상품</div>
			<div class="entire_brand1"><p>entire brand1</p></div>
			<div class="entire_brand2"><p>entire brand2</p></div>
			<div class="entire_brand3"><p>entire brand3</p></div>
			<div class="entire_brand4"><p>entire brand4</p></div>
		</div>
		
		<div class="wh_br_prod">전체상품
			<div class="br_prod_seq">신상품순서 판매량순 높은가격순</div>
			<div class="wh_br_prod1"><p>entire brand2</p></div>
			<div class="wh_br_prod2"><p>entire brand3</p></div>
			<div class="wh_br_prod3"><p>entire brand4</p></div>
			<div class="wh_br_prod4"><p>entire brand4</p></div>
		</div>
	</div> <!-- content 종료 -->



</div> <!-- container 종료 -->

<!-- footer 시작 -->

<footer>
<div>footer</div>

</footer>
</body>
</html>