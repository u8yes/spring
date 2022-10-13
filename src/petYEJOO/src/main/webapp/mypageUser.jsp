<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<!-- 개인 마이페이지 입니다. -->

<style type="text/css">
	.side {
		width: 10%;
		background-color: aqua; /* 영역 확인용 색깔을 넣어둔 것입니다. 작업 후 지워주세요. */
	}
	.content {
		width: 1500px;
		margin: auto;
		background-color: green; /* 영역 확인용 색깔을 넣어둔 것입니다. 작업 후 지워주세요. */
		/* display: inline-flex; */
	}
</style>

</head>
<body>
<%-- <%@ include file="header.jsp" %> --%>

<br><br>
<!-- 사이드바 -->
<div class="side">
	내정보
	<hr>
	<a href="mjoinup.jsp">정보수정</a><br>
	<a href="password.jsp">비밀번호 변경</a><br>
	<a href="memberout.jsp">회원탈퇴</a><br>
	주문관리<br>
	<hr>
	주문조회<br>
	반품/환불내역<br>
	문의내역<br>
	<hr>
	내가 한 문의<br>
	1:1 문의 바로가기<br>
	<hr>
	관심브랜드<br>
	( ˃ᴗ˂ )<br>
	
</div>

<div class="content">
	<!-- 주문관리 -->
	<div>
		<h4>주문관리</h4>
		<table border="1">
			<tr>
				<th>이미지</th>
				<th>상품명</th>
				<th>수량·옵션</th>
				<th>가격</th>
				<th>배송상태</th>
			</tr>
			<tr>
				<td>임시</td>
				<td>임시</td>
				<td>임시</td>
				<td>임시</td>
				<td>임시</td>
			</tr>
			<tr>
				<td>임시</td>
				<td>임시</td>
				<td>임시</td>
				<td>임시</td>
				<td>임시</td>
			</tr>
		</table>
	</div>
	
	<!-- 배송안내문구 -->
	<div>
		<h4>배송안내문구</h4>
		<div>
			<p>1. 배송은 주문 입금 후 ~~~~~~~ 걸려요. ₍๐•ᴗ•๐₎</p>
			<p>2. 문의 시에는 주문번호나 아이디 구매날짜 등을 ~~~~~~~~  (⑅´•⌔•`)*✲ﾟ*｡</p>
		</div>
		<hr>
	</div>
</div>

<!-- 문의 -->
<div align="right">
	<a href="#">1:1 문의</a>
</div>

<%-- <%@ include file="footer.jsp" %> --%>
</body>
</html>