<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 페이지</title>
<link rel="stylesheet" href="css/basic.css">
<%@ include file="/resources/css/basic.css" %>

<style>
.totalpricebox{
	font-family: 'KoPubWorldDotum';
	border : solid 2px #858C74;
	width : 100%;
	display: flex;
  	flex-wrap: wrap;
  	justify-content: center;
  	padding-top : 20px;
  	padding-bottom: 20px;
}

label {
	font-family: 'KoPubWorldDotum';
	font-size : 14px;
}

.ordertable{
	text-align: center;
}

td{
	/* border-top: solid 1px #858C74; */
}

</style>

</head>
<body>

<header>
<jsp:include page="../header.jsp"></jsp:include>
</header>

<div class ="outline">
<br><br>
<div class="title">주문상품</div>
<hr>
<br>
<table class="ordertable table">
<thead>
<tr>
<th>No.</th>
<th>상품 및 옵션 정보</th>
<th>상품 금액</th>
<th>배송비</th>
<th>포인트</th>
</tr>
</thead>
<tbody>
	<form action="getBuy1.sj" method="post">
<tr>
<td>${buy.o_odno}</td>
<td>${buy.o_pquantity}</td>
<td>${buy.p_price}</td>
<td>${buy.d_price}</td>
<td>${buy.pa_point}</td>
</tr>
</tbody>
</table>
<%-- <input name="d_dno" type="hidden" value="${buy.d_dno}" />
<input name="p_pno" type="hidden" value="${buy.p_pno}" />
<input name="po_total" type="hidden" value="${buy.po_total}" />
<input name="pa_no" type="hidden" value="${buy.pa_no}" />
<input name="cpa_no" type="hidden" value="${buy.cpa_no}" />
<input name="po_drequest" type="hidden" value="${buy.po_drequest}" />
<input name="po_drequest" type="hidden" value="${buy.po_price}" />
<input name="po_ptype" type="hidden" value="${buy.po_ptype}" />
<input name="po_name" type="hidden" value="${buy.po_name}" />
<input name="po_number" type="hidden" value="${buy.po_number}" />
<input name="po_addr" type="hidden" value="${buy.po_addr}" />
<input name="po_status" type="hidden" value="${buy.po_status}" /> --%>





<br>

<div class = "container totalpricebox">
	<div class="price">총 상품금액<span class="price_num"><strong>${buy.p_price}</strong>원</span></div>
		
					<div class="price total_num">총 주문금액<span class="price_num"><strong class="ID_total_price">${buy.p_price}</strong>원</span></div>
			</div>
			
	<br>
	<br>
	<!-- 주문자 orderer 줄여서 ord로 적음 -->
	<div class="title">주문자 정보</div>
	<hr>
	<br>
	<table>
<colgroup>
	<col width="150"><col width="*"><col width="150"><col width="*">
</colgroup>
<tbody>
	<tr>
		<th class="ess"><span class="tit">주문자이름</span></th>
			<td>
				<input type="text" name="o_odno" class="ord_name" placeholder="">
					<div class="tip_txt "></div>
		<th><span class="tit">전화번호</span></th>
			<td>
				<input type="text" name="po_number" class="ord_tel" placeholder="전화번호" style="width:180px">
					<div class="tip_txt "></div>
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
						<option value="daum.net">daum.net</option>
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
				
	<br>
	<br>
	
	<!-- 수령인 정보는 recipient의 약자인 reci로 적어뒀습니다 -->		
	<div class="title">수령인 정보</div>
		<hr>
		<br>
				
	<table>
		<colgroup>
		<col width="150"><col width="*"><col width="150"><col width="*">
		</colgroup>
	<tbody>
	<tr>
	<th class="ess"><span class="tit">배송지 선택</span></th>
	<td> 
		<label><input type="radio" name="po_addr" class="order_adress_select" value="memberadress" checked="checked"> 기본 주소</label>
	</td>
	</tr>
	<tr>
		<th class="ess"><span class="tit">수령인 이름</span></th>
			<td style="width:130px;">
				<input type="text" name="po_name" class="reci_name" placeholder="이름을 입력해주세요.">			
		<th style="border-top : solid 1px #858C74;"><span class="tit">수령인 전화번호</span></th>
			<td style="border-top : solid 1px #858C74;">
				<input type="text" name="po_number" class="reci_tel" placeholder="전화번호" style="width:180px;">
				<div class="tip_txt"> 배송 관련 연락을 받을 수 있는 연락처를 적어주세요.</div>
			</td>
	</tr>
	<tr>
		<th class="ess"><span class="tit">수령인 주소</span></th>
			<td>
				<div class="input_box">
					<input type="text" name="reci_zonecode" id="_zonecode" class="input_design" value="" style="width:100px" readonly="readonly">
					<a href="#none" onclick="new_post_view(); return false;" class="checkbutton">주소검색</a>
				</div>
				<div class="input_full">
					<input type="text" name="reci_address_doro" id="_addr_doro" class="input_design" placeholder="도로명 주소" style="width:400px;"readonly="readonly"><br>
					<input type="text" name="reci_address2" id="_addr2" class="input_design" placeholder="나머지 주소" style="width:400px;">
				</div>
			</td>					
	</tr>
	<tr>
		<th class="ess"><span class="tit">배송메세지</span></th>
			<td colspan="3">
				<div class="input_box mess">
				<select name="reci_mess_select" class="reci_mess_select">
<br>
				<input type="text" name="reci_mess_text" class="reci_mess_text" placeholder="40자 이내로 입력해주세요." style="width:300px">
				</div>
	</tbody>
	</table>
		
		
		<br>
		<br>
		
	<div class="title">결제 방식</div>
		<hr>
		<br>
	<table>
	<colgroup>
	<col width="150"><col width="*"><col width="150"><col width="*">
	</colgroup>
		<tbody>
			<tr>
				<th class="ess"><span class="tit">결제 수단</span></th>
				<td> 
					<label><input type="radio" name="paymentselect" class="payment_select" value="depositnobank"> 무통장 입금 </label>
					<label><input type="radio" name="paymentselect" class="payment_select" value="paycard">신용 카드</label>
					<div class="tip_txt"> 카드 결제는 결제하기를 누르면 진행창이 팝업됩니다. </div>
				</td>
			</tr>
			<tr>
				<th class="ess"><span class="tit">무통장 입금</span></th>
				<td colspan="3">
				<div class="input_box mess">
				<select name="reci_mess_select" class="reci_mess_select">
					<option value="">입금 은행 선택</option>
						<option value="1">국민 은행</option>
						<option value="2">기업 은행</option>
						<option value="3">농협</option>
						<option value="4">우리 은행</option>
						<option value="5">신한 은행</option>
						<option value="6">하나 은행</option>
						<option value="7">sc 제일 은행</option>
				</select>
				</div>	
				<th class="ess"><span class="tit">입금자 명</span></th>
				<td>
					<input type="text" name="pay_name" class="pay_name" placeholder="정확한 입금자 명을 입력해주세요." style="width:300px;">
		</tbody>
	
	</table>
		
	
		<br>
		<br>
		<br>
		<button type="button" class="backbutton" onclick="product/getProduct.do">뒤로가기</button>
		<a href="gotomain.do">결제</a>
		
		<!-- 다음 페이지 넘어가면 주문번호 및 입금할 은행과 계좌번호 출력 -->
		
		<br><br><br><br><br><br><br><br><br><br>		
</div>




<footer>
<jsp:include page="../footer.jsp"></jsp:include>
</footer>			

</body>
</html>