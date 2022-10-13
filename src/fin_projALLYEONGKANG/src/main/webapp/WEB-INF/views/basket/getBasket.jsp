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

		<hr>
		<form action="updateBasket.ba" method="post" enctype="multipart/form-data">
			<!-- <input name="p_pno" type="hidden" value="${code.p_pno}" />		update를 서버로 전송하고 싶을 때 현재 sequence를 hidden 숨겨놓는 것 -->
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="#92bd51;">s_no</td>
					<td align="left">
					<input name="s_no" type="text" size="38" value="${basket.s_no}" /></td>
				</tr>
				<tr>
					<td bgcolor=#92bd51;>um_no</td>
					<td align="left">
					<input name="um_no" type="text" size="38" value="${basket.um_no}" /></td>
				</tr>
				<tr>
					<td bgcolor=#92bd51;>p_pno</td>
					<td align="left">
					<input name="p_pno" type="text" size="38" value="${basket.p_pno}" /></td>
				</tr>
				<tr>
					<td bgcolor=#92bd51;>s_quantity</td>
					<td align="left">
					<input name="s_quantity" type="text" size="38" value="${basket.s_quantity}" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 수정" />
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertBasket.ba" >글등록</a>&nbsp;&nbsp;&nbsp; 
		<a href="deleteBasket.ba?s_no=${basket.s_no}" >글삭제</a>&nbsp;&nbsp;&nbsp;
		<a href="getBasketList.ba" >글목록</a>
	</center>
				
	
</body>
</html>