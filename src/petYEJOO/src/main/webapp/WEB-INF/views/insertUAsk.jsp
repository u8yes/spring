<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의등록(U)</title>
<!-- <link rel="stylesheet" href="/css/basic.css"> -->
<%@ include file="/resources/css/basic.css" %>

<style>
h1 {
	font-family: 'MICEGothic Bold';
	font-size: 20px;
}
.commuarea{
  width : 100%;
  height : 20px;
  border : 2px solid #88b04b;
  border-radius: 2px;
}
textarea{
  width : 100%;
  border : 2px solid #88b04b;
  height : 500px;
  border-radius: 2px;
}

.buttonzone{
	text-align: center;
}

button{
	font-family: 'MICEGothic Bold';
	margin : 20px;
}

.searchbutton{
	padding: 12px 40px; 
	font-size: 22px;
	border : 1px solid #858C74;
	border-radius: 5px;
	background-color: #88b04b;
	font-family: 'MICEGothic Bold';
	color : #FFF;
}
</style>

</head>
<body>

<header>
<%@ include file="/header.jsp" %>
</header>

<div class="outline">

	<div class="c_page">
		<div class="title">문의 등록(U)</div>
	</div>
	
	<hr><br>
	
	<form action="insertUAsk.zo" method="post">
		<input type="hidden" name="bm_no" value="${1}" /><!-- (임시값)세션으로 들어갈 자리임. -->
		<input type="hidden" name="um_no" value="${1}" /><!-- (임시값)세션으로 들어갈 자리임. -->
		<h1 class="commutitle">제목</h1>
			<input type="text" name="a_title" class="commuarea"/>
			<div class="container" style="height: 10px;"></div>
		<h1 class="commutitle">작성자이름</h1><!-- (임시값)세션으로 들어갈 자리임. -->
			<input type="text" value="${hello}" readonly="readonly" class="commuarea"/>
			<div class="container" style="height: 10px;"></div>
		<h1 class="commutitle">브랜드이름</h1><!-- (임시값)세션으로 들어갈 자리임. -->
			<input type="text" value="${hi}" readonly="readonly" class="commuarea"/>
			<div class="container" style="height: 10px;"></div>
		<h1 class="commutitle">내용</h1>
			<textarea name="a_content" cols="40" rows="10"></textarea>
		<br><br>
		<div class="buttonzone">
			<button type="submit" class="searchbutton">새글 등록</button>
		</div>
	</form>
	
	<button onclick="location.href='getUAskList.zo'" class="backbutton">돌아가기</button>
	
	<br><br><br><br><br><br>
	
</div>

	<!-- 
	<center>
		<h1>문의 등록</h1>
		<a href="logout.do">Log-out</a>
		<hr>
		<form action="insertAsk.zo" method="post">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left"><input type="text" name="a_title" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">작성자번호</td>
					<td align="left"><input type="text" name="um_no" size="10" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">브랜드번호</td>
					<td align="left"><input type="text" name="bm_no" size="10" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">내용</td>
					<td align="left"><textarea name="a_content" cols="40" rows="10"></textarea></td>
				</tr>
				<tr>
					<td bgcolor="orange">문의상태</td>
					<td align="left"><input type="text" name="a_status" size="10" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">파일첨부</td>
					<td><input type="file" name="uploadFile"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value=" 새글 등록 " />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="getAskList.zo">문의 목록 가기</a>
	</center> 
	-->
	
<footer>
<%@ include file="/footer.jsp" %>
</footer>
	
</body>
</html>