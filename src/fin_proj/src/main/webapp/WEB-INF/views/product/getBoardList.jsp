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
	<center>
		<h1>글 목록</h1>
		<h3>${userName}님! 게시판에 오신 것을 환영합니다.. :) <a href="logout.me">로그아웃</a></h3>
		<!-- 목록 출력 -->
		<form action="getBoardList.do" method="post">
		<table border="1" cellpadding="0" cellspacing="0" width="1700">
			<tr>
				<th bgcolor="orange" width="100">상품코드번호</th>
				<th bgcolor="orange" width="100">상품명</th>
				<th bgcolor="orange" width="100">상품상세정보</th>
				<th bgcolor="orange" width="150">판매단가</th>
				<th bgcolor="orange" width="150">판매 시작일</th>
				<th bgcolor="orange" width="100">판매 종료일</th>
				<th bgcolor="orange" width="100">배송제약사항</th>
				<th bgcolor="orange" width="100">배송할인</th>
				<th bgcolor="orange" width="100">브랜드 번호</th>
				<th bgcolor="orange" width="100">수량</th>
				<th bgcolor="orange" width="100">카테고리번호</th>
				<th bgcolor="orange" width="100">A/S 가능?</th>
				<th bgcolor="orange" width="100">반품 가능?</th>
				<th bgcolor="orange" width="100">제품이미지</th>
				<th bgcolor="orange" width="100">상세이미지</th>
				<th bgcolor="orange" width="100">등록일시</th>
			</tr>
			
			<c:forEach items="${boardList}" var="product"> <!-- items : 데이터를 레코드 단위로 반환, var : 변수 선언할 수 있는 속성 -->
				<tr>
					<td align="center">${product.p_pno}</td>
					<td><a href="getBoard.do?p_pno=${product.p_pno}">${product.p_name}</a></td>
					<td align="center">${product.p_detail}</td>
					<td align="center">${product.p_price}</td>
					<td align="center">${product.p_start}</td>
					<td align="center">${product.p_end}</td>
					<td align="center">${product.p_delivery}</td>
					<td align="center">${product.p_deldis}</td>
					<td align="center">${product.bm_no}</td>
					<td align="center">${product.p_count}</td>
					<td align="center">${product.g_cno}</td>
					<td align="center">${product.p_as}</td>
					<td align="center">${product.p_ox}</td>
					<td align="center">${product.p_pimg}</td>
					<td align="center">${product.p_dimg}</td>
					<td align="center">${product.p_regdate}</td>
				</tr>
			</c:forEach>
		</table>
		</form>
		<br>
		
		
		<a href="productinsert.do">글쓰기</a>
		
	</center>
</body>
</html>