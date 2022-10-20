<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MD 목록</title>
</head>
<body>
	
	
	<center>
		
		<!-- 검색 시작 -->
		<div class="container w-50" >
		<form action="getMdList.md" method="post">
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
				<th bgcolor="#92bd51;" width="150">MD번호</th>
				<th bgcolor="#92bd51;" width="150">브랜드번호</th>
				<th bgcolor="#92bd51;" width="100">상품코드번호</th>
			</tr>
			<c:forEach items="${mdList}" var="md">	<!-- 1. JSTL 기능 중 items는 데이터, 2. var는 새 변수 선언 -->
			<tr>
				<td><a href="getMd.md?md_no=${md.md_no}">${md.md_no}</a></td>	<!-- ?seq= 라는 건 바로 쿼리문으로 연결되는 것 -->
				<td align="center">${md.bm_no}</td>
				<td align="center">${md.p_pno}</td>
				
			</tr>
			</c:forEach>
		</table>
		</div>
		<br>
		<a href="insertMd.md">글쓰기</a>
		
	</center>

</body>
</html>