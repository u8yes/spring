<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>새글등록</title>


</head>
<body>
	<center>
		<h1>글 등록</h1>
		<hr>
		
		<form action="insertKeep.sj" method="post" enctype="multipart/form-data">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left"><input type="text" name="um_no" /></td>
				</tr>
				
				<tr>
					<td bgcolor="orange">작성자</td>
					<td align="left"><input type="text" name="p_pno" size="10" /></td>
				</tr>
								<tr>
					<td bgcolor="orange">작성자</td>
					<td align="left"><input type="text" name="bm_no" size="10" /></td>
				</tr>

				<tr>
					<td colspan="2" align="center">
						<input type="submit" value=" 새글 등록 " />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="getKeepList.sj">글 목록 가기</a>
	</center>
</body>
</html>