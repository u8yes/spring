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
		<form action="insertBrandInfo.bi" method="post" enctype="multipart/form-data">	<!-- method는 디폴트가 get방식이다. -->
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="#92bd51;" width="150">bm_no</td>
					<td align="left"><input type="text" name="bm_no" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="150">bi_biznum</td>
					<td align="left"><input type="text" name="bi_biznum" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="150">bi_name</td>
					<td align="left"><input type="text" name="bi_name" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="150">bi_tel</td>
					<td align="left"><input type="text" name="bi_tel" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="150">bi_repr</td>
					<td align="left"><input type="text" name="bi_repr" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="150">bi_commnum</td>
					<td align="left"><input type="text" name="bi_commnum" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="150">bi_addr</td>
					<td align="left"><input type="text" name="bi_addr" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">bi_desc</td>
					<td align="left"><textarea name="bi_desc" cols="40" rows="10"></textarea></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="150">bi_bizlic</td>
					<td align="left"><input type="text" name="bi_bizlic" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" width="150">bi_shop</td>
					<td align="left"><input type="text" name="bi_shop" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">bi_insta</td>
					<td align="left"><input type="text" name="bi_insta" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">bi_sns</td>
					<td align="left"><input type="text" name="bi_sns" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">bi_fax</td>
					<td align="left"><input type="text" name="bi_fax" size="38" /></td>
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
		<a href="getBrandInfoList.bi">글 목록 가기</a>
	</center>
</body>
</html>