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
		<a href="logout.do">Log-out</a>
		<hr>
		<form action="insertDivisionCode.dc" method="post" enctype="multipart/form-data">	<!-- method는 디폴트가 get방식이다. -->
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="#92bd51;" width="150">dc_pcno</td>
					<td align="left"><input type="text" name="dc_pcno" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">dc_name</td>
					<td align="left"><input type="text" name="dc_name" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">dc_ex</td>
					<td align="left"><textarea name="dc_ex" cols="40" rows="10"></textarea></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">파일첨부</td>
					<td><input type="file" name="uploadFile"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value=" 새글 등록 " />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="getDivisionCodeList.dc">글 목록 가기</a>
	</center>
</body>
</html>