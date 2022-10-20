<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>


</head>
<body>
	<center>
		<h1>글 등록</h1>
		<a href="logout.do">Log-out</a>
		<hr>
		<form action="updateBrandInfo.bi" method="post" enctype="multipart/form-data">
			<!-- <input name="bm_no" type="hidden" value="${brandInfo.bm_no}" />		update를 서버로 전송하고 싶을 때 현재 sequence를 hidden 숨겨놓는 것 -->
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="#92bd51;">bm_no</td>
					<td align="left">
					<input name="bm_no" type="text" size="38" value="${brandInfo.bm_no}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">bi_biznum</td>
					<td align="left">
					<input name="bi_biznum" type="text" size="38" value="${brandInfo.bi_biznum}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">bi_name</td>
					<td align="left">
					<input name="bi_name" type="text" size="38" value="${brandInfo.bi_name}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">bi_tel</td>
					<td align="left">
					<input name="bi_tel" type="text" size="38" value="${brandInfo.bi_tel}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">bi_repr</td>
					<td align="left">
					<input name="bi_repr" type="text" size="38" value="${brandInfo.bi_repr}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">bi_commnum</td>
					<td align="left">
					<input name="bi_commnum" type="text" size="38" value="${brandInfo.bi_commnum}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">bi_addr</td>
					<td align="left">
					<input name="bi_addr" type="text" size="38" value="${brandInfo.bi_addr}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">bi_desc</td>
					<td align="left">
						<textarea name="bi_desc" cols="40" rows="10">${brandInfo.bi_desc}</textarea>
					</td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">bi_bizlic</td>
					<td align="left">
					<input name="bi_bizlic" type="text" size="38" value="${brandInfo.bi_bizlic}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">bi_shop</td>
					<td align="left">
					<input name="bi_shop" type="text" size="38" value="${brandInfo.bi_shop}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">bi_insta</td>
					<td align="left">
					<input name="bi_insta" type="text" size="38" value="${brandInfo.bi_insta}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">bi_sns</td>
					<td align="left">
					<input name="bi_sns" type="text" size="38" value="${brandInfo.bi_sns}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">bi_fax</td>
					<td align="left">
					<input name="bi_fax" type="text" size="38" value="${brandInfo.bi_fax}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" rowspan="2">이미지</td>
					<td align="left">
					<input name=uploadFile type="file" size="38"/><br></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 수정" />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertBrandInfo.bi" >글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteBrandInfo.bi?bm_no=${brandInfo.bm_no}" >글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getBrandInfoList.bi" >글목록</a>
	</center>
		
</body>
</html>