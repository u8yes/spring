<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



		<!-- 검색 시작 -->
		<form action="mlist.do" method="post">
			<table border="1" cellpadding="0" cellspacing="0" width="700">
				<tr>
					<td align="right">
						<select name="searchCondition">
							<c:forEach items="${conditionMap}" var="option">
								<option value="${option.value}">${option.key}</option>
							</c:forEach>
						</select>
					<input type="text" name="searchKeyword">
					<input type="submit" value = "검색">
					</td>
				</tr>
			</table>

		</form>
		<!-- 검색 종료 -->







	<table border="1" cellspaceing = "0" cellpadding="0">
		<tr>
			<th>회원번호</th>
			<th>아이디</th>
			<th>이름</th>
		</tr>


<c:forEach items="${userMemberList}" var="member">
		<tr>	
			<td>${member.um_no} </td>
			<td><a href="mdetail.do?um_no=${member.um_no}">${member.um_mid}</a></td>
			<td>${member.um_ars}</td>
			</tr>
				</c:forEach>
	</table>



</body>
</html>