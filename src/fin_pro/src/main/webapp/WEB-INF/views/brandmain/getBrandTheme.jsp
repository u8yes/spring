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
<jsp:include page="../header.jsp"></jsp:include>
<%-- <%@ include file = "./../adminSidebar.jsp" %> --%>

	<center>
		<h1>글 등록</h1>
		<!-- <a href="logout.do">Log-out</a> -->
		<hr>
		<form action="updateBrandTheme.bt" method="post" enctype="multipart/form-data">
			<!-- <input name="bm_no" type="hidden" value="${brandTheme.bm_no}" />		update를 서버로 전송하고 싶을 때 현재 sequence를 hidden 숨겨놓는 것 -->
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="#92bd51;">브랜드 번호</td>
					<td align="left">
					<input name="bm_no" type="text" size="38" value="${brandTheme.bm_no}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">색상</td>
					<td align="left">
					<input name="bt_color" type="text" size="38" value="${brandTheme.bt_color}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">폰트</td>
					<td align="left">
					<input name="bt_font" type="text" size="38" value="${brandTheme.bt_font}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">로고</td>
					<td align="left">
					<input name="bt_logo" type="text" size="38" value="${brandTheme.bt_logo}" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">파일첨부</td>
					<td><input type="file" name="uploadFile"></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">등록일자</td>
					<td align="left">${brandTheme.bt_date}</td>
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
	

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>