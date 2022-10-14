<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<%@ include file="/css/basic.css" %>
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
	ul {
  	float: right;
	}
	.shoppinghead{
	background-color:#92bd51;
	color : white;
	}
	.buttonarea{
	text-align: right;
	}
	</style>
	
	<script>
	function selectAll(selectAll)  {
		  const checkboxes 
		       = document.getElementsByName('product');
		  
		  checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked;
		  })
		}
	</script>
</head>
<body>
<header>
<%@ include file="/sharedFunction/header.jsp" %>
<%-- <%@ include file="../../../header.jsp" %> --%>
</header> 
	
	<div class = "outline">
	<br>

		<div class="getShoppingList_page">
		<div class="title">장바구니</div>
	</div>
	
	<hr>
	<br>
	<br>
	
	<form action="getProductList.p" method="post">
	<table>
               
        <tr class="shoppinghead" style="text-align: center;">
            <td>상품코드번호</td>
            <td>상품명</td>
            <td>상품상세정보</td>
            <td>상품금액</td>
            <td>주문수량</td>
        </tr>
        
        
        <c:forEach items="${productList}" var="basket" >
	        <tr class="cart__list__detail">
	         	<td bgcolor="#92bd51;">${basket.p_pno}</td>
				<td bgcolor="#92bd51;">${basket.p_name}</td>
				<td bgcolor="#92bd51;">${basket.p_detail}</td>
				<td bgcolor="#92bd51;">${basket.p_disprice}</td>
				<td bgcolor="#92bd51;">${basket.p_count}</td>
			</tr>
        </c:forEach>
               
       </table>
       
       <br><br><br>
       <div class="buttonarea">
		<button type = "submit" class="submitbutton">선택상품 구매</button>
		<button onclick="location.href='entryend.jsp'" class="backbutton">선택상품 삭제</button>	
		</div>
        </form>
		
		<br>
		<br>
		<br>
		<a href="insertBasket.ba">글쓰기</a>

	
	</div>
	
	
	<footer>
<%@ include file="/sharedFunction/footer.jsp" %>
</footer>
</body>
</html>