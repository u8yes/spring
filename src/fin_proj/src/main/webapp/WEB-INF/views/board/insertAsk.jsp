<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문의등록</title>
</head>
<body>
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
				<!-- <tr>
					<td bgcolor="orange">파일첨부</td>
					<td><input type="file" name="uploadFile"></td>
				</tr> -->
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
</body>
</html>