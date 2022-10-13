<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>새글등록</title>

</head>
<body>
<%@ include file = "./../header.jsp" %>
<%-- <%@ include file = "./../adminSidebar.jsp" %> --%>



	<center>
		<h1>글 등록</h1>
		<a href="logout.do">Log-out</a>
		<hr>
		<form action="insertBrandTheme.bt" method="post" enctype="multipart/form-data">	<!-- method는 디폴트가 get방식이다. -->
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="#92bd51;" width="150">브랜드번호</td>
					<td align="left"><input type="text" name="bm_no" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">색</td>
					<td align="left"><input type="text" name="bt_color" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">폰트</td>
					<td align="left"><input type="text" name="bt_font" size="38" /></td>
				</tr>
				
				<tr>
					<td bgcolor="#92bd51;">로고 업로드</td>
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
		<a href="getBrandThemeList.bt">글 목록 가기</a>
	</center>
	
	
	

<%@ include file = "./../footer.jsp" %>
</body>
</html>