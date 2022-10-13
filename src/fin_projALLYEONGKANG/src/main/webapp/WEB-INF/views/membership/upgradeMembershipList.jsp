<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버쉽 승인</title>
</head>
<body>
<%@ include file="/resources/css/basic.css" %>
</head>
<body>
<header>
<%@ include file="./../header.jsp" %>
</header>
<main>
<div class="outline">
	<table>
		<tr>
		<th>회원번호</th>
		<th>아이디</th>
		<th>닉네임</th>
		<th>멤버십 신청상태</th>
		<th>멤버십 신청 승인</th>
		</tr>
		<c:forEach items="${upgradeMembershipList}" var="uml">
		<tr>
		<td>${uml.um_no}</td>
		<td>${uml.um_mid}</td>
		<td>${uml.um_ars}</td>
		<td>${uml.ms_grade}</td>
		<td><form align="center" method="post" action="upgrademembership.do">
			<input type="hidden" name="um_no" value="${uml.um_no}">
			<input name="ms_grade" class="checkbutton" type="submit" value="멤버십승인">
		</form></td>
		</tr>
		</c:forEach>
	</table>

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


</div>	
</main>
</body>
</html>