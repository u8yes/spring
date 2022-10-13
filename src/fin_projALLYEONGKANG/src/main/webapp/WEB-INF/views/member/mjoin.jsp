<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 회원가입</title>
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

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>







<script src="resources/js/jquery-3.6.1.min.js"></script>


<script type="text/javascript">

      function check_pw(){
 
            var pw = document.getElementById('um_password').value;
            var SC = ["!","@","#","$","%","^","&","*","(",")"];
            var check_SC = 0;
 
            if(pw.length < 6 || pw.length>16){
                window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');
                document.getElementById('um_password').value='';
            }
            for(var i=0;i<SC.length;i++){
                if(pw.indexOf(SC[i]) != -1){
                    check_SC = 1;
                }
            }
            if(check_SC == 0){
                window.alert('!,@,#,$,%,^,&,*,(,) 의 특수문자가 들어가 있지 않습니다.')
                document.getElementById('um_password').value='';
            }
            if(document.getElementById('um_password').value !='' && document.getElementById('join_repw').value!=''){
                if(document.getElementById('um_password').value==document.getElementById('join_repw').value){
                    document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
                    document.getElementById('check').style.color='blue';
                  
                  
                }
                else{
                    document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
                    document.getElementById('check').style.color='red';
                   
                  
                }
            }
        }
        

      
      function email_change(){

    	  if(document.userInfo.email.options[document.userInfo.email.selectedIndex].value == '0'){

    	   document.userInfo.um_email2.disabled = true;

    	   document.userInfo.um_email2.value = "";

    	  }

    	  if(document.userInfo.email.options[document.userInfo.email.selectedIndex].value == '9'){

    	   document.userInfo.um_email2.disabled = false;

    	   document.userInfo.um_email2.value = "";

    	   document.userInfo.um_email2.focus();

    	  } else{

    	   document.userInfo.um_email2.disabled = true;

    	   document.userInfo.um_email2.value = document.userInfo.email.options[document.userInfo.email.selectedIndex].value;

    	  }

    	  }
      
      
      
      
      function checkId(){
    	  
  

    	  
          var id = $('#um_mid').val(); //id값이 "id"인 입력란의 값을 저장
          
       
          
          $.ajax({
              url:'./idCheck.do', //Controller에서 요청 받을 주소
              type:'post', //POST 방식으로 전달
              data:{id:id},
              success:function(cnt){ //컨트롤러에서 넘어온 cnt값을 받는다 
                  if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
                      $('.id_ok').css("display","inline-block"); 
                      $('.id_already').css("display", "none");
                      $('.id_disable').css("display", "none");
                  	  var regType1 = /^[A-Za-z0-9]{4,12}$/; 
                    	
                	  if (!regType1.test(document.getElementById('um_mid').value)) {  
                	  $('.id_ok').css("display","none"); 
                	  $('.id_disable').css("display", "inline-block");
                	  $('.id_already').css("display", "none");
                	 
                	 
                	  }
                      
                      
                  } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                      $('.id_already').css("display","inline-block");
                      $('.id_ok').css("display", "none");
                      $('.id_disable').css("display", "none");
                      
                      var regType1 = /^[A-Za-z0-9]{4,12}$/; 
                  	
                	  if (!regType1.test(document.getElementById('um_mid').value)) { 
                		  $('.id_already').css("display","none");
                		  $('.id_ok').css("display","none"); 
                		  $('.id_disable').css("display","inline-block");
                		  
                	  }
                     
                     
                      
                  	  
                	 
                	  
                	 
                	
                  }
              },
              error:function(){
                  alert("에러입니다");
              }
          });
          }
      
          
      
          
          
          function checkEmail(){
        	  
        	  
              var email1 = $('#um_email').val();
            var ech =$('#email').val();
            var email2 = $('#um_email2').val();
           
       
       	 
            function ms(){
           		if(ech==9) {
            	  return  email2; 
        		}else {
        		 	 return  ech; 
        		}; 
           	};
        		
        	var email3 = ms(); 
           	
        		 var um_email = email1+"@"+email3;  
        		 
     
        		
        	
               $.ajax({
                  url:'./emailCheck.do', //Controller에서 요청 받을 주소
                  type:'post', //POST 방식으로 전달
                  data:{um_email:um_email},
                  success:function(cnt){ //컨트롤러에서 넘어온 cnt값을 받는다 
                      if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
                          $('.email_ok').css("display","inline-block"); 
                          $('.email_already').css("display", "none");
                      } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                          $('.email_already').css("display","inline-block");
                          $('.email_ok').css("display", "none");
                       
                          $('#um_email').val(''); 
                          $('#email').val('0'); 
                      }
                  },
                  error:function(){
                      alert("에러입니다");
                  }
              });  
              }
      
      
      
          function  allcheck(){
        	  
        	  var id = document.getElementById( 'um_mid' ).value;
if ( id == '' || id == null ) {
        		  
                  return false;
                  }
                  
var ymd = document.getElementById( 'um_ymd' ).value;
 if ( ymd == '' || ymd == null ) {
    return false;}
        	  
        	  var tel = document.getElementById( 'um_tel' ).value;
         	  if ( tel == '' || tel == null ) {
                  return false;}
        	  
        	  var e1 = document.getElementById( 'um_email' ).value;
          	  
        	  if ( e1 == '' || e1 == null ) {
                  return false;
                  }
        	  
        	  var e2 = document.getElementById( 'um_email2' ).value;
        	  if ( e2 == '' || e2 == null ) {
                  return false;
                  }
        	  
        	  var pw = document.getElementById( 'um_password' ).value;
        	  var pw2 = document.getElementById( 'join_repw' ).value;
        	  
        	  alert(pw);
        	  alert(pw2);
              	  if ( pw != pw2 || pw2 == null ||pw2 == '' || pw == '' || pw == null ) { 
              		    return false;
              		    } 
        	  
        	  var ars = document.getElementById( 'um_ars' ).value;
        	  
  if ( ars == '' || ars == null ) {
        		  
                  return false;}
  
        	  var apc = document.getElementById( 'sample6_postcode' ).value;
        	  if ( apc == '' || apc == null ) {
                  return false;}
        	  
        	  var da = document.getElementById( 'sample6_detailAddress' ).value;
        	  
        	  if ( da == '' || da == null ) {
                  return false;}
   
     
        	  
          }
      
      
      
        
    </script>





</head>
<body>


	<br>
	<br>

	<form name="userInfo" class="mjoin_form form"
		action="insertUserMember.do" onsubmit="return allcheck();"
		method="post">

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
								<th class="ess"><span class="tit">아이디</span></th>
								<td colspan="3">
									<div class="input_box">
										<input type="text" id="um_mid" name="um_mid" class="m_join_id"
											onchange="checkId()" placeholder="" style="width: 200px">
										<!--  -->


										<span class="id_ok">사용 가능한 아이디입니다.</span> <span
											class="id_already">누군가 이 아이디를 사용하고 있어요.</span> <span
											class="id_disable">아이디 형식에 맞지않습니다.</span>
									</div>
									<div class="tip_txt black">아이디는 한번 가입한 이후에는 변경할 수 없습니다.</div>
									<div class="tip_txt ">영문, 숫자로 4~12자로 입력해주세요.</div>
								</td>
							</tr>
							<tr>
								<th class="ess"><span class="tit">비밀번호</span></th>
								<td><input type="password" id="um_password"
									name="um_password" class="m_join_pw" placeholder=""
									autocomplete="new-password" onchange="check_pw()">
									&nbsp; &nbsp;<span id="check"> </span>
									<div class="tip_txt ">숫자, 영문, 특수문자를 포함하여 6자 이상 입력해주세요.</div></td>
								<th class="ess"><span class="tit">비밀번호 확인</span></th>
								<td><input type="password" id="join_repw" name="join_repw"
									class="m_join_repw" placeholder="" autocomplete="new-password"
									onchange="check_pw()"> &nbsp;
									<div class="tip_txt ">동일하게 다시 한 번 입력해주세요.</div></td>
							</tr>
							<tr>
								<th class="ess"><span class="tit">이름</span></th>
								<td>
									<div class="input_box">
										<input type="text" id="um_ars" name="um_ars" value=""
											class="m_join_name" placeholder="" style="width: 120px">
										<div class="tip_txt if_beside">실명을 입력해주세요.</div>
									</div>
								</td>
								<th><span class="tit">생년월일</span></th>
								<td><input type="text"  id="um_ymd"  name="um_ymd"
									class="m_join_birth" value="" placeholder="예)19900101"
									style="width: 120px"></td>
							</tr>
							<tr>
								<th><span class="tit">성별</span></th>
								<td><label class="label_design"><input type="radio"
										name="um_gender" value="M" class="m_join_sex" checked=""><span
										class="txt">남성</span></label> <label class="label_design"><input
										type="radio" name="um_gender" value="F" class="m_join_sex"><span
										class="txt">여성</span></label></td>
								<th><span class="tit"></span></th>
								<td><label class="label_design"></label></td>
							</tr>

							<tr>
								<th class="ess"><span class="tit">휴대폰 번호</span></th>
								<td>
									<div class="input_box">
										<input type="text" name="um_tel" class="m_join_tel"
											placeholder="휴대폰 번호" style="width: 180px"> <input
											type="button" onclick="auth_type_check();"
											class="checkbutton" value="휴대폰 본인인증">
									</div>
									<div class="tip_txt black">주문 등과 관련된 중요한 문자가 발송됩니다.</div>
								</td>
								<th><span class="tit">SMS 수신</span></th>
								<td><label class="label_design"><input type="radio"
										name="um_snsch" value=1 checked=""><span class="txt">수신</span></label>
									<label class="label_design"><input type="radio"
										name="um_snsch" value=2><span class="txt">수신거부</span></label>
									<div class="tip_txt ">비정기적으로 문자 서비스를 제공합니다.</div></td>
							</tr>
							<tr>
								<th class="ess"><span class="tit">이메일 주소</span></th>
								<td colspan="3">
									<div class="input_box mail">
										<input type="text" name="um_email" id="um_email"
											class="input_design js_email_prefix" placeholder="이메일 아이디"
											style="width: 150px"> <span class="mail_icon">＠</span>
										<input type="text" name="um_email2" id="um_email2" value=""
											disabled> <select name="email" id="email"
											onchange="email_change()" class="js_email_suffix_select">
											<option value="0">선택해주세요</option>
											<option value="naver.com">naver.com</option>
											<option value="daum.net">daum.net</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="gmail.com">gmail.com</option>
											<option value="nate.com">nate.com</option>
											<option value="empal.com">empal.com</option>
											<option value="9">직접입력</option>
										</select>
										<!-- 직접입력 선택시 노출 / 그 전에는 숨김 -->
										<input type="text" name="_email_suffix_input"
											style="width: 150px; display: none;"><input
											type="button" onClick="checkEmail()" class="checkbutton"
											value="이메일 중복 확인"> <span class="email_ok">사용
											가능한 이메일입니다.</span> <span class="email_already">누군가 이 이메일을
											사용하고 있어요.</span>
									</div>
									<div class="tip_txt black">주문 등과 관련된 중요한 메일이 발송됩니다.</div> <input
									type="hidden" name="join_email" class="js_join_email" value="">
									<input type="hidden" name="join_email_check"
									class="js_join_email_check" value="">
								</td>
							</tr>
							<tr>
								<th><span class="tit">이메일 수신</span></th>
								<td colspan="3"><label class="label_design"><input
										type="radio" name="um_emailch" value=1 checked=""><span
										class="txt">수신</span></label> <label class="label_design"><input
										type="radio" name="um_emailch" value=2><span
										class="txt">수신거부</span></label>
									<div class="tip_txt if_beside">비정기적으로 메일링 서비스를 제공합니다.</div></td>
							</tr>
							<tr>
								<th class="ess"><span class="tit">주소</span></th>
								<td>
									<div class="input_box">
										<input type="text" name="ad" id="sample6_postcode"
											placeholder="우편번호" class="input_design" value=""
											style="width: 70px" readonly="readonly">&nbsp;&nbsp;<input
											type="button" class="checkbutton"
											onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
									</div>

									<div class="input_full">
										<input type="text" name="addr1" id="sample6_address"
											placeholder="주소" class="input_design" readonly="readonly">
										<input type="text" name="addr2" id="sample6_extraAddress"
											placeholder="참고항목" readonly="readonly" class="input_design">
										<input type="text" name="addr3" id="sample6_detailAddress"
											placeholder="상세주소" class="input_design">


									</div>
								</td>

							</tr>










						</tbody>
					</table>
				</div>

				<br>

				<div class="mjoin_btnbox ">
					<ul>
						<li><a href="#none" onclick="#" class="backbutton">이전단계</a></li>
						<li><input type="submit" value="가입완료">
						<li><a href="insertUserMember.do" class="submitbutton">가입완료</a></li>
					</ul>
				</div>
				<!-- /정보입력 -->
			</div>
		</div>
		<!-- /공통페이지 섹션 -->
	</form>

	<br>
	<br>



</body>
</html>