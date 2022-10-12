<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문하기</title>

</head>
<body>
<table border="1"  width ="500" height="300" align = "center" >
    <tr bgcolor="blue" align ="center">
	<p>주문상품</p>
	<hr>
    </tr>
    <tr align = "center">
	<td>브랜명</td>
	<td>NO.</td>
	<td>상품명</td>
	<td>옵션</td>
	<td>수량</td>
	<td>가격</td>
	<td>배송비</td>
    </tr>
    <tr>
    <td rowspan="2" align = "center">A</td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
<!-- 	<td rowspan="2" align = "center">3000</td>
    </tr>
    <tr>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td> -->
	
    </tr>
    <tr>
	<td align = "center">C</td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
    </tr>
</table>
<hr>
<div border="1"  width ="500" height="300" align = "center">
	<tr>
	<td>상품금액</td>+<td>배송비</td>-<td>할인금액</td>=<td>총금액</td>
	
	</tr>

</div>
<hr>
<!-- <table>
	<input type="text" name="join_id" class="m_join_id" placeholder="" style="width:200px" readonly>
	<h1>+</h1>
	<input type="text" name="join_id" class="m_join_id" placeholder="" style="width:200px" readonly>
	<h1>-</h1>
	<input type="text" name="join_id" class="m_join_id" placeholder="" style="width:200px" readonly>
	<h1>=</h1>
	<input type="text" name="join_id" class="m_join_id" placeholder="" style="width:200px" readonly>
</table border="1" width ="500" height="300" align = "center">
<table> -->
<p>주문자정보</p>
<hr>

<table>
<colgroup>
	<col width="150"><col width="*"><col width="150"><col width="*">
</colgroup>
<tbody>
	<tr>
		<th class="ess"><span class="tit">주문자이름</span></th>
							<td>
								<input type="password" name="join_pw" class="m_join_pw" placeholder="" autocomplete="new-password">
								<div class="tip_txt ">
								</div>
							<th><span class="tit">전화번호</span></th>
									<td>
										<input type="text" name="join_hometel" class="m_join_hometel" placeholder="전화번호" style="width:180px">
										<div class="tip_txt ">휴대폰 이외 유선전화가 필요한 경우 입력해주세요.</div>
									</td>
									</tr>
									<tr>
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
								</div>
							</td>
						</tr>
					</tbody>
				</table>

<hr>			
<p>배송전송</p>
<hr>
					<table>
					<colgroup>
						<col width="150"><col width="*"><col width="150"><col width="*">
					</colgroup>
					<tbody>
						    
								<tr>
								      <th><span class="tit">배송지선택</span></th>
                                <td>
                                      <label class="label_design"><input type="radio" name="_sex" value="M" onclick="return false;" class="m_join_sex"><span class="txt">주문자와동일</span></label>
                                      <label class="label_design"><input type="radio" name="_sex" value="F" onclick="return false;" class="m_join_sex"><span class="txt">새로운주소</span></label>
                                </td>
						
						
						<tr>
							<th class="ess"><span class="tit">받는분 이름</span></th>
							<td>
								<input type="password" name="join_pw" class="m_join_pw" placeholder="" autocomplete="new-password">
							</td>
							<th class="ess"><span class="tit">받는분 전화번호</span></th>
							<td>
								<input type="password" name="join_repw" class="m_join_repw" placeholder="" autocomplete="new-password">
							</td>
						</tr>
						<tr>
						
							   
						
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
							
							
							<tr>
							<th class="ess"><span class="tit">배송메세지</span></th>
							<td colspan="3">
								<div class="input_box mail">
									<select name="m_join_email_select" class="js_email_suffix_select">
										<option value="">선택해주세요</option>
																					<option value="1">1</option>
																					<option value="2">2</option>
																					<option value="3">3</option>
																					<option value="4">4</option>
																					<option value="5">5</option>
																					<option value="6">6</option>
																					<option value="7">6</option>
																			</select>
									<input type="text" name="m_join_email" class="input_design js_email_prefix" placeholder="이메일 아이디" style="width:150px">

																	</tbody>
				</table>
				
				<hr>
		<button type="button">뒤로가기</button>
		<button type="button">결제</button>
			

<br>
<br>
<br>
<br>
<br>
<br>

</body>
</html>