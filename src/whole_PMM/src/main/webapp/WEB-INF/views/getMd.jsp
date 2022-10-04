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
		<form action="updateMd.md" method="post" enctype="multipart/form-data">
			<input name="md_no" type="hidden" value="${md.md_no}" />		<!-- update를 서버로 전송하고 싶을 때 현재 sequence를 hidden 숨겨놓는 것 -->
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange">MD번호</td>
					<td align="left">
					<input name="md_no" type="text" size="38" value="${md.md_no}" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">BM번호</td>
					<td align="left">
					<input name="bm_no" type="text" size="38" value="${md.bm_no}" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">P번호</td>
					<td align="left">
						<textarea name="p_no" cols="40" rows="10">${md.p_no}</textarea>
					</td>
				</tr>
				<tr>
					<td bgcolor="orange" rowspan="1">이미지</td>
					<td align="left">
					<input name="uploadFile" type="file" size="38"/>
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">등록일</td>
					<td align="left">${md.md_regidate}</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 수정" />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertMd.md" >글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteMd.md?md_no=${md.md_no}" >글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getMdList.md" >글목록</a>
	</center>
	
	
</body>
</html>
