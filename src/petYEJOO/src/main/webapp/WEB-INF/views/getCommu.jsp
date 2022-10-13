<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>커뮤니티 글 상세</title>
</head>
<body>
	<center>
		<h1>커뮤니티 글 상세</h1>
		<a href="logout.do">Log-out</a>
		<hr>
		<form action="updateCommu.zo" method="post">
			<input name="cm_bdno" type="hidden" value="${commu.cm_bdno}" />
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left">
						<input name="cm_title" type="text" value="${commu.cm_title}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">작성자번호</td>
					<td align="left">${commu.um_no}</td>
				</tr>
				<tr>
					<td bgcolor="orange">내용</td>
					<td align="left">
						<textarea name="cm_desc" cols="40" rows="10">${commu.cm_desc}</textarea>
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">등록일</td>
					<td align="left">${commu.cm_regdate}</td>
				</tr>
				<tr>
					<td bgcolor="orange">조회수</td>
					<td align="left">${commu.cm_cnt}</td>
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
				<th bgcolor="orange" width="100">번호</th>
				<th bgcolor="orange" width="100">문의번호</th>
				<th bgcolor="orange" width="150">회원번호</th>
				<th bgcolor="orange" width="150">브랜드번호</th>
				<th bgcolor="orange" width="150">상담일시</th>
				<th bgcolor="orange" width="100">상담상태</th>
			</tr>
			<c:forEach items="${arList}" var="ar"> <!-- items : 데이터를 레코드 단위로 반환, var : 변수 선언할 수 있는 속성 -->
				<tr>
					<td align="center">${ar.ar_no}</td>
					<td align="center">${ar.a_no}</td>
					<td><a href="getAr.zo?ar_no=${ar.ar_no}">${ar.um_no}</a></td>
					<td><a href="getAr.zo?ar_no=${ar.ar_no}">${ar.bm_no}</a></td>
					<td align="center">${ar.ar_date}</td>
					<td align="center">${ar.ar_status}</td>
				</tr>
			</c:forEach>
		</table>
		<br>
		<hr>
		<a href="insertCommu.zo">커뮤니티글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteCommu.zo?a_no=${ ask.a_no }">커뮤니티글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getCommuList.zo">커뮤니티글목록</a>
	</center>
</body>
</html>
