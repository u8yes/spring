<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>

<style type="text/css">

</style>

</head>
<body>

	<center>
		<h1>글 등록</h1>
		<a href="logout.do">Log-out</a>
		<hr>
		<form action="updateBrandTheme.bt" method="post" enctype="multipart/form-data">
			<input name="bm_no" type="hidden" value="${brandTheme.bm_no}" />		<!-- update를 서버로 전송하고 싶을 때 현재 sequence를 hidden 숨겨놓는 것 -->
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange">bm_no</td>
					<td align="left">
					<input name="bm_no" type="text" size="38" value="${brandTheme.bm_no}" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">bt_no</td>
					<td align="left">
					<input name="bt_no" type="text" size="38" value="${brandTheme.bt_no}" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">bt_color</td>
					<td align="left">
					<input name="bt_color" type="text" size="38" value="${brandTheme.bt_color}" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">bt_color_desc</td>
					<td align="left">
					<input name="bt_color_desc" type="text" size="38" value="${brandTheme.bt_color_desc}" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">bt_font</td>
					<td align="left">
					<input name="bt_font" type="text" size="38" value="${brandTheme.bt_font}" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">bt_font_desc</td>
					<td align="left">
					<input name="bt_font_desc" type="text" size="38" value="${brandTheme.bt_font_desc}" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">등록일</td>
					<td align="left">${brandTheme.bt_regidate}</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 수정" />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertBrandTheme.bt" >글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteBrandTheme.bt?bm_no=${brandTheme.bm_no}" >글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getBrandThemeList.bt" >글목록</a>
	</center>
	
	
</body>
</html>