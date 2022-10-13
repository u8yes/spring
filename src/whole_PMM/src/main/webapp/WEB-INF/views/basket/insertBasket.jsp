<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>새글등록</title>
</head>
<body>
	<center>
		
									
		
		
		<hr>
		<form action="insertBasket.ba" method="post" enctype="multipart/form-data">	<!-- method는 디폴트가 get방식이다. -->
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="#92bd51;" width="150">s_no</td>
					<td align="left"><input type="text" name="s_no" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">um_no</td>
					<td align="left"><input type="text" name="um_no" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">p_pno</td>
					<td align="left"><input type="text" name="p_pno" size="38" /></td>
				</tr>
				<tr>
					<td bgcolor="#92bd51;">s_quantity</td>
					<td align="left"><textarea name="s_quantity" cols="40" rows="10"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value=" 새글 등록 " />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="getBasketList.ba">글 목록 가기</a>
	</center>
</body>
</html>