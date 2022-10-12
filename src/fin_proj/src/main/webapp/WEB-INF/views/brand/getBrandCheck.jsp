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
		<form action="updateBrandCheck.bc" method="post" enctype="multipart/form-data">
			<input name="ab_no" type="hidden" value="${brandCheck.ab_no}" />		<!-- update를 서버로 전송하고 싶을 때 현재 sequence를 hidden 숨겨놓는 것 -->
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange">ab_no</td>
					<td align="left">
					<input name="ab_no" type="text" size="38" value="${brandCheck.ab_no}" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">bm_no</td>
					<td align="left">
					<input name="bm_no" type="text" size="38" value="${brandCheck.bm_no}" /></td>
				</tr>
				<tr>
					<td bgcolor="orange" rowspan="2">이미지</td>
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
		<a href="insertBrandCheck.bc" >글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteBrandCheck.bc?ab_no=${brandCheck.ab_no}" >글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getBrandCheckList.bc" >글목록</a>
	</center>
	
	
</body>
</html>