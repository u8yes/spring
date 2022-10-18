<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../header.jsp"></jsp:include>

<meta charset="UTF-8">
<title>개인정보 조회</title>
<style>
body {
	font-family: 'KoPubWorldDotum';
	width: 100%;
	height: 100%;
}

@font-face {
	font-family: 'twayair';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_tway@1.0/twayair.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'MICEGothic Bold';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/MICEGothic Bold.woff2')
		format('woff2');
	font-weight: 700;
	font-style: normal;
}

@font-face {
	font-family: 'KoPubWorldDotum';
	font-weight: 300;
	font-style: normal;
	src:
		url('https://cdn.jsdelivr.net/gh/webfontworld/kopus/KoPubWorldDotumLight.eot');
	src:
		url('https://cdn.jsdelivr.net/gh/webfontworld/kopus/KoPubWorldDotumLight.eot?#iefix')
		format('embedded-opentype'),
		url('https://cdn.jsdelivr.net/gh/webfontworld/kopus/KoPubWorldDotumLight.woff2')
		format('woff2'),
		url('https://cdn.jsdelivr.net/gh/webfontworld/kopus/KoPubWorldDotumLight.woff')
		format('woff'),
		url('https://cdn.jsdelivr.net/gh/webfontworld/kopus/KoPubWorldDotumLight.ttf')
		format("truetype");
	font-display: swap;
}

.form {
	margin-left: 100px;
	margin-right: 100px;
}

.title {
	font-family: 'MICEGothic Bold';
	font-size: xx-large;
}

.sub_txt {
	float: right;
	font-family: 'KoPubWorldDotum';
}

table {
	border-top: solid 2px #858C74;
	border-bottom: solid 2px #858C74;
	width: 100%;
	border-spacing: 0px;
}

th {
	padding: 20px;
	background-color: #92bd51;
	color: white;
	border-top: solid 1px #858C74;
	border-bottom: solid 1px #858C74;
}

td {
	/* border-top: solid 1px #858C74; */
	padding-left: 10px;
	border-bottom: solid 1px #858C74;
}

.tip_txt {
	font-size: x-small;
}

ul li {
	font-family: 'KoPubWorldDotum';
	list-style: none;
	list-style-type: none;
	display: inline;
}

.checkbutton {
	padding: 2px 8px;
	background-color: #92bd51;
	border-radius: 5px;
	border: 1px solid;
	font-size: smail;
}

.backbutton {
	padding: 12px 40px;
	font-size: 22px;
	border: 1px solid black;
	border-radius: 5px;
	background-color: #FFFFFF;
}

.submitbutton {
	padding: 12px 40px;
	font-size: 22px;
	border: 1px solid black;
	border-radius: 5px;
	background-color: black;
	color: #FFFFFF;
}

.id_ok {
	color: #008000;
	display: none;
}

.id_already {
	color: #6A82FB;
	display: none;
}

.id_disable {
	color: #6A82FB;
	display: none;
}

.email_ok {
	color: #008000;
	display: none;
}

.email_already {
	color: #6A82FB;
	display: none;
}
</style>

<script src="resources/js/jquery-3.6.1.min.js"></script>

<script>
	$(document).ready(
			function() {

				var checkGender = '${member.um_gender}';
				$("input[name=um_gender]").filter(
						"input[value='" + checkGender + "']").attr("checked",
						true);

				var checkSNS = '${member.um_snsch}';
				$("input[name=um_snsch]").filter(
						"input[value='" + checkSNS + "']")
						.attr("checked", true);

				var checkemailch = '${member.um_emailch}';
				$("input[name=um_emailch]").filter(
						"input[value='" + checkemailch + "']").attr("checked",
						true);

			})
</script>



</head>
<body>


	<br>
	<br>

	<form name="userInfo" class="mjoin_form form" method="post">

		<!-- ◆공통페이지섹션 -->
		<div class="mjoin">
			<div class="mjoinlayout">
				<!-- ◆공통페이지 타이틀 -->
				<div class="m_page">
					<div class="title">개인정보 조회</div>
				</div>
				<!-- /공통페이지 타이틀 -->
				<br>

				<!-- ◆정보입력 -->
				<div class="m_join_tit"></div>
				<div class="m_form">
					<table>
						<colgroup>
							<col width="150">
							<col width="*">
							<col width="150">
							<col width="*">
						</colgroup>
						<tbody>
							<tr>
								<th class="ess"><span class="tit">아이디</span></th>
								<td colspan="3">
									<div class="input_box">
										<p>${member.um_mid}</p>


									</div>
								</td>
							</tr>

							<tr>
								<th class="ess"><span class="tit">이름</span></th>
								<td colspan="3">
									<div class="input_box">
										<p>${member.um_ars}</p>

									</div>
								</td>
							</tr>

							<tr>
								<th class="ess"><span class="tit">생년월일</span></th>
								<td colspan="3">
									<div class="input_box">
										<p>${member.um_ymd}</p>
									</div>
								</td>
							</tr>
							<tr>
								<th><span class="tit">성별</span></th>
								<td colspan="3"><label class="label_design"><input
										type="radio" name="um_gender" value="M" class="m_join_sex"
										onclick="return(false);"><span class="txt">남성</span></label> <label
									class="label_design"><input type="radio"
										name="um_gender" value="F" class="m_join_sex"
										onclick="return(false);"><span class="txt">여성</span></label></td>


							</tr>

							<tr>
								<th class="ess"><span class="tit">휴대폰 번호</span></th>
								<td colspan="3">
									<div class="input_box">
										<p>${member.um_tel }</p>
									</div>
									<div class="tip_txt black">주문 등과 관련된 중요한 문자가 발송됩니다.</div>
								</td>
							</tr>
							<tr>

								<th><span class="tit">SMS 수신</span></th>
								<td colspan="3"><label class="label_design"><input
										type="radio" name="um_snsch" value=1 onclick="return(false);"><span
										class="txt">수신</span></label> <label class="label_design"><input
										type="radio" name="um_snsch" value=2 onclick="return(false);"><span
										class="txt">수신거부</span></label>
									<div class="tip_txt ">비정기적으로 문자 서비스를 제공합니다.</div></td>
							</tr>
							<tr>
								<th class="ess"><span class="tit">이메일 주소</span></th>
								<td colspan="3">
									<div class="input_box mail">
										<p>${member.um_email}</p>

									</div>

								</td>
							</tr>
							<tr>
								<th><span class="tit">이메일 수신</span></th>
								<td colspan="3"><label class="label_design"><input
										type="radio" name="um_emailch" value=1
										onclick="return(false);"><span class="txt">수신</span></label> <label
									class="label_design"><input type="radio"
										name="um_emailch" value=2 onclick="return(false);"><span
										class="txt">수신거부</span></label>
									<div class="tip_txt if_beside">비정기적으로 메일링 서비스를 제공합니다.</div></td>
							</tr>
							<tr>
								<th class="ess"><span class="tit">주소</span></th>
								<td>
									<div class="input_box">

										<p>${member.um_addr}</p>

									</div>
								</td>

							</tr>
						</tbody>
					</table>
				</div>
<div>
<input type="hidden" value="${member.um_no}" name="um_no">

</div>





				<br>

				<div class="mjoin_btnbox ">
					<ul>
						<li><input type="submit" value="회원정보수정"
							onclick="javascript: userInfo.action='updateMemberPage.do';" /></li>
						<li><input type="submit" value="회원탈퇴"
							onclick="javascript: userInfo.action='mdelete.do';" /></li>
					</ul>
				</div>
				<!-- /정보입력 -->
			</div>
		</div>
		<!-- /공통페이지 섹션 -->
	</form>

	<br>
	<br>

<jsp:include page="../footer.jsp"></jsp:include>


</body>
</html>