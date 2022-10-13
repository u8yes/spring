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
	<br>
	<br>
	<br>
	<br>
	
	/* 상품 */
CREATE TABLE PRODUCT (
	p_pno NUMBER(3) NOT NULL, /* 상품코드번호 */
	bm_no NUMBER(3), /* 브랜드번호 */
	p_name VARCHAR2(200), /* 상품명 */
	p_detail VARCHAR2(1000), /* 상품상세정보 */
	p_price NUMBER(7), /* 정가 */
	p_disprice NUMBER(7), /* 판매가 */
	p_start VARCHAR2(200), /* 판매시작일 */
	p_end VARCHAR2(200), /* 판매종료일 */
	p_delivery VARCHAR2(200), /* 배송제약사항 */
	p_as VARCHAR2(10), /* A/S가능여부 */
	p_ox VARCHAR2(10), /* 반품가능여부 */
	p_pimg VARCHAR2(200), /* 제품이미지 */
	p_dimg VARCHAR2(200), /* 상세이미지 */
	p_deldis NUMBER(2), /* 배송할인 */
	p_count NUMBER(4), /* 수량 */
	p_regdate DATE DEFAULT SYSDATE /* 등록일시 */
);
	
	
	
	
	
		<div class="getShoppingList_page">
		<div class="title">장바구니</div>
	</div>
	<hr>
	<br>
	<br>
	
		<form action="getShoppingList.doo" method="post">
		<table>
                <thead>
                    <tr class="shoppinghead">
                        <td><input type="checkbox" name="product" value="selectall" onclick='selectAll(this)'></td>
                        <td colspan="2">상품정보</td>
                        <td>옵션</td>
                        <td>상품금액</td>
                        <td>배송비</td>
                    </tr>
                </thead>
                <tbody>
                    <%-- <c:forEach items="${shopping}" var="shop">  --%>
                    <tr class="cart__list__detail">
                        <td class="ess" style="width: 2%;"><input type="checkbox" name="product" ></td>
                        <td align="left" style="width: 13%;">img src
                           <%--  <img src="./MemberUpload/${product.p_pimg}"> --%>
                        </td>
                        <td  style="width: 27%;">${shopping.s_no}상품명<span class="tit"> ${shopping.s_no}가나다라마바사</span>
                            <p>${shopping.p_disprice}상품상세정보</p>
                            <span class="tit">${shopping.p_pno}등록일자</span>
                        </td>
                        <td class="ess" style="width: 27%;">
                            <p>상품수량(${shopping.s_quantity}상품수량)</p>
                        </td>
                        <td class="ess" style="width: 15%;"><span class="tit">${shopping.s_date}상품금액</span><br>
                            <!-- <button type="submit" class="submitbutton">주문하기</button> -->
                        </td>
                        <td class="ess" >${shopping.p_pno}배송옵션</td>
                    </tr>
                   <%--  </c:forEach> --%>
                </tbody>
                <tfoot>
                    <tr>
                    	
                        <!-- <td colspan="3"><input type="checkbox"> 
                        	<button class="submitbutton">선택상품 삭제</button>
                            <button class="submitbutton">선택상품 구매하기</button>
                        </td> -->
                        
                    </tr>
                </tfoot>
            
        </table>
       
       <br><br><br>
       <div class="buttonarea">
		<button type = "submit" class="submitbutton" style="width : ">선택상품 구매</button>
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