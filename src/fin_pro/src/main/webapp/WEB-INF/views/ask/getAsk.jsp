<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의글 상세</title>
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
<jsp:include page="../header.jsp"></jsp:include>
</header>

	<!-- 본문 -->
	
<div class="outline">

<br><br>

	<div class="c_page">
		<a href="getAskList.zo">
			<img class="img-back" src="img/back.png"/>
		</a>
		<div class="title">문의글 상세</div>
	</div>
	
	<hr><br>
	
	<form action="updateAsk.zo" method="post">
		<input name="a_no" type="hidden" value="${ask.a_no}" />
		<input name="a_title" type="text" value="${ask.a_title}" class="Commudetailtitle"/>
		<div class="Commudetailproperty">
			<a>${ask.um_no}</a> &nbsp;&nbsp;&nbsp;&nbsp;<a>ㅣ</a>
			<a>${ask.bm_no}</a> &nbsp;&nbsp;&nbsp;&nbsp;<a>ㅣ</a>
			<a>${ask.a_date}</a> &nbsp;&nbsp;&nbsp;&nbsp;<a>ㅣ</a>
			<a>문의 상태 : ${ask.a_status}</a>
		</div>
		
		<hr><br>
		
		<textarea name="a_content">${ask.a_content}</textarea>
		
		<hr><br>
		
		<!-- 수정버튼 넣고 페이지 이동 -->
		<div>
			<input type="submit" class="updatebu" value="글 수정" />
		</div>
	</form>
	
	<br><br><br>
	
	<h1>댓글</h1>
	
	<hr>
	
	<form action="insertAr.zo" method="post">
		<input name="a_no" type="hidden" value="${ask.a_no}" />
		<input type="text" name="um_no" value="${ask.um_no}" readonly="readonly"/>
		<input type="text" name="bm_no" value="${ask.bm_no}" readonly="readonly"/>
		<input type="text" name="ar_content" class="replybox"/>
		<input type="text" name="ar_status" value="${1}"/>
		<input type="submit" class="updatebu" value=" 댓글 등록 " />
		<input type="reset" class="updatebu" value="취소" onclick="reset()">
	</form>
	
	<hr>
	
	<c:forEach items="${arList}" var="ar">
		<div class="replyarea">
			<a class="replyw">${ar.ar_no}</a>
			<a class="replyc">${ar.ar_content}</a>
			<a class="replyc">${ar.ar_status}</a>
			<a>${ar.ar_date}</a>
		</div>
	</c:forEach>
	
<br><br><br><br><br><br>

	<button onclick="location.href='getAskList.zo'" class="backbutton">돌아가기</button>
	
	<br><br><br><br><br><br>

</div>

	<%-- 
	<center>
		<h1>문의글 상세</h1>
		<a href="logout.do">Log-out</a>
		<hr>
		<form action="updateAsk.zo" method="post">
			<input name="a_no" type="hidden" value="${ask.a_no}" />
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left">
						<input name="a_title" type="text" value="${ask.a_title}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">작성자번호</td>
					<td align="left">${ask.um_no}</td>
				</tr>
				<tr>
					<td bgcolor="orange">브랜드번호</td>
					<td align="left">${ask.bm_no}</td>
				</tr>
				<tr>
					<td bgcolor="orange">내용</td>
					<td align="left">
						<textarea name="a_content" cols="40" rows="10">${ask.a_content}</textarea>
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">등록일</td>
					<td align="left">${ask.a_date}</td>
				</tr>
				<tr>
					<td bgcolor="orange">문의상태</td>
					<td align="left">${ask.a_status}</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 수정" />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<form action="insertAr.zo" method="post">
			<input name="a_no" type="hidden" value="${ask.a_no}" />
			<table>
				<tr>
					<th>댓글달기</th>
				</tr>
				<tr>
					<td bgcolor="orange">작성자번호</td>
					<td><input type="text" name="um_no" value="${ask.um_no}" readonly="readonly"/></td>
					<td bgcolor="orange">브랜드번호</td>
					<td><input type="text" name="bm_no" value="${ask.bm_no}" readonly="readonly"/></td>
				</tr>
				<tr>
					<td><input type="text" name="ar_content" size="50"/></td>
					<td>상담상태<input type="text" name="ar_status" size="10"/></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value=" 댓글 등록 " />
						<input type="reset" value="취소" onclick="reset()">
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<table border="1" cellpadding="0" cellspacing="0" width="800">
			<tr>
				<th bgcolor="orange" width="50">번호</th>
				<th bgcolor="orange" width="50">상담상태</th>
				<th bgcolor="orange" width="600">댓글내용</th>
				<th bgcolor="orange" width="100">날짜</th>
			</tr>
			<c:forEach items="${arList}" var="ar"> <!-- items : 데이터를 레코드 단위로 반환, var : 변수 선언할 수 있는 속성 -->
				<tr>
					<td align="center">${ar.ar_no}</td>
					<td align="center">${ar.ar_status}</td>
					<td align="center">
						<form action="updateAr.zo" name="up" method="post">
							<input name="a_no" type="hidden" value="${ar.a_no}">
							<input name="ar_no" type="hidden" value="${ar.ar_no}">
							<input name="ar_status" type="hidden" value="2">
							<textarea rows="" cols="" name="ar_content">${ar.ar_content}</textarea>
							<input type="submit" value="수정">
						</form>
					</td>
					<td align="center">${ar.ar_date}<a href="javascript:void(0)" onclick="document.up.submit()">수정</a>&nbsp;<a href="deleteAr.zo?ar_no=${ar.ar_no}&a_no=${ar.a_no}">삭제</a></td>
				</tr>
			</c:forEach>
		</table>
		<br>
		<hr>
		<a href="insertAsk.zo">문의글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteAsk.zo?a_no=${ ask.a_no }">문의글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getAskList.zo">문의글목록</a>
	</center> 
	--%>
	
<footer>
<jsp:include page="../footer.jsp"></jsp:include>
</footer>
	
</body>
</html>
