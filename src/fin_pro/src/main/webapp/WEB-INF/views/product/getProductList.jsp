<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html>
 <head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta charset="utf-8">
    <title>상품 리스트</title>
 <!--    <link rel="stylesheet" href="css/sidebar.css"> -->
    <%@include file = "/resources/css/basic.css" %>
    
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
	.produtcardList {
  float: right;
	}

	</style>
  </head>
<body>
<header>
<jsp:include page="../header.jsp"></jsp:include>
</header> 
<main>



<!--  -->
<form action="getProductList.do" method="post">

	<br><br>
	<div class="product-newandbest">
	<h2>신상품</h2>
	</div>
		
		<c:forEach items="${productList}" var="product">
		<ul class="productcardList">
  		<li><div class="productcard_box" onclick="'href=#'">
			<div class="productcard_head">
			<a href="getProduct.do?p_pno=${product.p_pno}"><img class="productcard" src="./MemberUpload/${product.p_pimg}"></a>
			</div>
				<h5 class="productcard_body_title" align="center">${product.p_name}<br>${product.p_disprice}원</h5>
		</div>
		</li>
		</ul>
		</c:forEach>
		
	
	<br><br>
	<div class="product-newandbest">
	<h2>인기상품</h2>
	</div>
		
		<c:forEach items="${productList}" var="product">
		<ul class="productcardList">
  		<li><div class="productcard_box" onclick="'href=#'">
			<div class="productcard_head">
			<a href="getProduct.do?p_pno=${product.p_pno}"><img class="productcard" src="./MemberUpload/${product.p_pimg}"></a>
			</div>
				<h5 class="productcard_body_title" align="center">${product.p_name}<br>${product.p_disprice}원</h5>
		</div>
		</li>
		</ul>
		</c:forEach>
			
		
	<br><br>
	<div class="product-newandbest">
	<h2>전체상품</h2>
	</div>
		
		<c:forEach items="${productList}" var="product">
		<ul class="productcardList">
  		<li><div class="productcard_box" onclick="'href=#'">
			<div class="productcard_head">
			<a href="getProduct.do?p_pno=${product.p_pno}"><img class="productcard" src="./MemberUpload/${product.p_pimg}"></a>
			</div>
				<h5 class="productcard_body_title" align="center">${product.p_name}<br>${product.p_disprice}원</h5>
		</div>
		</li>
		</ul>
		</c:forEach>
		 <c:if test="${userGr eq '1' }"> 
			
      		<button type='button'>
							<a href="insertProduct.do">상품등록</a>
							</button>&nbsp;&nbsp;&nbsp;				<!-- 유저아이디 로그인 -->		
</c:if>

</form>
</main> 
<br><br><br><br>

	
<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>