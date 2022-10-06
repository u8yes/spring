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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">	
	
	<!-- <img alt="" src="/brandUpload/topM.jpg" width="100%" > -->
	
	
	<center>
		<h1>글 목록</h1>
		<h3>${userName}님! 게시판에 오신 걸 환영합니다<a href="logout.me">로그아웃</a></h3>
		
		<!-- 검색 시작 -->
		<div class="container w-50" >
		<form action="getBrandThemeList.bt" method="post">
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
		<table border="1" cellpadding="0" cellspacing="0" width="800" class="table table-striped table-sm text-center">
			<tr>
				<th bgcolor="orange" width="200">bm_no</th>
				<th bgcolor="orange" width="150">bt_no</th>
				<th bgcolor="orange" width="150">bt_color</th>
				<th bgcolor="orange" width="100">bt_color_desc</th>
				<th bgcolor="orange" width="100">bt_font</th>
				<th bgcolor="orange" width="100">bt_font_desc</th>
				<th bgcolor="orange" width="100">bt_regidate</th>
				
			</tr>
			<c:forEach items="${brandThemeList}" var="brandTheme">	<!-- 1. JSTL 기능 중 items는 데이터, 2. var는 새 변수 선언 -->
			<tr>
				<td><a href="getBrandTheme.bt?bm_no=${brandTheme.bm_no}">${brandTheme.bm_no}</a></td>	<!-- ?seq= 라는 건 바로 쿼리문으로 연결되는 것 -->
				<td align="center">${brandTheme.bt_no}</td>
				<td align="center">${brandTheme.bt_color}</td>
				<td align="center">${brandTheme.bt_color_desc}</td>
				<td align="center">${brandTheme.bt_font}</td>
				<td align="center">${brandTheme.bt_font_desc}</td>
				<td align="center">${brandTheme.bt_regidate}</td>
				
			</tr>
			</c:forEach>
		</table>
		</div>
		<br>
		<a href="insertBrandTheme.bt">글쓰기</a>
		
		
		
		
		
	</center>


<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>