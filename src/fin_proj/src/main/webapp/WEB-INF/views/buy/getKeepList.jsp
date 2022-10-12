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
		<h3>${userName}님! 게시판에 오신걸 환영합니다..<a href="logout.me">로그아웃</a></h3>
		<!-- 목록 출력 -->
		<form action="getKeepList.sj" method="post">
		<table border="1" cellpadding="0" cellspacing="0" width="700">
			<tr>
				<th bgcolor="orange" width="100">번호</th>
				<th bgcolor="orange" width="200">제목</th>
				<th bgcolor="orange" width="150">작성자</th>
				<th bgcolor="orange" width="150">주소</th>
				<th bgcolor="orange" width="150">그림</th>

			</tr>
			<c:forEach items="${keepList}" var="keep">
				<tr>
					<td align="center">${keep.k_no}</td>
					<td><a href="getKeep.sj?k_no=${keep.k_no}">${keep.um_no}</a></td>
					<td align="center">${keep.p_pno}</td>
					<td align="center">${keep.bm_no}</td>
					<td align="center">${keep.k_date}</td>
					
				</tr>
			</c:forEach>
		</table>
		</form>
		<br>
		<a href="insertKeep.sj">글쓰기</a>
		
	</center>
</body>
</html>




