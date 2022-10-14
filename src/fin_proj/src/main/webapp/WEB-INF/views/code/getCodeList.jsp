<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코드 목록</title>
</head>
<body>
	
	
	<center>
		
		<!-- 검색 시작 -->
		<div class="container w-50" >
		<form action="getCodeList.co" method="post">
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
				<th bgcolor="#92bd51;" width="200">상품코드번호</th>
				<th bgcolor="#92bd51;" width="150">코드분류번호</th>
				<th bgcolor="#92bd51;" width="150">코드명</th>
				<th bgcolor="#92bd51;" width="100">코드설명</th>
			</tr>
			<c:forEach items="${codeList}" var="code">	<!-- 1. JSTL 기능 중 items는 데이터, 2. var는 새 변수 선언 -->
			<tr>
				<td><a href="getCode.co?p_pno=${code.p_pno}">${code.p_pno}</a></td>	<!-- ?seq= 라는 건 바로 쿼리문으로 연결되는 것 -->
				<td align="center">${code.dc_pcno}</td>
				<td align="center">${code.c_name}</td>
				<td align="center">${code.c_ex}</td>
				
			</tr>
			</c:forEach>
		</table>
		</div>
		<br>
		<a href="insertCode.co">글쓰기</a>
		
		
		
	</center>

</body>
</html>