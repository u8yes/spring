<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입점 안내 1번</title>
<link rel="stylesheet" href="css/basic.css">
<%@ include file="/resources/css/basic.css" %>
<style>
.entryinfostep{
	width : 300px;
	height : 250px;
	text-align: center;
}
.entrybox{
	display: flex;
  	justify-content: center;
  	
}
h1, h2{
	margin : 0px;
	font-family: 'MICEGothic Bold';
}

.entrystepstep, .entrysteptitle{
	position: relative;
	top: 80px;
}

.entrybutton{
	padding: 12px 40px; 
	font-size: 22px;
	border : 1px solid #749641;
	border-radius: 5px;
	background-color:#f4e9cb;
	color : #323232;
	font-family: 'MICEGothic Bold';
}
.entrytitle, .buttonarea{
	text-align: center;
}

.entrytitle h1{
	font-family: 'MICEGothic Bold';
	font-size: 40px;
}

.entryinfonoti{
	text-align: center;
}
hr{
	width : 88%;
}

</style>
</head>
<body>

<header>
<%@ include file = "./../header.jsp" %>
</header>


<div class = "outline">
<br><br><br><br>

	<div class="entrytitle">
		<h1>입점안내</h1>
	</div>
<br>
<hr>
<br>

	<div class="entryinfonoti">
		<a>담당자정보와 사업자 정보를 입력하시면 입점신청이 완료됩니다.<br>
입력을 완료하시면, 심사 후 담당자가 개별 연락 드립니다.</a>
	</div>

<br>
<br>
	
	<div class="entrybox">
	<div class="entryinfostep" style="border-right : 2px solid #000;">
		<div class="entrystep"><h2 class="entrystepstep">Step.1</h2></div>
		<div class="entrytitle"><h1 class="entrysteptitle">입점신청</h1></div>
	</div>
	
	<div class="entryinfostep" style="border-right : 2px solid #000;">
		<div class="entrystep"><h2 class="entrystepstep">Step.2</h2></div>
		<div class="entrytitle"><h1 class="entrysteptitle">입점심사</h1></div>
	</div>
	
	<div class="entryinfostep">
		<div class="entrystep"><h2 class="entrystepstep">Step.3</h2></div>
		<div class="entrytitle"><h1 class="entrysteptitle">입점완료</h1></div>
	</div>
</div>

<br>
<br>
<hr>
<br>
<br>
<br>


<div class="buttonarea">
	<button onclick="location.href='#'" class="submitbutton">입점 회원가입</button>
	<button onclick="location.href='#'" class="entrybutton">입점 문의하기</button>	
</div>


</div>








<footer>
<%@ include file = "./../footer.jsp" %>
</footer>

</body>
</html>