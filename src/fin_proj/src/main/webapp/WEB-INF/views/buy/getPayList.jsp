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

		<form action="getPayList.sj" method="post">
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

				
				
			</tr>
			<c:forEach items="${payList}" var="pay">
				<tr>
					<td align="center">${pay.ob_payno}</td>
					<td><a href="getPay.sj?ob_payno=${pay.ob_payno}">${pay.o_odno}</a></td>
					<td align="center">${pay.ob_type}</td>
					<td align="center">${pay.ms_grade}</td>
					<td align="center">${pay.cpa_no}</td>
					<td align="center">${pay.pa_no}</td>
					<td align="center">${pay.da_no}</td>
					<td align="center">${pay.ob_price}</td>
					<td align="center">${pay.ob_date}</td>
				</tr>
			</c:forEach>
		</table>
		</form>
		<br>
		<a href="insertPay.sj">글쓰기</a>
		
	</center>
</body>
</html>





