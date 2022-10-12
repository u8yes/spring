<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 목록</title>
<style type="text/css">
	
	
	.tableofJesus{
		margin-left: 50px;
		margin-top: 30px;
	}

</style>
</head>
<body>
<%@ include file = "/sharedFunction/header.jsp" %>
<%@ include file = "/sharedFunction/adminSidebar.jsp" %>


	<center>
		<h1>글 목록</h1>
		<!-- 목록 출력 -->
		<form action="getDeliveryList.d" method="post">
		<table border="1" cellpadding="0" cellspacing="0" width="1200" class="tableofJesus">
			<tr>
				<th bgcolor="#92bd51;" width="100">배송업체번호</th>
				<th bgcolor="#92bd51;" width="100">업체명</th>
				<th bgcolor="#92bd51;" width="100">사업자등록번호</th>
				<th bgcolor="#92bd51;" width="100">대표자명</th>
				<th bgcolor="#92bd51;" width="150">대표전화번호</th>
				<th bgcolor="#92bd51;" width="150">주소</th>
				<th bgcolor="#92bd51;" width="100">등록자</th>
				<th bgcolor="#92bd51;" width="150">배송가격</th>
				<th bgcolor="#92bd51;" width="150">등록일시</th>
			</tr>
			<c:forEach items="${deliveryList}" var="delivery">
			<tr>
				<td align="center"><a href="getDelivery.d?d_dno=${delivery.d_dno}">${delivery.d_dno}</a></td>
				<td align="center">${delivery.d_cpname}</td>
				<td align="center">${delivery.d_odno}</td>
				<td align="center">${delivery.d_rpnname}</td>
				<td align="center">${delivery.d_tel}</td>
				<td align="center">${delivery.d_addr}</td>
				<td align="center">${delivery.d_register}</td>
				<td align="center">${delivery.d_price}</td>
				<td align="center">${delivery.d_regdate}</td>

			</tr>
			</c:forEach>
		</table>
		</form>
		<br>
		<a href="insertDelivery.d">글쓰기</a>
		
	</center>
	
	
<%@ include file = "/sharedFunction/footer.jsp" %>
	
</body>
</html>





