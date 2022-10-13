<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지 - 회원조회</title>

<link rel="stylesheet" href="css/basic.css">
<%@ include file="/resources/css/basic.css"%>

<style>
.title {
	font-family: 'MICEGothic Bold';
	font-size: 25px;
	color: #858C74;
}

.sub_txt {
	float: right;
	font-family: 'KoPubWorldDotum';
	font-size: 15px;
}

.intabletxt {
	font-family: 'KoPubWorldDotum';
	font-size: 15px;
}
</style>

</head>
<body>

	<header>
		<%@ include file="./../header.jsp"%>
	</header>

	<%@ include file="./../site/adminSidbar.jsp"%>

	<div class="outline">

		<div class="contents">
		
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
		
		
			<form name="#" class="mupdate" action="#" method="post">

				<!-- ◆공통페이지섹션 -->
				<div class="mupdate_m">
					<div class="mupdatelayout">
						<!-- ◆공통페이지 타이틀 -->
						<div>
							<a class="title">회원조회</a>
						</div>



						<!-- /공통페이지 타이틀 -->
						<br>
						<hr class="hrline">

						<!-- ◆정보입력 -->
						<!-- <div class="m_update_tit"><br><span class="sub_txt">정보 수정 후 수정하기 버튼을 누르시면 정보가 수정됩니다.</span></div> -->
						<div class="m_updateform">
							<table>
								<tr>
									<th><span class="tit">회원 번호</span></th>
									<th><span class="tit">아이디</span></th>
									<th><span class="tit">이름</span></th>
									<th><span class="tit">전화번호</span></th>
									<th><span class="tit">주소</span></th>
								</tr>

								<c:forEach items="${userMemberList}" var="member">
									<tr>
										<td>${member.um_no}</td>
										<td><a href="mdetail.do?um_no=${member.um_no}">${member.um_mid}</a></td>
										<td>${member.um_ars}</td>
										<td>${member.um_tel}</td>
										<td>${member.um_addr}</td>
									</tr>
								</c:forEach>

							</table>

	<!-- 검색 시작 -->

		<!-- 검색 종료 -->



							
							<br> <br> <br>



							<div class="btnbox">
								<ul>
									<li><a href="#none" class="submitbutton">수정하기</a></li>
									<li><a href="#none" onclick="#" class="cancelbutton">삭제하기</a></li>
								</ul>
							</div>

						</div>
					</div>
			</form>

			<br> <br> <br> <br> <br> <br>

		</div>
	</div>

	<footer>
		<%@ include file="./../footer.jsp"%>
	</footer>

</body>
</html>