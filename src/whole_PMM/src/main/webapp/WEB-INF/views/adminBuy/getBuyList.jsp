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
<!-- CSS only -->


<%@ include file = "/sharedFunction/header.jsp" %>
<%@ include file = "/sharedFunction/adminSidebar.jsp" %>

	<center>
		<h1>글 목록</h1>
		<!-- 목록 출력 -->
		<form action="getBuyList.po" method="post">
		<table border="1" cellpadding="0" cellspacing="0" width="1100">
			<tr>
				<th bgcolor="#92bd51;" width="150">주문번호</th>
				<th bgcolor="#92bd51;" width="200">주문상품번호</th>
				<th bgcolor="#92bd51;" width="150">총가격</th>
				<th bgcolor="#92bd51;" width="150">포인트적용</th>
				<th bgcolor="#92bd51;" width="150">쿠폰적용번호</th>
				<th bgcolor="#92bd51;" width="150">배송업체번호</th>
				<th bgcolor="#92bd51;" width="150">배송요청사항</th>
				<th bgcolor="#92bd51;" width="150">결제금액</th>
				<th bgcolor="#92bd51;" width="150">결제수단코드</th>
				<th bgcolor="#92bd51;" width="150">수령자명</th>
				<th bgcolor="#92bd51;" width="150">수령자전화번호</th>
				<th bgcolor="#92bd51;" width="150">수령자 주소</th>
				<th bgcolor="#92bd51;" width="150">주문상태</th>
				<th bgcolor="#92bd51;" width="150">주문일시</th>
				
			</tr>
			<c:forEach items="${buyList}" var="buy">
				<tr>
					<td align="center"><a href="getBuy.po?po_no=${buy.po_no}">${buy.po_no}</a></td>
					<td align="center">${buy.o_odno}</td>
					<td align="center">${buy.po_total}</td>
					<td align="center">${buy.pa_no}</td>
					<td align="center">${buy.cpa_no}</td>
					<td align="center">${buy.d_dno}</td>
					<td align="center">${buy.po_drequest}</td>
					<td align="center">${buy.po_price}</td>
					<td align="center">${buy.po_ptype}</td>
					<td align="center">${buy.po_name}</td>
					<td align="center">${buy.po_number}</td>
					<td align="center">${buy.po_addr}</td>
					<td align="center">
					<c:set var="buy" value="${buy.po_status}" />
					<c:choose>
					    <c:when test="${buy==1}">
					        입금전
					    </c:when>
					    <c:when test="${buy==2}">
					        입금완료
					    </c:when>
					    <c:when test="${buy==3}">
					        배송전
					    </c:when>
					    <c:when test="${buy==4}">
					        배송중
					    </c:when>
					    <c:when test="${buy==5}">
					        배송완료
					    </c:when>
					    <c:when test="${buy==6}">
					        거래완료
					    </c:when>
					    <c:otherwise>
					        환불
					    </c:otherwise>
					</c:choose>
					</td>
					<td align="center">${buy.po_regdate}</td>
				</tr>
			</c:forEach>
		</table>
		</form>
		<br>
		<a href="insertBuy.po">글쓰기</a>
		
	</center>
	
	
	
<%@ include file = "/sharedFunction/footer.jsp" %>

</body>
</html>


