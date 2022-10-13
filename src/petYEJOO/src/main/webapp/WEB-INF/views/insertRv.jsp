<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>후기등록</title>
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
		<div class="title">후기 등록</div>
	</div>
	
	<hr><br>
	
	<form action="insertRv.zo" method="post">
		<h1 class="commutitle">상품코드번호</h1>
			<input type="text" name="p_pno" class="commuarea"/>
			<div class="container" style="height: 10px;"></div>
		<h1 class="commutitle">작성자번호</h1>
			<input type="text" name="um_no" class="commuarea"/>
			<div class="container" style="height: 10px;"></div>
		<h1 class="commutitle">브랜드번호</h1>
			<input type="text" name="bm_no" class="commuarea"/>
			<div class="container" style="height: 10px;"></div>
		<h1 class="commutitle">내용</h1>
			<textarea name="rv_content" cols="40" rows="10"></textarea>
		<h1 class="commutitle">별점</h1>
			<input type="text" name="rv_star" class="commuarea"/>
			<div class="container" style="height: 10px;"></div>
		<br><br>
		<div class="buttonzone">
			<button type="submit" class="searchbutton">후기 등록</button>
		</div>
	</form>
	
	<button onclick="location.href='getRvList.zo'" class="backbutton">돌아가기</button>
	
	<br><br><br><br><br><br>

</div>

	<!-- 
	<center>
		<h1>후기 등록</h1>
		<a href="logout.do">Log-out</a>
		<hr>
		<form action="insertRv.zo" method="post">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">상품코드번호</td>
					<td align="left"><input type="text" name="p_pno" /></td>
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
					<td align="left"><textarea name="rv_content" cols="40" rows="10"></textarea></td>
				</tr>
				<tr>
					<td bgcolor="orange">별점</td>
					<td align="left"><input type="text" name="rv_star" size="10" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">파일첨부</td>
					<td><input type="file" name="uploadFile"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value=" 후기 등록 " />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="getRvList.zo">후기 목록 가기</a>
	</center> 
	-->

<footer>
<%@ include file="/footer.jsp" %>
</footer>

</body>
</html>