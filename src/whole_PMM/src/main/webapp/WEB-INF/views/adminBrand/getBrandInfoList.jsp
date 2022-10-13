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
		<form action="getBrandInfoList.bi" method="post">
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
		<div class="container  table-responsive"  >
		<table border="1" cellpadding="0" cellspacing="0" width="" class="table table-striped table-sm text-center">
			<tr>
				<th bgcolor="orange" width="200">bm_no</th>
				<th bgcolor="orange" width="150">bi_biznum</th>
				<th bgcolor="orange" width="100">bi_compname</th>
				<th bgcolor="orange" width="100">bi_comptel</th>
				<th bgcolor="orange" width="100">bi_repr</th>
				<th bgcolor="orange" width="100">bi_compurnum</th>
				<th bgcolor="orange" width="100">bi_addr</th>
				<th bgcolor="orange" width="100">bi_desc</th>
				<th bgcolor="orange" width="100">bi_bizlic</th>
				<th bgcolor="orange" width="100">bi_shop</th>
				<th bgcolor="orange" width="100">bi_snsinsta</th>
				<th bgcolor="orange" width="100">bi_snsaso</th>
				<th bgcolor="orange" width="100">bi_fax</th>
				<th bgcolor="orange" width="100">bi_date</th>
			</tr>
			<c:forEach items="${brandInfoList}" var="brandInfo">	<!-- 1. JSTL 기능 중 items는 데이터, 2. var는 새 변수 선언 -->
			<tr>
				
				<td><a href="getBrandInfo.bi?bm_no=${brandInfo.bm_no}">${brandInfo.bm_no}</a></td>	<!-- ?seq= 라는 건 바로 쿼리문으로 연결되는 것 -->
				<td align="center">${brandInfo.bi_biznum}</td>
				<td align="center">${brandInfo.bi_name}</td>
				<td align="center">${brandInfo.bi_tel}</td>
				<td align="center">${brandInfo.bi_repr}</td>
				<td align="center">${brandInfo.bi_commnum}</td>
				<td align="center">${brandInfo.bi_addr}</td>
				<td align="center">${brandInfo.bi_desc}</td>
				<td align="center">${brandInfo.bi_bizlic}</td>
				<td align="center">${brandInfo.bi_shop}</td>
				<td align="center">${brandInfo.bi_insta}</td>
				<td align="center">${brandInfo.bi_sns}</td>
				<td align="center">${brandInfo.bi_fax}</td>
				<td align="center">${brandInfo.bi_date}</td>
								
			</tr>
			</c:forEach>
		</table>
		</div>
		<br>
		<a href="insertBrandInfo.bi">글쓰기</a>
		
		
		
	</center>


<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>