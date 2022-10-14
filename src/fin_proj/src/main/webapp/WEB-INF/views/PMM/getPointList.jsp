<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta charset="utf-8">
<!-- Swipe CDN -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<title>PMM페이지 - 포인트 조회</title>


</head>
<body>

<%@ include file = "./../header.jsp" %>
<%-- <%@ include file = "./../adminSidebar.jsp" %> --%>

<center>
		<h1>포인트 목록</h1>
		<%-- <h3>${userName}님! 게시판에 오신 걸 환영합니다<a href="logout.me">로그아웃</a></h3> --%>
		
		<!-- 검색 시작 -->
		<div class="container w-50" >
		<form action="getPointList.do" method="post">
			<table border="1" cellpadding="0" cellspacing="0" width="800" class="table table-striped table-sm text-center">
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
		<table border="1" cellpadding="0" cellspacing="0" width="800" class="table table-striped table-sm text-center">
			<tr>
				<th bgcolor="#92bd51;" width="80">포인트 번호</th>
				<th bgcolor="#92bd51;" width="150">포인트명</th>
				<th bgcolor="#92bd51;" width="100">포인트 설명</th>
				<th bgcolor="#92bd51;" width="100">등록일자</th>
				
			</tr>
			<c:forEach items="${pointList}" var="point">	<!-- 1. JSTL 기능 중 items는 데이터, 2. var는 새 변수 선언 -->
			<tr>
				<td align="center"><a href="getPoint.do?pp_payno=${point.pp_payno}">${point.pp_payno}</a></td>	<!-- ?seq= 라는 건 바로 쿼리문으로 연결되는 것 -->
				<td align="center">${point.pp_name}</td>
				<td align="center">${point.pp_desc}</td>
				<td align="center">${point.pp_date}</td>
			</tr>
			</c:forEach>
		</table>
		</div>
		<br>
		<a href="insertPoint.do">포인트 등록</a>
		<br><br>
	

	</center>


<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<%@ include file = "./../footer.jsp" %>
</body>
</html>