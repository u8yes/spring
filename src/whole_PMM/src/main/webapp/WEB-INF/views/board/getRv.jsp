<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>후기 상세</title>
</head>
<body>
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
</body>
</html>
