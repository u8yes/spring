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
		<!-- 목록 출력 -->
		<form action="getBuyList.sj" method="post">
		<table border="1" cellpadding="0" cellspacing="0" width="700">
			<tr>
				<th bgcolor="orange" width="100">번호</th>
				<th bgcolor="orange" width="200">제목</th>
				<th bgcolor="orange" width="150">작성자</th>
				<th bgcolor="orange" width="150">주소</th>
				<th bgcolor="orange" width="150">그림</th>
				<th bgcolor="orange" width="150">2</th>
				<th bgcolor="orange" width="150">3</th>
				<th bgcolor="orange" width="150">4</th>
				<th bgcolor="orange" width="150">5</th>
				<th bgcolor="orange" width="150">6</th>
				<th bgcolor="orange" width="150">7</th>
				
			</tr>
			<c:forEach items="${buyList}" var="buy">
				<tr>
					<td align="center">${buy.po_no}</td>
					<td><a href="getBuy.sj?po_no=${buy.po_no}">${buy.um_no}</a></td>
					<td align="center">${buy.ob_payno}</td>
					<td align="center">${buy.po_name}</td>
					<td align="center">${buy.po_number}</td>
					<td align="center">${buy.po_addr}</td>
					<td align="center">${buy.d_dno}</td>
					<td align="center">${buy.po_drequest}</td>
					<td align="center">${buy.po_status}</td>
					<td align="center">${buy.o_odno}</td>
					<td align="center">${buy.s_no}</td>
					<td align="center">${buy.po_regdate}</td>
				</tr>
			</c:forEach>
		</table>
		</form>
		<br>
		<a href="insertBuy.sj">글쓰기</a>
		
	</center>
</body>
</html>





