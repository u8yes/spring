<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티글 목록</title>
</head>
<body>
	<center>
		<h1>커뮤니티글 목록</h1>
		<h3>${userName}님! 게시판에 오신 것을 환영합니다.. :) <a href="logout.me">로그아웃</a></h3>
		
		<!-- 검색 시작 -->
		<form action="getCommuList.zo" method="post">
			<table border="1" cellpadding="0" cellspacing="0" width="700">
				<tr>
					<td align="right">
						<select name="searchCondition">
							<c:forEach items="${conditionMap}" var="option">
								<option value="${option.value}">${option.key}</option>
							</c:forEach>
						</select>
						<input type="text" name="searchKeyword">
						<input type="submit" value="검색">
					</td>
				</tr>
			</table>
		</form>
		<!-- 검색 종료 -->
		
		<!-- 목록 출력 -->
		<table border="1" cellpadding="0" cellspacing="0" width="700">
			<tr>
				<th bgcolor="orange" width="100">번호</th>
				<th bgcolor="orange" width="200">제목</th>
				<th bgcolor="orange" width="150">작성자</th>
				<th bgcolor="orange" width="150">등록일</th>
				<th bgcolor="orange" width="100">조회수</th>
			</tr>
			<c:forEach items="${commuList}" var="commu"> <!-- items : 데이터를 레코드 단위로 반환, var : 변수 선언할 수 있는 속성 -->
				<tr>
					<td align="center">${commu.cm_bdno}</td>
					<td><a href="getCommu.zo?cm_bdno=${commu.cm_bdno}">${commu.cm_title}</a></td>
					<td align="center">${commu.um_no}</td>
					<td align="center">${commu.cm_regdate}</td>
					<td align="center">${commu.cm_cnt}</td>
				</tr>
			</c:forEach>
		</table>
		<br>
		
		
		<a href="insertCommu.zo">커뮤니티 글 쓰기</a>
		
	</center>
</body>
</html>