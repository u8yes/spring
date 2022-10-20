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
		<form action="updateCode.co" method="post" enctype="multipart/form-data">
			<!-- <input name="p_pno" type="hidden" value="${code.p_pno}" />		update를 서버로 전송하고 싶을 때 현재 sequence를 hidden 숨겨놓는 것 -->
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="#92bd51;">p_pno</td>
					<td align="left">
					<input name="p_pno" type="text" size="38" value="${code.p_pno}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">dc_pcno</td>
					<td align="left">
					<input name="dc_pcno" type="text" size="38" value="${code.dc_pcno}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">c_name</td>
					<td align="left">
						<textarea name="c_name" cols="40" rows="10">${code.c_name}</textarea>
					</td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">c_ex</td>
					<td align="left">
						<textarea name="c_ex" cols="40" rows="10">${code.c_ex}</textarea>
					</td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;" rowspan="1">이미지</td>
					<td align="left">
					<input name="uploadFile" type="file" size="38"/>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 수정" />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertCode.co" >글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteCode.co?p_pno=${code.p_pno}" >글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getCodeList.co" >글목록</a>
	</center>
	
	
</body>
</html>