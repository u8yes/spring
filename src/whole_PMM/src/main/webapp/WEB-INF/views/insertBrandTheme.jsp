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
		<form action="insertBrandTheme.bt" method="post" enctype="multipart/form-data">	<!-- method는 디폴트가 get방식이다. -->
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="150">bm_no</td>
					<td align="left"><input type="text" name="bm_no" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">bt_no</td>
					<td align="left"><input type="text" name="bt_no" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">bt_color</td>
					<td align="left"><input type="text" name="bt_color" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">bt_color_desc</td>
					<td align="left"><input type="text" name="bt_color_desc" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">bt_font</td>
					<td align="left"><input type="text" name="bt_font" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">bt_font_desc</td>
					<td align="left"><input type="text" name="bt_font_desc" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">파일첨부</td>
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
		<a href="getBrandThemeList.bt">글 목록 가기</a>
	</center>
</body>
</html>