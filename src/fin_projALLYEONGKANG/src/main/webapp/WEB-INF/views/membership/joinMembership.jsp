<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>멤버쉽등록</title>
<%@ include file="/resources/css/basic.css" %>
</head>
<body>
<header>
<%@ include file="./../header.jsp" %>
</header>
<main>
<div>
<div class="outline">
	<div class="ch-pw">
	<p class= "title" align="center"> 멤버쉽 가입 안내</p>
	<h4 align="center">멤버쉽 가입 후 배송비 면제되는 혜택을 받아보세요!</h4>
	<p align="center"> 가입신청 후 일정 기간 심사 후에 멤버쉽 전환 됩니다.</p>
	<% String um_no = (String)session.getAttribute("userNo");	%>
	<%=um_no %>	
	<a href = "upgradeMembershipList.do">dd</a>
	<p>${um_no}</p>
	
<br>
		<form align="center" method="post" action="joinMembership.do" enctype="multipart/form-data">
			<input name="ms_grade" value="<%=um_no%>" type="hidden">
			<input name="" class="checkbutton" type="submit" value="멤버쉽 신청하기">
		</form>
<br>
	</div>
</div>
</div>
</main>

<footer>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<%@ include file="./../footer.jsp" %>
</footer>
</body>
</html>