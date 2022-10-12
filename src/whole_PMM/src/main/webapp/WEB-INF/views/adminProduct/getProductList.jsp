<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 목록</title>
</head>
<body>
<%@ include file = "/sharedFunction/header.jsp" %>
<%@ include file = "/sharedFunction/adminSidebar.jsp" %>

<div>
	<center>
		<h1>상품 목록</h1>
		<%-- <h3>${userName}님! 게시판에 오신 것을 환영합니다.. :) <a href="logout.me">로그아웃</a></h3> --%>
		<!-- 목록 출력 -->
		<div class="m_join_tit">
					<span class="sub_txt">상품 코드 번호 클릭 후 상세화면</span>
				</div>
		<form action="getProductList.p" method="post">
		<table border="1" cellpadding="0" cellspacing="0" width="900">
			<tr>
				<th bgcolor="#92bd51;" width="100">상품코드번호</th>
				<th bgcolor="#92bd51;" width="100">브랜드번호</th>
				<th bgcolor="#92bd51;" width="100">상품명</th>
				<th bgcolor="#92bd51;" width="150">상품상세정보</th>
				<th bgcolor="#92bd51;" width="150">정가</th>
				<th bgcolor="#92bd51;" width="100">판매가</th>
				<th bgcolor="#92bd51;" width="100">수량</th>
				<th bgcolor="#92bd51;" width="100">등록일시</th>
			</tr>
			
			
			
			<c:forEach items="${productList}" var="product"> <!-- items : 데이터를 레코드 단위로 반환, var : 변수 선언할 수 있는 속성 -->
				<tr>
					<td align="center"><a href="getProduct.p?p_pno=${product.p_pno}">${product.p_pno}</a></td>
					<td align="center">${product.bm_no}</td>
					<td align="center">${product.p_name}</td>
					<td align="center">${product.p_detail}</td>
					<td align="center">${product.p_price}</td>
					<td align="center">${product.p_disprice}</td>
					<td align="center">${product.p_count}</td>
					<td align="center">${product.p_regdate}</td>
				</tr>
			</c:forEach>
		</table>
		</form>
		<br>
		
		
		<a href="insertProduct.p">글쓰기</a>
		
	</center>
</div>	
	
<%@ include file = "/sharedFunction/footer.jsp" %>
	
</body>
</html>