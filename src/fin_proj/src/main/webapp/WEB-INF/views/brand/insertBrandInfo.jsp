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
					<td bgcolor="orange" width="150">bm_no</td>
					<td align="left"><input type="text" name="bm_no" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="orange" width="150">bi_no</td>
					<td align="left"><input type="text" name="bi_no" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="orange" width="150">bi_biznum</td>
					<td align="left"><input type="text" name="bi_biznum" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="orange" width="150">bi_compname</td>
					<td align="left"><input type="text" name="bi_compname" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="orange" width="150">bi_comptel</td>
					<td align="left"><input type="text" name="bi_comptel" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="orange" width="150">bi_repr</td>
					<td align="left"><input type="text" name="bi_repr" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="orange" width="150">bi_compurnum</td>
					<td align="left"><input type="text" name="bi_compurnum" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="orange" width="150">bi_addr</td>
					<td align="left"><input type="text" name="bi_addr" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">bi_desc</td>
					<td align="left"><textarea name="bi_desc" cols="40" rows="10"></textarea></td>
				</tr>
				<tr>
					<td bgcolor="orange" width="150">bi_bizlic</td>
					<td align="left"><input type="text" name="bi_bizlic" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="orange" width="150">bi_shop</td>
					<td align="left"><input type="text" name="bi_shop" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">bi_snsinsta</td>
					<td align="left"><input type="text" name="bi_snsinsta" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">bi_snsaso</td>
					<td align="left"><input type="text" name="bi_snsaso" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">bi_fax</td>
					<td align="left"><input type="text" name="bi_fax" size="38" /></td>
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
		<a href="getBrandInfoList.bi">글 목록 가기</a>
	</center>
</body>
</html>