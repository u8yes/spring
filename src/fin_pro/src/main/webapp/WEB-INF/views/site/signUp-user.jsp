<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 회원가입</title>
<%@ include file = "/resources/css/basic.css" %>

</head>
<body>
<header>
<%@ include file="header.jsp" %>
</header>
<div class="outline">
<form name="#" class="mjoin_form form" action="#" method="post">
    
	<!-- ◆공통페이지섹션 -->
	<div class="mjoin">
		<div class="mjoinlayout">
			<!-- ◆공통페이지 타이틀 -->
			<div class="m_page">
				<div class="title">회원가입</div>
			</div>
			<!-- /공통페이지 타이틀 -->
<br>

			<!-- ◆정보입력 -->
			<div class="m_join_tit"><span class="tit">기본정보</span><br><span class="sub_txt">체크된 항목은 필수 항목입니다. 꼭 입력해주시기 바랍니다.</span></div>
			<div class="m_form">
				<table>
					<colgroup>
						<col width="150"><col width="*"><col width="150"><col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th class="ess"><span class="tit">아이디</span></th>
							<td colspan="3">
								<div class="input_box">
									<input type="text" name="join_id" class="m_join_id" placeholder="" style="width:200px">
									<button onclick='#none' class="checkbutton">아이디 중복체크</button>
									<input type="hidden" name="join_id_check" class="m_join_id_check" value="">
								</div>
								<div class="tip_txt black">아이디는 한번 가입한 이후에는 변경할 수 없습니다.</div>
								<div class="tip_txt ">
									영문, 숫자로 4자 이상 입력해주세요.	</div>
							</td>
						</tr>
						<tr>
							<th class="ess"><span class="tit">비밀번호</span></th>
							<td>
								<input type="password" name="join_pw" class="m_join_pw" placeholder="" autocomplete="new-password">
								<div class="tip_txt ">
									숫자, 영문을 포함하여 4자 이상 입력해주세요.								</div>
							</td>
							<th class="ess"><span class="tit">비밀번호 확인</span></th>
							<td>
								<input type="password" name="join_repw" class="m_join_repw" placeholder="" autocomplete="new-password">
								<div class="tip_txt ">동일하게 다시 한 번 입력해주세요.</div>
							</td>
						</tr>
						<tr>
							<th class="ess"><span class="tit">이름</span></th>
                            <td>
                                <div class="input_box">
                                     <input type="text" name="join_name" value="" class="m_join_name" placeholder="" style="width:120px" readonly="">
                                     <div class="tip_txt if_beside">실명을 입력해주세요.</div>
                                </div>
                            	</td>
							          <th><span class="tit">생년월일</span></th>
                                <td>
                                      <input type="text" name="_birth" class="m_join_birth" value="" placeholder="" style="width:120px" readonly="">
                                </td>
                            	</tr>
								<tr>
								      <th><span class="tit">성별</span></th>
                                <td>
                                      <label class="label_design"><input type="radio" name="_sex" value="M" onclick="return false;" class="m_join_sex"><span class="txt">남성</span></label>
                                      <label class="label_design"><input type="radio" name="_sex" value="F" onclick="return false;" class="m_join_sex"><span class="txt">여성</span></label>
                                </td>
                                	<th><span class="tit">전화번호</span></th>
									<td>
										<input type="text" name="join_hometel" class="m_join_hometel" placeholder="전화번호" style="width:180px">
										<div class="tip_txt ">휴대폰 이외 유선전화가 필요한 경우 입력해주세요.</div>
									</td>
									</tr>
									<tr>
							<th class="ess"><span class="tit">휴대폰 번호</span></th>
                            <td>
                                <div class="input_box">
                                        <input type="text" name="join_tel2" class="m_join_tel" placeholder="휴대폰 번호" style="width:180px" readonly="">
                                        <input type="button" onclick="auth_type_check();" class="checkbutton" value="휴대폰 본인인증">
                                </div>
                                <div class="tip_txt black">주문 등과 관련된 중요한 문자가 발송됩니다.</div>
                            </td>
							<th><span class="tit">SMS 수신</span></th>
							<td>
								<label class="label_design"><input type="radio" name="join_smssend" value="Y" checked=""><span class="txt">수신</span></label>
								<label class="label_design"><input type="radio" name="join_smssend" value="N"><span class="txt">수신거부</span></label>
								<div class="tip_txt ">비정기적으로 문자 서비스를 제공합니다.</div>
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
									<button onclick='#none' class="checkbutton">아이디 중복체크</button>
								</div>
								<div class="tip_txt black">주문 등과 관련된 중요한 메일이 발송됩니다.</div>
								<input type="hidden" name="join_email" class="js_join_email" value="">
								<input type="hidden" name="join_email_check" class="js_join_email_check" value="">
							</td>
						</tr>
						<tr>
							<th><span class="tit">이메일 수신</span></th>
							<td colspan="3">
								<label class="label_design"><input type="radio" name="m_join_emailsend" value="Y" checked=""><span class="txt">수신</span></label>
								<label class="label_design"><input type="radio" name="m_join_emailsend" value="N"><span class="txt">수신거부</span></label>
								<div class="tip_txt if_beside">비정기적으로 메일링 서비스를 제공합니다.</div>
							</td>
						</tr>
						<tr>
								<th class="ess"><span class="tit">주소</span></th>
								<td>
									<div class="input_box">
										<input type="text" name="join_zonecode" id="_zonecode" class="input_design" value="" style="width:70px" readonly="readonly">
										<a href="#none" onclick="new_post_view(); return false;" class="adresssbutton">주소검색</a>
									</div>

									<div class="input_full">
										<input type="text" name="join_address_doro" id="_addr_doro" class="input_design" placeholder="도로명 주소" readonly="readonly">
										<input type="text" name="join_address2" id="_addr2" class="input_design" placeholder="나머지 주소">
									</div>
								</td>
									<th class="ess"><span class="tit">지번 주소</span></th>
								<td>
									<div class="input_box" style="display:none;">
										<input type="text" name="join_zip1" id="_post1" class="input_design" value="" style="width:50px" readonly="readonly">
										<span class="dash">-</span>
										<input type="text" name="join_zip2" id="_post2" class="input_design" value="" style="width:50px" readonly="readonly">
										<div class="tip_txt if_beside">구 우편번호</div>
									</div>
									<div class="input_full">
										<input type="text" name="join_address1" id="_addr1" class="input_design" placeholder="지번 주소" readonly="readonly">
									</div>
									<div class="tip_txt">주소검색을 통해 자동으로 입력됩니다.</div>
								</td>
							</tr>
																	</tbody>
				</table>
			</div>

	<br>

			<div class="mjoin_btnbox ">
				<ul>
					<li><a href="#none" onclick="#" class="backbutton">이전단계</a></li>
					<li><a href="#none" class="submitbutton" >가입완료</a></li>
				</ul>
			</div>
			<!-- /정보입력 -->
		</div>
	</div>
	<!-- /공통페이지 섹션 -->
</form>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<%@ include file="footer.jsp" %>

</body>
</html>