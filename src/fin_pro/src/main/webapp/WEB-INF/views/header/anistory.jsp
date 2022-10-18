<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동물 이야기</title>
<link rel="stylesheet" href="/css/basic.css">
<%@ include file="/resources/css/basic.css" %>
<style>
.img-back{
	width : 40px;
	height: 40px;
	float: left;
	margin-right: 10px;
}
.aniyoutubecon{
	text-align: right;
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
<div class="anistory_page">
	<a href="uscompany.jsp">
      	<img class="img-back" src="resources/img/back.png"/>
  	</a>
		<div class="title">동물 이야기</div>
	</div>
	<hr>
	<br>
	<br>

<div class = "aniyoutube">
<iframe width="1280px" height="720px" src="https://www.youtube.com/embed/NEfVKKoKFPY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
<br>
<div class="aniyoutubecon">
<a class="anicont">출처 : 사피엔스 스튜디오 https://youtu.be/NEfVKKoKFPY</a>
</div>

<br>
<br>
<br>


</div>


<footer>
<jsp:include page="../footer.jsp"></jsp:include>
</footer>


</body>
</html>