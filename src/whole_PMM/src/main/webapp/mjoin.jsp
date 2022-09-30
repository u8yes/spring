<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 회원가입</title>
<style>



 body{
	font-family: 'KoPubWorldDotum';
	width:100%;
	height: 100%;
	}


@font-face{
    font-family: 'twayair';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_tway@1.0/twayair.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

@font-face{
    font-family: 'MICEGothic Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/MICEGothic Bold.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
}

@font-face {
    font-family: 'KoPubWorldDotum';
    font-weight: 300;
    font-style: normal;
    src: url('https://cdn.jsdelivr.net/gh/webfontworld/kopus/KoPubWorldDotumLight.eot');
    src: url('https://cdn.jsdelivr.net/gh/webfontworld/kopus/KoPubWorldDotumLight.eot?#iefix') format('embedded-opentype'),
        url('https://cdn.jsdelivr.net/gh/webfontworld/kopus/KoPubWorldDotumLight.woff2') format('woff2'),
        url('https://cdn.jsdelivr.net/gh/webfontworld/kopus/KoPubWorldDotumLight.woff') format('woff'),
        url('https://cdn.jsdelivr.net/gh/webfontworld/kopus/KoPubWorldDotumLight.ttf') format("truetype");
    font-display: swap;
}

.form {
	margin-left: 100px;
	margin-right: 100px;
}

.title{
	font-family: 'MICEGothic Bold';
	font-size: xx-large;
}

.sub_txt{
	float: right;
	font-family: 'KoPubWorldDotum';
}

table{
	border-top : solid 2px #858C74;
	border-bottom : solid 2px #858C74;
	width : 900px;
	border-spacing: 0px;
	
}



th{
	padding : 20px;
	background-color:#92bd51;
	color : white;
	border-top: solid 1px #858C74; 
	border-bottom: solid 1px #858C74;
}

td{
	/* border-top: solid 1px #858C74; */
	padding-left: 10px;
	border-bottom: solid 1px #858C74;
}

.tip_txt{
	font-size: x-small;
}

ul li {
	font-family: 'KoPubWorldDotum';
    list-style: none;
    list-style-type: none;
    display:inline;
    
  }

.checkbutton{
	padding: 2px 8px; 
	background-color: #92bd51;
	border-radius: 5px;
	border : 1px solid ;
	font-size: smail;
}



.backbutton{
	padding: 12px 40px; 
	font-size: 22px;
	border : 1px solid black;
	border-radius: 5px;
	background-color: #FFFFFF;
}

.submitbutton{
	padding: 12px 40px; 
	font-size: 22px;
	border : 1px solid black;
	border-radius: 5px;
	background-color: black;
	color : #FFFFFF;
	
}

</style>

</head>
<body>
<%-- <%@ include file="./header.jsp" %> --%>

<br>
<br>

<form name="#" class="mjoin_form form" action="#" method="post">
    
	<!-- ◆공통페이지섹션 -->
	<div class="mjoin">
	<center>
		<div class="mjoinlayout">
			<!-- ◆공통페이지 타이틀 -->
			<div class="m_page">
				<div class="title">입점문의</div>
			</div>
			<!-- /공통페이지 타이틀 -->
<br>

			<!-- ◆정보입력 -->
			<div class="">
			
				<table>
					
					<tbody>
						<tr>
							<th class="ess"><span class="tit">업체명</span></th>
							<td colspan="3">
								<div class="input_box">
									<input type="text" name="join_id" class="m_join_id" placeholder="" style="width:200px">
								</div>
							</td>
						</tr>
						
						
						<tr>
							<th>업체 연락처</th>
							<td>
								<input type="text" id="t1" size="5"> -
								<input type="text" id="t2" size="6"> -
								<input type="text" id="t3" size="6">
								<div class="tip_txt">휴대폰 이외 유선전화가 필요한 경우 입력해주세요.</div>
							</td>
						</tr>
						
						
						<tr>
							<th class="ess"><span class="tit">이메일 주소</span></th>
							<td colspan="3">
								<div class="input_box mail">
									<input type="text" name="m_join_email" class="input_design js_email_prefix" placeholder="이메일 아이디" style="width:150px">
									<span class="mail_icon">＠</span>
									<select name="m_join_email_select" class="js_email_suffix_select">
										<option value="">선택해주세요</option>
										<option value="naver.com">naver.com</option>
										<option value="daum.net">daum.net</option>
										<option value="hanmail.net">hanmail.net</option>
										<option value="gmail.com">gmail.com</option>
										<option value="nate.com">nate.com</option>
										<option value="empal.com">empal.com</option>
										<option value="direct">직접입력</option>
									</select>
									<!-- 직접입력 선택시 노출 / 그 전에는 숨김 -->
									<input type="text" name="_email_suffix_input" class="input_design js_email_suffix_input" style="width:150px; display: none;">
									<a href="#none" class="checkbutton">이메일 중복체크</a>
								</div>
								<div class="tip_txt black">주문 등과 관련된 중요한 메일이 발송됩니다.</div>
								<input type="hidden" name="join_email" class="js_join_email" value="">
								<input type="hidden" name="join_email_check" class="js_join_email_check" value="">
							</td>
						</tr>
						
						<tr>
							<th class="ess"><span class="tit">문의 제목</span></th>
							<td colspan="3">
								<div class="input_box">
									<input type="text" name="join_id" class="m_join_id" placeholder="" style="width: 380px;">
								</div>
							</td>
						</tr>
						
						
						<tr>
							<th>문의 내용</th>
							<td>
								<textarea cols="60" rows="4" id="memo" name="memo" placeholder="자기를 소개하는 글을 쓰세요."></textarea>
							</td>
						</tr>
						
						<tr>
							<th>첨부파일</th>
							<td>
								<input name="uploadFile" type="file" size="38"/><br>
							</td>
						</tr>
						
						
					</tbody>
				</table>
			
			
			</div>

	<br>

			<div class="mjoin_btnbox ">
				<ul>
					<li><a href="#none" onclick="#" class="backbutton">이전</a></li>
					<li><a href="#none" class="submitbutton" >등록</a></li>
				</ul>
			</div>
			<!-- /정보입력 -->
		</div>
	</center>
	</div>
	<!-- /공통페이지 섹션 -->
</form>

<br>
<br>

<%-- <%@ include file="./footer.jsp" %> --%>

</body>
</html>