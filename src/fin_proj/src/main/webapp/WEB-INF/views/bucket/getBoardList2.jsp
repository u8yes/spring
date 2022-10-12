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
		<form action="getBoardList2.do" method="post">
		<table border="1" cellpadding="0" cellspacing="0" width="1700">
			<tr>
				<th bgcolor="orange" width="100">장바구니 번호</th>
				<th bgcolor="orange" width="100">회원번호</th>
				<th bgcolor="orange" width="100">상품코드번호</th>
				<th bgcolor="orange" width="150">주문 수량</th>
				<th bgcolor="orange" width="150">등록일</th>
			</tr>
			
			<c:forEach items="${boardList}" var="shop"> <!-- items : 데이터를 레코드 단위로 반환, var : 변수 선언할 수 있는 속성 -->
				<tr>
					<td align="center">${shop.s_no}</td>
					<td><a href="getBoard2.do?s_no=${shop.s_no}">${shop.um_no}</a></td>
					<td align="center">${shop.p_pno}</td>
					<td align="center">${shop.s_quantity}</td>
					<td align="center">${shop.s_date}</td>
				</tr>
			</c:forEach>
		</table>
		</form>
		<br>
		
		
		<a href="insertShoppingbas.do">글쓰기</a>
		
	</center>
</body>
</html>