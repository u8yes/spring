<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>후기 상세</title>
<!-- <link rel="stylesheet" href="/css/basic.css"> -->
<%@ include file="/resources/css/basic.css" %>

<style>
.img-back{
	width : 40px;
	height: 40px;
	float: left;
	margin-right: 10px;
}

.Commudetailtitle{
	font-family: 'KoPubWorldDotum';
	font-size : 23px;
	border: 0px;
	font-weight: bold;
	padding-top : 5px;
	padding-bottom : 10px;
}

a, p{
	font-family: 'KoPubWorldDotum';
	font-size: 13px;
	padding-right: 30px;
}

.Commudetailproperty{
	padding-bottom: 10px;
}

textarea{
	width: 100%;
	border: 0px;
	font-family: 'KoPubWorldDotum';
}

.updatebu{
	padding: 12px 20px; 
	font-size: 17px;
	border : 1px solid black;
	border-radius: 5px;
	background-color: black;
	color : #FFFFFF;
	font-family: 'MICEGothic Bold';
}

.butarea{
	float: right;
}

.replybox{
	margin-left:20px;
	margin-right:10px;
	width: 80%;
	height: 70px;
}

</style>

</head>
<body>

<header>
<%@ include file="/header.jsp" %>
</header>

<!-- 본문 -->

<div class="outline">

<br><br>

	<div class="c_page">
		<a href="getRvList.zo">
			<img class="img-back" src="img/back.png"/>
		</a>
		<div class="title">후기 상세</div>
	</div>
	
	<hr><br>
	
	<form action="updateRv.zo" method="post">
		<input name="rv_no" type="hidden" value="${rv.rv_no}" />
		<input name="p_pno" type="text" value="${rv.p_pno}" class="Commudetailtitle"/>
		<div class="Commudetailproperty">
			<a>${rv.um_no}</a> &nbsp;&nbsp;&nbsp;&nbsp;<a>ㅣ</a>
			<a>${rv.bm_no}</a> &nbsp;&nbsp;&nbsp;&nbsp;<a>ㅣ</a>
			<a>${rv.rv_date}</a> &nbsp;&nbsp;&nbsp;&nbsp;<a>ㅣ</a>
			<a>별점 : ${rv.rv_star}</a>
		</div>
		
		<hr><br>
		
		<textarea name="rv_content">${rv.rv_content}</textarea>
		
		<hr><br>
		
		<!-- 수정버튼 넣고 페이지 이동 -->
		<div>
			<input type="submit" class="updatebu" value="글 수정">
		</div>
	</form>
	
	<br><br><br>
	
	<h1>댓글</h1>
	
	<hr>
	
	<form action="insertComs.zo" method="post">
		<input type="hidden" name="rv_no" value="${rv.rv_no}" />
		<input type="text" name="bm_no" value="${rv.bm_no}" readonly="readonly"/>
		<input type="text" name="cm_content" class="replybox" />
		<input type="submit" class="updatebu" value=" 댓글 등록 " />
		<input type="reset" class="updatebu" value="취소" onclick="reset()">
	</form>
	
	<hr>
	
	<c:forEach items="${comsList}" var="coms">
		<div class="replyarea">
			<a class="replyw">${coms.cm_no}</a>
			<a class="replyc">${coms.bm_no}</a>
			<a class="replyc">${coms.cm_content}</a>
			<a>${coms.cm_date}</a>
		</div>
	</c:forEach>
	
<br><br><br><br><br><br>

	<button onclick="location.href='getRvList.zo'" class="backbutton">돌아가기</button>
	
	<br><br><br><br><br><br>

</div>

	<%-- 
	<center>
		<h1>후기 상세</h1>
		<a href="logout.do">Log-out</a>
		<hr>
		<form action="updateRv.zo" method="post">
			<input name="rv_no" type="hidden" value="${rv.rv_no}" />
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">상품번호</td>
					<td align="left">${rv.p_pno}</td>
				</tr>
				<tr>
					<td bgcolor="orange">작성자번호</td>
					<td align="left">${rv.um_no}</td>
				</tr>
				<tr>
					<td bgcolor="orange">브랜드번호</td>
					<td align="left">${rv.bm_no}</td>
				</tr>
				<tr>
					<td bgcolor="orange">내용</td>
					<td align="left">
						<textarea name="rv_content" cols="40" rows="10">${rv.rv_content}</textarea>
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">등록일</td>
					<td align="left">${rv.rv_date}</td>
				</tr>
				<tr>
					<td bgcolor="orange">별점</td>
					<td align="left">${rv.rv_star}</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 수정" />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertRv.zo">글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteRv.zo?rv_no=${ rv.rv_no }">글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getRvList.zo">글목록</a>
	</center> 
	--%>

<footer>
<%@ include file="/footer.jsp" %>
</footer>

</body>
</html>
