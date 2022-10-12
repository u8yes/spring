<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 목록</title>
<style type="text/css">
	table{
		margin-left: 50px;
		
	}
	
	.tableofJesus{
		margin-top: 30px;
	}

</style>

</head>
<body>
<%@ include file = "/sharedFunction/header.jsp" %>
<%@ include file = "/sharedFunction/adminSidebar.jsp" %>
	
	<!-- <img alt="" src="/brandUpload/topM.jpg" width="100%" > -->
	
	<div class="tableofJesus">
	<center>
		
		<!-- 검색 시작 -->
		<div class="container w-50" >
		<form action="getProductBuyList.o" method="post">
			<table border="1" cellpadding="0" cellspacing="0" width="1200" >
				<tr>
					<td align="right">
						<select name="searchCondition">
							<!-- conditionMap데이터를 option 변수에 저장 -->
							<c:forEach items="${conditionMap}" var="option">	
								<option value="${option.value}">${option.key}</option>
							</c:forEach>
						</select>
						<input type="search" name="searchKeyword">	<!-- text를 search로 바꾼 상태 -->
						<input type="submit" value="검색">
					</td>
				</tr>
			</table>
		</form>
		</div>
		
		<!-- 검색 종료 -->
		
		<!-- 목록 출력 -->
		<div>
		<table border="1" cellpadding="0" cellspacing="0" width="1200">
			<tr>
				<th bgcolor="#92bd51;" width="100">주문상품번호</th>
				<th bgcolor="#92bd51;" width="100">상품코드번호</th>
				<th bgcolor="#92bd51;" width="100">주문 수량</th>
				<th bgcolor="#92bd51;" width="100">장바구니번호</th>
				<th bgcolor="#92bd51;" width="100">주문상품1</th>
				<th bgcolor="#92bd51;" width="100">주문상품2</th>
				<th bgcolor="#92bd51;" width="100">주문상품3</th>
				<th bgcolor="#92bd51;" width="100">주문상품1 수량</th>
				<th bgcolor="#92bd51;" width="100">주문상품2 수량</th>
				<th bgcolor="#92bd51;" width="100">주문상품3 수량</th>
				<th bgcolor="#92bd51;" width="100">회원번호</th>
				<th bgcolor="#92bd51;" width="100">등록일시</th>
			</tr>
			<c:forEach items="${productBuyList}" var="productBuy">	<!-- 1. JSTL 기능 중 items는 데이터, 2. var는 새 변수 선언 -->
			<tr>
				<td align="center"><a href="getProductBuy.o?o_odno=${productBuy.o_odno}">${productBuy.o_odno}</a></td>	<!-- ?seq= 라는 건 바로 쿼리문으로 연결되는 것 -->
				<td align="center">${productBuy.p_pno}</td>
				<td align="center">${productBuy.o_pquantity}</td>
				<td align="center">${productBuy.s_no}</td>
				<td align="center">${productBuy.o_pno1}</td>
				<td align="center">${productBuy.o_pno2}</td>
				<td align="center">${productBuy.o_pno3}</td>
				<td align="center">${productBuy.o_pno1qu}</td>
				<td align="center">${productBuy.o_pno2qu}</td>
				<td align="center">${productBuy.o_pno3qu}</td>
				<td align="center">${productBuy.um_no}</td>
				<td align="center">${productBuy.o_date}</td>
				
			</tr>
			</c:forEach>
		</table>
		</div>
		<br>
		<a href="insertProductBuy.o">글쓰기</a>
		
		
		
	</center>
	</div>
	
	
<%@ include file = "/sharedFunction/footer.jsp" %>
</body>
</html>

	