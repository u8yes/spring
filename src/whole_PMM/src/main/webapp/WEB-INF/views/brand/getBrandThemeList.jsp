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
<title>마이페이지 - 관리자 사이드바</title>


</head>
<body>

<%@ include file = "/sharedFunction/header.jsp" %>
<%@ include file = "/sharedFunction/adminSidebar.jsp" %>

<center>
		<h1>글 목록</h1>
		<%-- <h3>${userName}님! 게시판에 오신 걸 환영합니다<a href="logout.me">로그아웃</a></h3> --%>
		
		
		
		<!-- 목록 출력 -->
		<div>
		<table border="1" cellpadding="0" cellspacing="0" width="800" >
			<tr >
				<th colspan="6" bgcolor="#92bd51;">
				<!-- 검색 시작 -->
				<div class="container w-50" >
				<form action="getBrandThemeList.bt" method="post">
					<table border="1" cellpadding="0" cellspacing="0" width="800" >
						<tr>
							<td align="left">
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
				</th>
				
			</tr>
			<tr>
				<th bgcolor="#92bd51;" width="90">브랜드디자인</th>
				<th bgcolor="#92bd51;" width="80">브랜드 번호</th>
				<th bgcolor="#92bd51;" width="150">색상</th>
				<th bgcolor="#92bd51;" width="100">폰트</th>
				<th bgcolor="#92bd51;" width="100">로고</th>
				<th bgcolor="#92bd51;" width="100">등록일자</th>
				
			</tr>
			<c:forEach items="${brandThemeList}" var="brandTheme">	<!-- 1. JSTL 기능 중 items는 데이터, 2. var는 새 변수 선언 -->
			<tr>
				<td align="center"><a href="deleteBrandTheme.bt?bm_no=${brandTheme.bm_no}" ><input type="button" value="삭제"></a></td>	
				<td align="center"><a href="getBrandTheme.bt?bm_no=${brandTheme.bm_no}">${brandTheme.bm_no}</a></td>	
				<td align="center" bgcolor="#${brandTheme.bt_color}">${brandTheme.bt_color}</td>
				<td align="center">${brandTheme.bt_font}</td>
				<td align="center"><img src="brandThemeUpload/${brandTheme.bt_logo}" width="100px" /></td>
				<td align="center">${brandTheme.bt_date}</td>
			</tr>
			</c:forEach>
		</table>
		</div>
		<br>
		<a href="insertBrandTheme.bt">테마 등록</a>
		<br><br>

		
	
<%@ include file = "color.jsp" %>
		<br><br><br><br><br>

	</center>

<%@ include file = "/sharedFunction/footer.jsp" %>
</body>
</html>