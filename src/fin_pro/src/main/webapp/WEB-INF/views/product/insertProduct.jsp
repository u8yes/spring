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
<jsp:include page="../header.jsp"></jsp:include>

	<br>
	<br>

	<form name="#" class="mjoin_form form" action="insertProduct.do" method="post" enctype="multipart/form-data">

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
								<th class="ess"><span class="tit">상품코드</span></th>
								<td colspan="3"><input type="text" name="p_pno"
									class="m_join_pw" placeholder="" autocomplete="">
									<div class="tip_txt ">상품코드를 입력해주세요.</div></td>
							</tr>



							<tr>
								<th class="ess"><span class="tit">상품명</span></th>
								<td><input type="text" name="p_name" class="m_join_pw"
									placeholder="" autocomplete="">
									<div class="tip_txt ">상품명을 입력해주세요.</div></td>
								<th class="ess"><span class="tit">단가</span></th>
								<td><input type="text" name="p_price" class="m_join_repw"
									placeholder="" autocomplete="">
									<div class="tip_txt ">단가 입력해주세요.</div></td>
							</tr>
							

<tr>
								<th class="ess"><span class="tit">배송할인</span></th>
								<td><input type="text" name="p_deldis" class="m_join_pw"
									placeholder="" autocomplete="">
									<div class="tip_txt ">할인을 입력해주세요.</div></td>
								<th class="ess"><span class="tit">브랜드 번호</span></th>
								<td><input type="text" name="bm_no" class="m_join_repw"
									placeholder="" autocomplete="" >
									<div class="tip_txt ">브랜드 번호 입력해주세요.</div></td>
							</tr>
							<tr>
								<th class="ess"><span class="tit">수량</span></th>
								<td><input type="text" name="p_count" class="m_join_pw"
									placeholder="" autocomplete="">
									<div class="tip_txt ">수량을 입력해주세요.</div></td>
								<th class="ess"><span class="tit">판매가</span></th>
								<td><input type="text" name="p_disprice" class="m_join_repw"
									placeholder="" autocomplete="">
									<div class="tip_txt ">판매가 입력해주세요.</div></td>
							</tr>

							<tr>
								<th class="ess"><span class="tit">판매 시작일</span></th>
								<td>
									<div class="input_box">
										<input type="date" name="p_start" value=""
											class="m_join_name" placeholder="" style="width: 120px">
										<!-- readonly="" -->
									</div>
								</td>
								<th><span class="tit">판매 종료일</span></th>
								<td><input type="date" name="p_end" class="m_join_birth"
									value="" placeholder="" style="width: 120px"> <!-- readonly="" -->
								</td>
							</tr>



							<tr>
								<th><span class="tit">상품상세정보</span></th>
								<td colspan="3"><textarea name="p_detail"></textarea> <br>
									<input type="file" name="uploadFile2"></td>
							</tr>

							


							<tr>

								<th class="ess"><span class="tit">배송제약사항</span></th>
								<td colspan="3"><textarea name="p_delivery"></textarea></td>
							</tr>



							<tr>
								<th><span class="tit">A/S 가능여부</span></th>
								<td><label class="label_design"><input type="radio"
										name="p_as" value="Y" checked><span
										class="txt">가능</span></label> <label class="label_design"><input
										type="radio" name="p_as" value="N"><span
										class="txt">불가</span></label></td>
								<th><span class="tit">반품 가능여부</span></th>
								<td><label class="label_design"><input type="radio"
										name="p_ox" value="Y" checked><span
										class="txt">가능</span></label> <label class="label_design"><input
										type="radio" name="p_ox" value="N"><span
										class="txt">불가</span></label></td>
							</tr>



							<tr>
								<th><span class="tit">제품메인이미지</span></th>
								  <td><input type="file" name="uploadFile"></td> 
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
			</div>
		</div>
		
	</form>

	<br>
	<br>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>