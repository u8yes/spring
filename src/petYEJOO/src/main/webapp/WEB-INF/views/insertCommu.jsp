<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>커뮤니티등록</title>
</head>
<body>
	<center>
		<h1>커뮤니티 글 등록</h1>
		<a href="logout.do">Log-out</a>
		<hr>
		<form action="insertCommu.zo" method="post">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left"><input type="text" name="cm_title" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">작성자번호</td>
					<td align="left"><input type="text" name="um_no" size="10" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">내용</td>
					<td align="left"><textarea name="cm_desc" cols="40" rows="10"></textarea></td>
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
		<a href="getCommuList.zo">커뮤니티 글 목록 가기</a>
	</center>
</body>
</html>