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

		<form action="getPointList.sj" method="post">
		<table border="1" cellpadding="0" cellspacing="0" width="700">
			<tr>
				<th bgcolor="orange" width="100">번호</th>
				<th bgcolor="orange" width="200">제목</th>
				<th bgcolor="orange" width="150">작성자</th>
				<th bgcolor="orange" width="150">주소</th>
				
			</tr>
			<c:forEach items="${pointList}" var="point">
				<tr>
					<td align="center">${point.pp_payno}</td>
					<td><a href="getPoint.sj?pp_payno=${point.pp_payno}">${point.pp_name}</a></td>
					<td align="center">${point.pp_desc}</td>
					<td align="center">${point.pp_date}</td>
				</tr>
			</c:forEach>
		</table>
		</form>
		<br>
		<a href="insertPoint.sj">글쓰기</a>
		
	</center>
</body>
</html>





