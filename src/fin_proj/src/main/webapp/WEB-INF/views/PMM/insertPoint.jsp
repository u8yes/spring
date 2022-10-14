<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>포인트등록</title>

</head>
<body>
<%@ include file = "./../header.jsp" %>
<%-- <%@ include file = "./../adminSidebar.jsp" %> --%>


	<center>
		<h1>포인트 등록</h1>
		<hr>
		<form action="insertPoint.do" method="post" >	<!-- method는 디폴트가 get방식이다. -->
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="#92bd51;" width="150">포인트번호</td>
					<td align="left"><input type="text"  size="38" value="자동생성"/></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">포인트명</td>
					<td align="left"><input type="text" name="pp_name" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">포인트 설명</td>
					<td align="left"><textarea name="pp_desc" cols="40" rows="5" ></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value=" 포인트 등록 " />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="getPointList.do">포인트 목록 가기</a>
	</center>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<%@ include file = "./../footer.jsp" %>

</body>
</html>