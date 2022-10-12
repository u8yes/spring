<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>
</head>
<body>
	<center>
		<h1>글 상세</h1>
		<hr>

		<form action="updateKeep.do" method="post">
			<input name="k_no" type="hidden" value="${keep.k_no}" />
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left">
						<input name="um_no" type="text" value="${keep.um_no}" />
					</td>
				</tr>
					<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left">
						<input name="um_no" type="text" value="${keep.k_no}" />
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">내용</td>
					<td align="left">
						<textarea name="p_pno" cols="40" rows="10">${keep.p_pno}</textarea>
					</td>
				</tr>
								<tr>
					<td bgcolor="orange">작성자</td>
					<td align="left">${keep.bm_no}</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 수정" />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertKeep.sj">글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteKeep.sj?k_no=${ keep.k_no }">글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getKeepList.sj">글목록</a>
	</center>
</body>
</html>
