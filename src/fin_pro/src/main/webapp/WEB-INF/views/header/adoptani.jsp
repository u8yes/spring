<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입양 홍보 게시판</title>
<link rel="stylesheet" href="/css/basic.css">
<%@ include file="/resources/css/basic.css" %>
<style>
.img-back{
	width : 40px;
	height: 40px;
	float: left;
	margin-right: 10px;
}
.adopt-img{
	width: 60%;
	height: auto;
	display: block;
	margin: auto;
}

.amiline{
	display:flex;
	justify-content: center;
}

.amiarea{
	width : 200px;
	height : 250px;
	margin-top: 50px;
	margin-bottom: 50px;
	margin-left: 20px;
	margin-right: 20px;
}

.img-ami{
	width : 200px;
	height : 200px;
	border-radius: 70%;
    overflow: hidden;
}

.ami-name{
	font-family: 'twayair';
	text-align: center;
	font-size: 16px;
}



</style>
</head>
<body>

<header>
<jsp:include page="../header.jsp"></jsp:include>
</header>

<div class ="outline">

<br>
<br>

<div class="adopt_page">
    	<a href="uscompany.jsp">
      	<img class="img-back" src="resources/img/back.png"/>
  		</a>
		<div class="title">입양 홍보</div>
	</div>
	<hr>
	<br>
	<br>
	<div class = "adoptimg">
	<img class="adopt-img" src="resources/img/adoptami.png"/>
	</div>
	<br>

<div class="amiline">

<div class="amiarea">
	<a href="https://www.animals.or.kr/center/adopt/61604">
	<img class="img-ami" src="resources/img/ami1.jpg"/></a>
	<div class="ami-name">
	<a class="ami-name">원투, 투투, 세투</a></div>
</div>


<div class="amiarea">
	<a href="https://www.animals.or.kr/center/adopt/61595">
	<img class="img-ami" src="resources/img/ami2.jpg"/></a>
	<div class="ami-name">
	<a class="ami-name">루돌프</a></div>
</div>

<div class="amiarea">
	<a href="https://dmanimal.co.kr/adoption/?q=YToyOntzOjEyOiJrZXl3b3JkX3R5cGUiO3M6MzoiYWxsIjtzOjQ6InBhZ2UiO2k6Mjt9&bmode=view&idx=12996270&t=board">
	<img class="img-ami" src="resources/img/ami4.jpg"/></a>
	<div class="ami-name">
	<a class="ami-name">오월이</a></div>
</div>

<div class="amiarea">
	<a href="https://animal.seoul.go.kr/animalInfo/view?aniNo=1541&curPage=1">
	<img class="img-ami" src="resources/img/ami3.jpg"/></a>
	<div class="ami-name">
	<a class="ami-name">국진</a></div>
</div>

</div>
   
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