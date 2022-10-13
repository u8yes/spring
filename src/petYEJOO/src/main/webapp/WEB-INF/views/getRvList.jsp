<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기글 목록</title>
<!-- <link rel="stylesheet" href="/css/basic.css"> -->
<%@ include file="/resources/css/basic.css" %>

<style>

th{
	padding-top: 10px;
	padding-bottom: 10px;
}

td{
	padding-top:5px;
	padding-bottom: 5px;
}

.writebuttonsecc{
	text-align: right;
	padding-bottom: 10px;
}

.writebutton{
	font-family: 'MICEGothic Bold';
	width : 100px;
	height : 40px;
	padding: 1px 8px; 
	background-color: #92bd51;
	border-radius: 5px;
	border : 2px solid #749641;
	font-size: 18px;
	color : white;
}

.search{
	text-align: center;
}

.search input{
	font-siae:16px;
	width : 325px;
	padding : 9px;
	border: 2px solid #749641;
	outline: none;

}

.search select{
	font-family: 'MICEGothic Bold';
	padding: 8px;
	border : 2px solid #749641;
}

.searchbutton{
	font-family: 'MICEGothic Bold';
	width : 100px;
	height : 40px;
	padding: 1px 8px; 
	background-color: #92bd51;
	border-radius: 5px;
	border : 2px solid #749641;
	font-size: 18px;
	color : white;
}


</style>

</head>
<body>

<header>
<%@ include file="/header.jsp" %>
</header>

<div class="outline">

<br><br>

	<!-- ◆공통페이지 타이틀 -->
	<div class="c_page">
		<div class="title">문의글 목록</div>
	</div>
	
	<hr>
	
	<div class="writebuttonsecc">
		<button class="writebutton" onclick="location.href='insertRv.zo'">후기글쓰기</button>
	</div>
	
	<!-- 목록 출력 -->
	<table>
		<tr>
			<th>번호</th>
			<th>브랜드</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>별점</th>
		</tr>
		<c:forEach items="${rvList}" var="rv"> <!-- items : 데이터를 레코드 단위로 반환, var : 변수 선언할 수 있는 속성 -->
			<tr>
				<td align="center">${rv.rv_no}</td>
				<td><a href="getRv.zo?rv_no=${rv.rv_no}">${rv.bm_no}</a></td>
				<td align="center">${rv.um_no}</td>
				<td align="center">${rv.rv_date}</td>
				<td align="center">${rv.rv_star}</td>
			</tr>
		</c:forEach>
	</table>
	
	<br><br>
	
	<!-- 검색 기능 -->
	<form action="getRvList.zo" method="post">
		<div class="search">
			<select name="searchCondition">
				<c:forEach items="${conditionMap}" var="option">
					<option value="${option.value}">${option.key}</option>
				</c:forEach>
			</select>
			<input type="text" name="searchKeyword" placeholder="검색어를 입력하세요.">
			<button type="submit" class="searchbutton">검색</button>
		</div>
	</form>
	
	<br><br><br><br><br><br><br>

</div>

	<%-- 
	<center>
		<h1>후기글 목록</h1>
		<h3>${userName}님! 게시판에 오신 것을 환영합니다.. :) <a href="logout.me">로그아웃</a></h3>
		
		<!-- 검색 시작 -->
		<form action="getRvList.zo" method="post">
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
				<th bgcolor="orange" width="200">브랜드</th>
				<th bgcolor="orange" width="150">작성자</th>
				<th bgcolor="orange" width="150">등록일</th>
				<th bgcolor="orange" width="100">별점</th>
			</tr>
			<c:forEach items="${rvList}" var="rv"> <!-- items : 데이터를 레코드 단위로 반환, var : 변수 선언할 수 있는 속성 -->
				<tr>
					<td align="center">${rv.rv_no}</td>
					<td><a href="getRv.zo?rv_no=${rv.rv_no}">${rv.bm_no}</a></td>
					<td align="center">${rv.um_no}</td>
					<td align="center">${rv.rv_date}</td>
					<td align="center">${rv.rv_star}</td>
				</tr>
			</c:forEach>
		</table>
		<br>
		
		
		<a href="insertRv.zo">후기글쓰기</a>
		
	</center> 
	--%>
	
<footer>
<%@ include file="/footer.jsp" %>
</footer>

</body>
</html>