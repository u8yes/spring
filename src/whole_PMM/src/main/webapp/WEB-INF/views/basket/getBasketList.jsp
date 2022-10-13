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
		<h3>${userName}님! 게시판에 오신 걸 환영합니다<a href="logout.me">로그아웃</a></h3>
		
		<!-- 검색 시작 -->
		<div class="container w-50" >
		<form action="getBasketList.ba" method="post">
			<table border="1" cellpadding="0" cellspacing="0" width="700" class="table table-striped table-sm text-center">
				<tr>
					<td align="right">
						<select name="searchCondition">
							<!-- conditionMap데이터를 option 변수에 저장 -->
							<c:forEach items="${conditionMap}" var="option">	
								<option value="${option.value}">${option.key}</option>
							</c:forEach>
						</select>
						<input type="search" name="searchKeyword">	<!-- text를 search로 바꾼 상태 -->
						<input type="submit" value="검색">
					</td>
				</tr>
			</table>
		</form>
		</div>
		
		<!-- 검색 종료 -->
		
		<!-- 목록 출력 -->
		<div class="container w-50 table-responsive"  >
		<table border="1" cellpadding="0" cellspacing="0" width="800" >
			<tr>
				<th bgcolor="#92bd51;" width="200">s_no</th>
				<th bgcolor="#92bd51;" width="150">um_no</th>
				<th bgcolor="#92bd51;" width="150">p_pno</th>
				<th bgcolor="#92bd51;" width="100">s_quantity</th>
				<th bgcolor="#92bd51;" width="100">s_date</th>
			</tr>
			<c:forEach items="${basketList}" var="basket">	<!-- 1. JSTL 기능 중 items는 데이터, 2. var는 새 변수 선언 -->
			<tr>
				<td align="center"><a href="getBasket.ba?s_no=${basket.s_no}">${basket.s_no}</a></td>	
				<td align="center">${basket.um_no}</td>
				<td align="center">${basket.p_pno}</td>
				<td align="center">${basket.s_quantity}</td>
				<td align="center">${basket.s_date}</td>
				
			</tr>
			</c:forEach>
		</table>
		</div>
		<br>
		<a href="insertBasket.ba">글쓰기</a>
		
		
		
	</center>


</body>
</html>