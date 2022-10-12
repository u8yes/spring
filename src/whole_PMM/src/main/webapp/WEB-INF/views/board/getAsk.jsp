<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의글 상세</title>
</head>
<body>
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
					<td align="center">${ar.ar_content}</td>
					<td align="center">${ar.ar_date}<a href="updateAr.zo">수정</a>&nbsp;<a href="deleteAr.zo">삭제</a></td>
				</tr>
			</c:forEach>
		</table>
		<br>
		<hr>
		<a href="insertAsk.zo">문의글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteAsk.zo?a_no=${ ask.a_no }">문의글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getAskList.zo">문의글목록</a>
	</center>
</body>
</html>
