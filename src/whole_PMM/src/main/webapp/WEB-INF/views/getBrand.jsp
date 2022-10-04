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
			<input name="bt_no" type="hidden" value="${brandTheme.bt_no}" />		<!-- update를 서버로 전송하고 싶을 때 현재 sequence를 hidden 숨겨놓는 것 -->
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange">bm_no</td>
					<td align="left">
					<input name="bm_no" type="text" size="38" value="${brandTheme.bm_no}" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">주소</td>
					<td align="left">
					<input name="b_corp_addr" type="text" size="38" value="${brandTheme.b_corp_addr}" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">설명</td>
					<td align="left">
						<textarea name="b_desc" cols="40" rows="10">${brandTheme.b_desc}</textarea>
					</td>
				</tr>
				<tr>
					<td bgcolor="orange" rowspan="2">이미지</td>
					<td align="left">
					<input name="uploadFile" type="file" size="38"/><br></td>
				</tr>
				<tr>
					<td align="left">${brandTheme.b_image}</td>
				</tr>
				<tr>
					<td bgcolor="orange">사진</td>
					<td align="left"><img src="./brandUpload/${brandTheme.b_image}" width="300"/></td>
				</tr>
				<tr>
					<td bgcolor="orange">등록일</td>
					<td align="left">${brandTheme.b_regdate}</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 수정" />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertBrand.do" >글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteBrand.do?b_no=${brandTheme.b_no}" >글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getBrandList.do" >글목록</a>
	</center>
	
	
</body>
</html>
