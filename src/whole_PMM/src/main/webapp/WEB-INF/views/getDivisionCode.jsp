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
		<form action="updateDivisionCode.dc" method="post" enctype="multipart/form-data">
			<input name="dc_pcno" type="hidden" value="${divisionCode.dc_pcno}" />		<!-- update를 서버로 전송하고 싶을 때 현재 sequence를 hidden 숨겨놓는 것 -->
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange">dc_pcno</td>
					<td align="left">
					<input name="dc_pcno" type="text" size="38" value="${divisionCode.dc_pcno}" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">dc_name</td>
					<td align="left">
					<input name="dc_name" type="text" size="38" value="${divisionCode.dc_name}" /></td>
				</tr>
				<tr>
					<td bgcolor="orange">dc_desc</td>
					<td align="left">
					<input name="dc_desc" type="text" size="38" value="${divisionCode.dc_desc}" /></td>
				</tr>
				<tr>
					<td bgcolor="orange" rowspan="1">이미지</td>
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
		<a href="insertDivisionCode.dc" >글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteDivisionCode.dc?dc_pcno=${divisionCode.dc_pcno}" >글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getDivisionCodeList.dc" >글목록</a>
	</center>
	
	
</body>
</html>