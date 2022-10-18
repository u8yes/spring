<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회사 소개</title>
<link rel="stylesheet" href="/css/basic.css">
<%@ include file="/resources/css/basic.css" %>
<style>
.img-com{
	width: 90%;
	height: auto;
	display: block;
	margin: auto;
}
.companycontainer{
	text-align: center;
	margin-left : 17%;
}

.companybutton{
	width : 200px;
	height: 200px;
	border : 1px solid #88b04b;
	background-color: #88b04b;
	border-radius: 70%;
	float: left;
	margin: 30px;
}

.buttontitle{
	font-family: 'twayair';
	margin-top:80px;
	color: #fff;
}
</style>
</head>
<body>
<header>
<jsp:include page="../header.jsp"></jsp:include>
</header>

<div class="outline">
<br>
<br>
<div class="uscom_page">
		<div class="title">회사 소개</div>
	</div>
	<hr>
	<br>
	<br>

<div class="companyintro">
	<img class="img-com" src="resources/img/companyintro.png"/>
</div>

<br>
<br>
<br>

<div class="companycontainer">
	<div class="companybutton">
	<a href="adoptani.do">
		<h1 class = "buttontitle">입양 문의</h1>
		</a>
	
</div>

	<div class="companybutton">
	<a href="getCommuList.zo">
		<h1 class = "buttontitle">커뮤니티</h1>
		</a>
</div>

	<div class="companybutton">
	<a href="anistory.do">
		<h1 class = "buttontitle">동물이야기</h1>
	</a>
</div>
	
</div>


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


</div>





<footer>
<jsp:include page="../footer.jsp"></jsp:include>
</footer>
</body>
</html>