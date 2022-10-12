<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록</title>

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
</style>


</head>
<body>
	<%-- <%@ include file="header.jsp" %> --%>

	<br>
	<br>

	<form name="#" class="mjoin_form form" action="insertShoppingbas.do" method="post" enctype="multipart/form-data">

		<!-- ◆공통페이지섹션 -->
		<div class="mjoin">
			<div class="mjoinlayout">
				<!-- ◆공통페이지 타이틀 -->
				<div class="m_page">
					<div class="title">상품등록</div>
				</div>
				<!-- /공통페이지 타이틀 -->
				<br>

				<!-- ◆정보입력 -->
				<div class="m_join_tit">
					<span class="tit">기본정보</span><br> <span class="sub_txt">체크된
						항목은 필수 항목입니다. 꼭 입력해주시기 바랍니다.</span>
				</div>
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
								<th class="ess"><span class="tit">장바구니 번호</span></th>
								<td colspan="3"><input type="text" name="s_no"
									class="m_join_pw" placeholder="" autocomplete="">
									<div class="tip_txt ">장바구니 번호를 입력해주세요.</div></td>
							</tr>



							<tr>
								<th class="ess"><span class="tit">회원번호</span></th>
								<td><input type="text" name="um_no" class="m_join_pw"
									placeholder="" autocomplete="">
									<div class="tip_txt ">회원번호 입력해주세요.</div></td>
								<th class="ess"><span class="tit">상품코드번호</span></th>
								<td><input type="text" name="p_pno" class="m_join_repw"
									placeholder="" autocomplete="">
									<div class="tip_txt ">상품코드번호 입력해주세요.</div></td>
							</tr>
							

							<tr>
								<th class="ess"><span class="tit">주문 수량</span></th>
								<td><input type="text" name="s_quantity" class="m_join_pw"
									placeholder="" autocomplete="">
									<div class="tip_txt ">주문수량 입력해주세요.</div></td>
								
							</tr>
							
						</tbody>
					</table>
				</div>

				<br>

				<div class="mjoin_btnbox ">
					<ul>
						
						<!-- <li><input type="submit" value="취소" class="backbutton"></li> -->
						<li><input type="submit" value="등록" class="submitbutton"></li>
						

					</ul>
				</div>
				<!-- /정보입력 -->
			</div>
		</div>
		<!-- /공통페이지 섹션 -->
	</form>

	<br>
	<br>

	<%-- <%@ include file="footer.jsp" %> --%>
</body>
</html>