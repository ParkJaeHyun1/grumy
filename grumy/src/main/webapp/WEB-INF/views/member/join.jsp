<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!--PG크로스브라우징필수내용 시작-->
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<!--PG크로스브라우징필수내용 끝-->
<!--해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!--해당 CSS는 쇼핑몰 전체 슬라이드 배너에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. -->
<script type="text/javascript" src="/ec-js/common.js"></script>
<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="/yangji/js/jquery.bxslider.min.js"></script>
<link rel="stylesheet"
href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />
<link rel="shortcut icon"
	href="/web/upload/favicon_20170717165926.ico" />
<script type="text/javascript"
	src="/app/Eclog/js/cid.generate.js?vs=3d0b473968a0ec4ec41e3bf59df3aa51"></script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<link rel="stylesheet" type="text/css" 
href="/ind-script/optimizer.php?filename=tZWxcsMgDIZ3J2ufQ5e0d907d2qeALBqKwGJIriL3740ydA0S882Izr0gX6hHxglIOz2CWKSIZkACVVKcghOFT6TcAYnIQhva-AJ_rMfXafiSybhzsp5ZmLJee6h3kyY5qVmYz3-SkW3KYpJwTDjfvf6DLFYT24z5uBBe9z0qDQw6In45QIN0hePEDBYTHAU4vm8WomUDNYouQv8oRdLgdfAisCqZl1gV6gBNIv4TLEBeUTfAlufXV9cC32jGYhNxhYqG9uA-jDRq4HvPGZFEXwLcesuNx87GR6OdDWv6l2rgI5fBdO0tWf11N8Z53zmu8myCuhgWFfx41tDJNUS34yeMDspSxR8ZN-G_QMdcouR__uvLb5wKNVNdZR4GClG4uEH_g0&type=css&k=c8951a22d67e6928bfd2473018d48b09764ee7ce&t=1547093551" />
<link rel="stylesheet" type="text/css"
href="/ind-script/optimizer.php?filename=rY9BDsIwDAQfUK68wyog8R43cVOXxI7iBNTfU4r4AO1lL6sdzcKkiYBc14yKAYrQpb9fIbchsuummiKYp86TcRCwB8sNnBkk9S0SRFy0VXAqz3XPKtmd1voMO7mJ0kAFZmXpVvjIJf3PXVDCzBt-IvRUDlH8XcdKQctyiN6oWvfoYc4GLFYxFEwv9oHqVvXf_JDf&type=css&k=1e2335c9cbed207b4adaf5b11233170ae273ee5d&t=1566806466" />
<!--  다음 주소 찾기  -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
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
                  //  document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                   // document.getElementById("sample6_extraAddress").value = '';
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
<!-- 필수 입력창 확인  -->
<script type="text/javascript">
function inCheck(f){
	if(f.member_id.value.length==0){
		alert("아이디를 입력하세요");
		f.id.focus();
		return false;
	}
	
	if(f.passwd.value.length==0){
		alert("비밀번호를 입력하세요");
		f.passwd.focus();
		return false;
	}
	if(f.user_passwd_confirm.value.length==0){
		alert("비밀번호 확인울 입력하세요");
		f.repasswd.focus();
		return false;
	}

	if(f.passwd.value != f.user_passwd_confirm.value){
		alert("비밀번호가 일치하지 않습니다.");
		f.passwd.value="";
		f.user_passwd_confirm.value="";
		f.passwd.focus();
		return false;
	}
	
	if(f.name.value.length==0){
		alert("이름을 입력하세요");
		f.mname.focus();
		return false;
	}
	if(f.phone.value.length==0){
		alert("전화번호를 입력하세요");
		f.phone.focus();
		return false;
	}
	if(f.email.value.length==0){
		alert("email을 입력하세요");
		f.email.focus();
		return false;
	}

}
</script>

<title>grumy</title>
		
</head>
<body id="cmn">

<!-- 메인 메뉴 -->


<script>
// 메인메뉴에 마우스오버시 하위메뉴 나타남
$(".gnb > li").mouseenter(function(){
    //$(this).find(".gnb_sub").stop().slideDown(200);
    $(this).find(".gnb_sub").stop().css('display','block');
});
$(".gnb > li").mouseleave(function(){
    $(this).find(".gnb_sub").css("display","none");
});  

// 메인메뉴에 마우스오버시 하위메뉴 나타남 *커뮤니티 이동 양지수정*
$(".myList > .xans-layout-boardinfo").mouseenter(function(){
    //$(this).find(".gnb_sub").stop().slideDown(200);
    $(this).find(".gnb_sub").stop().css('display','block');
});
$(".myList > .xans-layout-boardinfo").mouseleave(function(){
    $(this).find(".gnb_sub").css("display","none");
}); 
</script>
	<!-- //상단카테고리 -->
<form id="joinForm" name="joinForm" action="createproc"
	method="post" enctype="multipart/form-data">
<div id="container">
	<div id="contents">
		<div class="titleArea">
			<h2>JOIN</h2>
			<h3>회원 가입</h3>
		</div>

	<h3>기본정보</h3>
	<p class="required ">
	<img src="" alt="필수" />
	필수입력사항
	</p>
<div class="ec-base-table typeWrite" style="margin-top: -11px;">
<table border="1" summary="">
	<caption>회원 기본정보</caption>
	<colgroup>
	<col style="width: 150px;" />
	<col style="width: auto;" />
	</colgroup>
<tbody>
	<tr>
		<th scope="row">아이디 
		<img src="" alt="필수" /></th>
		<td>
		<input id="member_id" name="member_id"
			fw-filter="isFill&isFill&isMin[4]&isMax[16]&isIdentity"
			fw-label="아이디" fw-msg="" class="inputTypeText" placeholder=""
			value="" type="text" />
			<span id="idMsg"></span> 
			(영문소문자/숫자,4~16자)
		</td>
	</tr>
	<tr>
		<th scope="row">비밀번호 
		<img src="" alt="필수" /></th>
		<td>
		<input id="passwd" name="passwd"
			fw-filter="isFill&isMin[4]&isMax[16]" fw-label="비밀번호" fw-msg=""
			autocomplete="off" maxlength="16" 0="disabled" value=""
			type="password" /> 
		(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)
		</td>
	</tr>
	<tr>
		<th scope="row">비밀번호 확인 
		<img src="" alt="필수" /></th>
		<td>
		<input id="user_passwd_confirm"
			name="user_passwd_confirm" fw-filter="isFill&isMatch[passwd]"
			fw-label="비밀번호 확인" fw-msg="비밀번호가 일치하지 않습니다." autocomplete="off"
			maxlength="16" 0="disabled" value="" type="password" /> 
		<span id="pwConfirmMsg"></span>
		</td>
	</tr>
	<tr>
		<th scope="row" id="nameTitle">이름 
		<img src="" alt="필수" /></th>
		<td>
		<span id="nameContents">
		<input id="name" name="name" fw-filter="isFill&isMax[30]" fw-label="이름"
		fw-msg="" class="ec-member-name" placeholder="" maxlength="30"
		value="" type="text" />
		</span> 
		</td>
	</tr>
	<tr class="">
		<th scope="row">주소 
		<img src="/"
		 class="displaynone" alt="필수" />
		</th>
		<td>
		<input id="postcode1" name="postcode1" fw-filter="isLengthRange[1][14]" fw-label="우편번호1" fw-msg=""
		class="inputTypeText" placeholder="" readonly="readonly" maxlength="14" value="" type="text" /> 
		<a href="#none" onclick="" id="postBtn" class="yg_btn_24 yg_btn3" alt="우편번호">우편번호</a><br />
		<input id="addr1" name="addr1" fw-filter="" fw-label="주소"
		fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" value="" type="text" /> 기본주소<br /> 
		<input id="addr2" name="addr2" fw-filter="" fw-label="주소" fw-msg=""
		class="inputTypeText" placeholder="" value="" type="text" />
	        나머지주소 (선택입력가능)
	 	</td>
	 </tr>
		
	<tr class="">
		<th scope="row">전화번호 
		<img src="" class="displaynone" alt="필수" />
		</th>
		<td>
		<input id="mobile1" name="mobile[]" maxlength="3" 
		fw-filter="isNumber" fw-label="휴대전화" fw-alone="N"
		fw-msg="" value="" type="text" />-
		<input id="mobile2" name="mobile[]" maxlength="4" 
		fw-filter="isNumber" fw-label="휴대전화" fw-alone="N" fw-msg=""
		value="" type="text" />-
		<input id="mobile3" name="mobile[]" maxlength="4" 
		fw-filter="isNumber" fw-label="휴대전화" fw-alone="N"
		fw-msg="" value="" type="text" />
		</td>
		</tr>
		<tr>
		<th scope="row">이메일 
		<img src="" alt="필수" />
		</th>
		<td>
		<input id="email1" name="email1" fw-filter="isFill" 
		fw-label="이메일" fw-alone="N" fw-msg="" class="mailId" value=""
		type="text" />@
		<input id="email2" name="email2" fw-filter="isFill" 
		fw-label="이메일" fw-alone="N" fw-msg=""
		class="mailAddress" readonly="readonly" value="" type="text" />
		<select id="email3" fw-filter="isFill" fw-label="이메일" fw-alone="N"
		fw-msg="">
			<option value="" selected="selected">- 이메일 선택 -</option>
			<option value="naver.com">naver.com</option>
			<option value="daum.net">daum.net</option>
			<option value="nate.com">nate.com</option>
			<option value="hotmail.com">hotmail.com</option>
			<option value="yahoo.com">yahoo.com</option>
			<option value="empas.com">empas.com</option>
			<option value="korea.com">korea.com</option>
			<option value="dreamwiz.com">dreamwiz.com</option>
			<option value="gmail.com">gmail.com</option>
			<option value="etc">직접입력</option>
		</select> 
		<span id="emailMsg"></span>
		</td>
		</tr>
		</tbody>
	</table>
</div>


	
	<div class ="container">
	<div class="col-sm-8">
		<h3>[필수] 이용약관 동의</h3>
	<textarea rows="20" cols="150" id="content" name="content" class="form-control">
   
		
제1조(목적)
				
이 약관은 (전자상거래 사업자)가 운영하는 슬로우앤드(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리․의무 및 책임사항을 규정함을 목적으로 합니다.
※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」
	

제2조(정의)
① “몰”이란 슬로우앤드가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며,아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.
② “이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
③ ‘회원’이라 함은 “몰”에 (삭제) 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.
④ ‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.

제3조 (약관 등의 명시와 설명 및 개정) 
① “몰”은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호․모사전송번호․전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보관리책임자등을 이용자가 쉽게 알 수 있도록 사이버몰의 초기서비스화면(전면)에 게시합니다. 
다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
② “몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회․배송책임․환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.
③ “몰”은 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
④ “몰”이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 "몰“은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다. 
⑤ “몰”이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 “몰”에 송신하여 “몰”의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.
⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 상관례에 따릅니다.

제4조(서비스의 제공 및 변경) 
① “몰”은 다음과 같은 업무를 수행합니다.
1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결 
2. 구매계약이 체결된 재화 또는 용역의 배송 
3. 기타 “몰”이 정하는 업무
② “몰”은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.
③ “몰”이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할
경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.
④ 전항의 경우 “몰”은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.

제5조(서비스의 중단) 
① “몰”은 컴퓨터 등 정보통신설비의 보수점검․교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.
② “몰”은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 
단, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.
③ 사업종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 “몰”은 제8조에 정한 방법으로 이용자에게 통지하고 당초 “몰”에서 제시한 조건에 따라 소비자에게 보상합니다. 
다만, “몰”이 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 “몰”에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.

제6조(회원가입) 
① 이용자는 “몰”이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.
② “몰”은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다. 
1.가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 
다만 제7조제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 “몰”의 회원재가입 승낙을 얻은 경우에는 예외로 한다.
2. 등록 내용에 허위, 기재누락, 오기가 있는 경우 
3. 기타 회원으로 등록하는 것이 “몰”의 기술상 현저히 지장이 있다고 판단되는 경우
③ 회원가입계약의 성립 시기는 “몰”의 승낙이 회원에게 도달한 시점으로 합니다.
④ 회원은 회원가입 시 등록한 사항에 변경이 있는 경우, 상당한 기간 이내에 “몰”에 대하여 회원정보 수정 등의 방법으로 그 변경사항을 알려야 합니다.
	
		
제7조(회원 탈퇴 및 자격 상실 등) 
① 회원은 “몰”에 언제든지 탈퇴를 요청할 수 있으며 “몰”은
			즉시 회원탈퇴를 처리합니다.<br>
② 회원이 다음 각 호의 사유에 해당하는 경우, “몰”은 회원자격을
				제한 및 정지시킬 수 있습니다.<br>&nbsp; 
1. 가입 신청 시에 허위 내용을 등록한 경우<br>&nbsp;
						2. “몰”을 이용하여 구입한 재화 등의 대금, 기타 “몰”이용에 관련하여 회원이 부담하는 채무를 기일에
						지급하지 않는 경우<br>&nbsp; 3. 다른 사람의 “몰” 이용을 방해하거나 그 정보를 도용하는
							등 전자상거래 질서를 위협하는 경우<br>&nbsp; 4. “몰”을 이용하여 법령 또는 이 약관이
								금지하거나 공서양속에 반하는 행위를 하는 경우<br>③ “몰”이 회원 자격을 제한․정지 시킨
									후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 “몰”은
									회원자격을 상실시킬 수 있습니다.<br>④ “몰”이 회원자격을 상실시키는 경우에는 회원등록을
										말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 최소한 30일 이상의 기간을 정하여
										소명할 기회를 부여합니다.

		제8조(회원에 대한 통지)<br>① “몰”이 회원에 대한 통지를 하는 경우, 회원이 “몰”과 미리 약정하여
			지정한 전자우편 주소로 할 수 있습니다.<br>② “몰”은 불특정다수 회원에 대한 통지의 경우 1주일이상
				“몰” 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을
				미치는 사항에 대하여는 개별통지를 합니다.

		제9조(구매신청) <br>① “몰”이용자는 “몰”상에서 다음 또는 이와 유사한 방법에 의하여 구매를
			신청하며, “몰”은 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다. (삭제)<br>&nbsp;
				1. 재화 등의 검색 및 선택<br>&nbsp; 2. 받는 사람의 성명, 주소, 전화번호,
					전자우편주소(또는 이동전화번호) 등의 입력<br>&nbsp; 3. 약관내용, 청약철회권이 제한되는
						서비스, 배송료․설치비 등의 비용부담과 관련한 내용에 대한 확인<br>&nbsp; 4. 이 약관에
							동의하고 위 3.호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭)<br>&nbsp; 5.
								재화등의 구매신청 및 이에 관한 확인 또는 “몰”의 확인에 대한 동의<br>&nbsp; 6.
									결제방법의 선택<br>② “몰”이 제3자에게 구매자 개인정보를 제공•위탁할 필요가 있는 경우
										실제 구매신청 시 구매자의 동의를 받아야 하며, 회원가입 시 미리 포괄적으로 동의를 받지 않습니다.
										이 때 “몰”은 제공되는 개인정보 항목, 제공받는 자, 제공받는 자의 개인정보 이용 목적 및
										보유‧이용 기간 등을 구매자에게 명시하여야 합니다. 다만 「정보통신망이용촉진 및 정보보호 등에 관한
										법률」 제25조 제1항에 의한 개인정보 취급위탁의 경우 등 관련 법령에 달리 정함이 있는 경우에는

		제10조 (계약의 성립)<br>① “몰”은 제9조와 같은 구매신청에 대하여 다음 각 호에 해당하면 승낙하지
			않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는
			법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.<br>&nbsp; 1. 신청 내용에
				허위, 기재누락, 오기가 있는 경우<br>&nbsp; 2. 미성년자가 담배, 주류 등 청소년보호법에서
					금지하는 재화 및 용역을 구매하는 경우<br>&nbsp; 3. 기타 구매신청에 승낙하는 것이 “몰”
						기술상 현저히 지장이 있다고 판단하는 경우<br>② “몰”의 승낙이 제12조제1항의
							수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.<br>③ “몰”의 승낙의
								의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소 등에 관한 정보
								등을 포함하여야 합니다.

		제11조(지급방법)<br>“몰”에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각 호의 방법중
			가용한 방법으로 할 수 있습니다. 단, “몰”은 이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의
			수수료도 추가하여 징수할 수 없습니다.<br>1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체 <br>2.
					선불카드, 직불카드, 신용카드 등의 각종 카드 결제<br>3. 온라인무통장입금<br>4.
							전자화폐에 의한 결제<br>5. 수령 시 대금지급<br>6. 마일리지 등 “몰”이 지급한
									포인트에 의한 결제<br>7. “몰”과 계약을 맺었거나 “몰”이 인정한 상품권에 의한 결제 <br>8.

		제12조(수신확인통지․구매신청 변경 및 취소)<br>① “몰”은 이용자의 구매신청이 있는 경우 이용자에게
			수신확인통지를 합니다.<br>② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는
				수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고 “몰”은 배송 전에 이용자의 요청이 있는
				경우에는 지체 없이 그 요청에 따라 처리하여야 합니다. 다만 이미 대금을 지불한 경우에는 제15조의 청약철회
				등에 관한 규정에 따릅니다.
	
		제13조(재화 등의 공급)<br>① “몰”은 이용자와 재화 등의 공급시기에 관하여 별도의 약정이 없는
			이상, 이용자가 청약을 한 날부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한
			조치를 취합니다. 다만, “몰”이 이미 재화 등의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를
			받은 날부터 3영업일 이내에 조치를 취합니다. 이때 “몰”은 이용자가 재화 등의 공급 절차 및 진행 사항을 확인할
			수 있도록 적절한 조치를 합니다.<br>② “몰”은 이용자가 구매한 재화에 대해 배송수단, 수단별
				배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 “몰”이 약정 배송기간을 초과한 경우에는 그로 인한
				이용자의 손해를 배상하여야 합니다. 다만 “몰”이 고의․과실이 없음을 입증한 경우에는 그러하지 아니합니다.
	</p>
	<p>
		제14조(환급)<br>“몰”은 이용자가 구매신청한 재화 등이 품절 등의 사유로 인도 또는 제공을 할 수
			없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터
			3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.
	</p>
	<p>
		제15조(청약철회 등)<br>① “몰”과 재화등의 구매에 관한 계약을 체결한 이용자는 「전자상거래 등에서의
			소비자보호에 관한 법률」 제13조 제2항에 따른 계약내용에 관한 서면을 받은 날(그 서면을 받은 때보다 재화 등의
			공급이 늦게 이루어진 경우에는 재화 등을 공급받거나 재화 등의 공급이 시작된 날을 말합니다)부터 7일 이내에는
			청약의 철회를 할 수 있습니다. 다만, 청약철회에 관하여 「전자상거래 등에서의 소비자보호에 관한 법률」에 달리
			정함이 있는 경우에는 동 법 규정에 따릅니다. <br>② 이용자는 재화 등을 배송 받은 경우 다음 각
				호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.<br>&nbsp; 1. 이용자에게 책임
					있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한
					경우에는 청약철회를 할 수 있습니다)<br>&nbsp; 2. 이용자의 사용 또는 일부 소비에 의하여
						재화 등의 가치가 현저히 감소한 경우<br>&nbsp; 3. 시간의 경과에 의하여 재판매가 곤란할
							정도로 재화등의 가치가 현저히 감소한 경우<br>&nbsp; 4. 같은 성능을 지닌 재화 등으로
								복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우<br>③ 제2항제2호 내지 제4호의
									경우에 “몰”이 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나
									시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약철회 등이 제한되지 않습니다.<br>④
										이용자는 제1항 및 제2항의 규정에 불구하고 재화 등의 내용이 표시•광고 내용과 다르거나 계약내용과
										다르게 이행된 때에는 당해 재화 등을 공급받은 날부터 3월 이내, 그 사실을 안 날 또는 알 수
										있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.
	</p>
	<p>
		제16조(청약철회 등의 효과)<br>① “몰”은 이용자로부터 재화 등을 반환받은 경우 3영업일 이내에 이미
			지급받은 재화 등의 대금을 환급합니다. 이 경우 “몰”이 이용자에게 재화등의 환급을 지연한때에는 그 지연기간에
			대하여 「전자상거래 등에서의 소비자보호에 관한 법률 시행령」제21조의2에서 정하는 지연이자율(괄호 부분 삭제)을
			곱하여 산정한 지연이자를 지급합니다.<br>② “몰”은 위 대금을 환급함에 있어서 이용자가 신용카드 또는
				전자화폐 등의 결제수단으로 재화 등의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금
				재화 등의 대금의 청구를 정지 또는 취소하도록 요청합니다.<br>③ 청약철회 등의 경우 공급받은 재화
					등의 반환에 필요한 비용은 이용자가 부담합니다. “몰”은 이용자에게 청약철회 등을 이유로 위약금 또는
					손해배상을 청구하지 않습니다. 다만 재화 등의 내용이 표시•광고 내용과 다르거나 계약내용과 다르게 이행되어
					청약철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 “몰”이 부담합니다.<br>④ 이용자가 재화
						등을 제공받을 때 발송비를 부담한 경우에 “몰”은 청약철회 시 그 비용을 누가 부담하는지를 이용자가 알기
						쉽도록 명확하게 표시합니다.
	</p>
	<p>
		제17조(개인정보보호)<br>① “몰”은 이용자의 개인정보 수집시 서비스제공을 위하여 필요한 범위에서
			최소한의 개인정보를 수집합니다. <br>② “몰”은 회원가입시 구매계약이행에 필요한 정보를 미리 수집하지
				않습니다. 다만, 관련 법령상 의무이행을 위하여 구매계약 이전에 본인확인이 필요한 경우로서 최소한의 특정
				개인정보를 수집하는 경우에는 그러하지 아니합니다.<br>③ “몰”은 이용자의 개인정보를 수집•이용하는
					때에는 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. <br>④ “몰”은 수집된 개인정보를
						목적외의 용도로 이용할 수 없으며, 새로운 이용목적이 발생한 경우 또는 제3자에게 제공하는 경우에는
						이용•제공단계에서 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련 법령에 달리 정함이 있는
						경우에는 예외로 합니다.<br>⑤ “몰”이 제2항과 제3항에 의해 이용자의 동의를 받아야 하는
							경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및
							이용목적, 제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및 제공할 정보의 내용) 등 「정보통신망
							이용촉진 및 정보보호 등에 관한 법률」 제22조제2항이 규정한 사항을 미리 명시하거나 고지해야 하며
							이용자는 언제든지 이 동의를 철회할 수 있습니다.<br>⑥ 이용자는 언제든지 “몰”이 가지고 있는
								자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 “몰”은 이에 대해 지체 없이 필요한 조치를
								취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 “몰”은 그 오류를 정정할 때까지 당해
								개인정보를 이용하지 않습니다.<br>⑦ “몰”은 개인정보 보호를 위하여 이용자의 개인정보를
									취급하는 자를 최소한으로 제한하여야 하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실,
									도난, 유출, 동의 없는 제3자 제공, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.<br>⑧
										“몰” 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한
										때에는 당해 개인정보를 지체 없이 파기합니다.<br>⑨ “몰”은 개인정보의 수집•이용•제공에
											관한 동의란을 미리 선택한 것으로 설정해두지 않습니다. 또한 개인정보의 수집•이용•제공에 관한
											이용자의 동의거절시 제한되는 서비스를 구체적으로 명시하고, 필수수집항목이 아닌 개인정보의
											수집•이용•제공에 관한 이용자의 동의 거절을 이유로 회원가입 등 서비스 제공을 제한하거나 거절하지
											않습니다.
	</p>
	<p>
		제18조(“몰“의 의무)<br>① “몰”은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지
			않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화․용역을 제공하는데 최선을 다하여야 합니다.<br>②
				“몰”은 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안
				시스템을 갖추어야 합니다.<br>③ “몰”이 상품이나 용역에 대하여 「표시․광고의 공정화에 관한 법률」
					제3조 소정의 부당한 표시․광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.<br>④
						“몰”은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.
	</p>
	<p>
		제19조(회원의 ID 및 비밀번호에 대한 의무)<br>① 제17조의 경우를 제외한 ID와 비밀번호에 관한
			관리책임은 회원에게 있습니다.<br>② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는
				안됩니다.<br>③ 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한
					경우에는 바로 “몰”에 통보하고 “몰”의 안내가 있는 경우에는 그에 따라야 합니다.
	</p>
	<p>
		제20조(이용자의 의무)<br>이용자는 다음 행위를 하여서는 안 됩니다.<br>1. 신청 또는
				변경시 허위 내용의 등록<br>2. 타인의 정보 도용<br>3. “몰”에 게시된 정보의 변경<br>4.
							“몰”이 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시<br>5. “몰” 기타
								제3자의 저작권 등 지적재산권에 대한 침해<br>6. “몰” 기타 제3자의 명예를 손상시키거나
									업무를 방해하는 행위<br>7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에
										반하는 정보를 몰에 공개 또는 게시하는 행위
	</p>
	<p>
		제21조(연결“몰”과 피연결“몰” 간의 관계)<br>① 상위 “몰”과 하위 “몰”이 하이퍼링크(예:
			하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결 “몰”(웹
			사이트)이라고 하고 후자를 피연결 “몰”(웹사이트)이라고 합니다.<br>② 연결“몰”은 피연결“몰”이
				독자적으로 제공하는 재화 등에 의하여 이용자와 행하는 거래에 대해서 보증 책임을 지지 않는다는 뜻을 연결“몰”의
				초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증 책임을 지지 않습니다.
	</p>
	<p>
		제22조(저작권의 귀속 및 이용제한)<br>① “몰“이 작성한 저작물에 대한 저작권 기타 지적재산권은
			”몰“에 귀속합니다.<br>② 이용자는 “몰”을 이용함으로써 얻은 정보 중 “몰”에게 지적재산권이 귀속된
				정보를 “몰”의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나
				제3자에게 이용하게 하여서는 안됩니다.<br>③ “몰”은 약정에 따라 이용자에게 귀속된 저작권을
					사용하는 경우 당해 이용자에게 통보하여야 합니다.
	</p>
	<p>
		제23조(분쟁해결)<br>① “몰”은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를
			보상처리하기 위하여 피해보상처리기구를 설치․운영합니다.<br>② “몰”은 이용자로부터 제출되는 불만사항
				및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와
				처리일정을 즉시 통보해 드립니다.<br>③ “몰”과 이용자 간에 발생한 전자상거래 분쟁과 관련하여
					이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시•도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수
					있습니다.
	</p>
	
제24조(재판권 및 준거법)
① “몰”과 이용자 간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소
당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.<br>②
   “몰”과 이용자 간에 제기된 전자상거래 소송에는 한국법을 적용합니다.
	
	부 칙(시행일) 이 약관은 년 월 일부터 시행합니다.
	</textarea>
	<div class="ec-base-box typeThinBg gStrong">
	<p>
	<span class="ec-base-chk">
	<input type="checkbox" id="sAgreeAllChecked">
	</span>
	<label for="sAgreeAllChecked">
	<strong>이용약관 및 개인정보수집 및 이용, 쇼핑정보 수신(선택)에 모두 동의합니다.</strong>
	</label>
	</p>
	</div>

	</div>
	</div>
<div class="ec-base-button">
	<a href="${pageContext.request.contextPath}/member/preproc" class="yg_btn_140" alt="회원가입"
		id="join">회원가입</a> 
	<a href="#none" class="yg_btn_140 yg_btn3" alt="닫기"
		onclick="CheckingJoinInfoLayerClose()">닫기</a>
</div>
</div>	
</div>
</form>


<hr class="layout" />

<hr class="layout" />
<!-- 하단 -->
<div id="footer" class="xans-element- xans-layout xans-layout-footer">
	
<div id="footerTop">
<div>
<p class="pageMove">
<a class="pageTop" href="#header" title="화면 최상단으로 이동하기" alt="맨위로">
<i class="fa fa-angle-up fa-2x"></i>
</a> 
<a class="pageBottom" href="#copyright" title="화면 최하단으로 이동하기" alt="맨아래로">
<i class="fa fa-angle-down fa-2x"></i>
</a>
</p>
</div>
</div>
</div>

<script>
$(document).ready(function() {
    $('.pageTop').click(function(event) {
       event.preventDefault();                  
       $('html, body').animate({scrollTop: 0}, 400);
    });
    $('.pageBottom').click(function(event) {
       event.preventDefault();                  
       $('html, body').animate({scrollTop: $(document).height() + $(window).height()},400);
    });
});

$(".inner_b .address i.bizLink a").text("[Go Checking]");
</script>
	

<hr class="layout" />
<!-- //참고 -->
<script type="text/javascript">
var sAuthSSLDomain = "login2.cafe24ssl.com";</script>
<script type="text/javascript"
	src="https://login2.cafe24ssl.com/crypt/AuthSSLManager.js"></script>
<script type="text/javascript"
	src="https://login2.cafe24ssl.com/crypt/AuthSSLManager.plugin.js"></script>
<script type="text/javascript"
	src="//slowand.com/ind-script/i18n.php?lang=ko_KR&domain=front&v=1911061085"
	charset="utf-8"></script>
<script type="text/javascript"
	src="/ind-script/optimizer.php?filename=tZXNbtswDMdfwNc9h5Bhh51boKcNAzb0AWiJtplQokpJbbOnH5N1Q7PNSQ0v8EEAwd-fEr_sJonoNu_VDQoRn0R3TrFIU49uWxxtPqZuW965c36NMvid2z401P3Lsek-2HdCZpXR4BP9kpVSHS47BvEtYqp3ovFWUlVhRr3MDWrO7hmSvSVV1KxYF3IVY2ao-G8IcnafpSdG9_UV7yVGSa5V4kVclNDMVJ4oLws4tOQrWUjzC83XLoquVDhzCabe3f8s-2sJhu97FgiLoNgqHOJ-6Qvq41xxZuAsvB-I-a0VDThA43pIQYmg9QZS-jPkxRbHZ-uhBFxeDF0_0hFaq-NFdrRaJZBNSrGMlrVKCIXSuFYlYoUAFea78UZAw0ldzdr1B-s89G2SfMLcHSt8e5y8-7ODN4MWBPXTov6rMAz2Qlq6JTO3kWy5PAKT5Ub0V7J-G1YLHuqQQvlb2BSyNQdeL8KEnPGKL5ggBb5mAFtDZHW9mr6trPof7s_iwbb4Ti6vv5m-estA2b9vFN1_olIN_gE&type=js&k=81cead6b99ffa3a78f6503851e2d2fd76af38afb&t=1571605827"></script>
<script type="text/javascript"
	src="/ind-script/optimizer.php?filename=rZXPTgIxEMbvwtXnaPQNFCGBCBqIHLyVMrs7bDtTp13J-vQui0QwwUjXy-yf9Pd1-nU6VQU7UDe3orxwLtopiyv1gl6bUs0hcCUG1CaoaTOOonLto--Q-ptwrZLoq4gOPpjgvIwcsVVE24b-u7a41pElCZr4S7DlARtp08Q6iR0wRWFr4UzG2ns1BbcCOXHLtb-WIJjVU16hhQR8wkgPGLzV9V0ViwSFOWg70y5l8gE7r6lOIQsw5YgFMKck23brbkVmaMou_HjdhX7edqGHTjd1lOgeUr4TGlPGaVvnmFLnHoZAiQu_5IQ1p-tHWWbNYNiylN9Ete9Dm7cKpFbeVjlSUDu0FTq8nE_3Fb3hNZzkmyGt4Q8NaHfmFovHX7zQpPNT7S2sLOcXNdZBJQJkahUK9j0vaKADb76-ehmL07FrJv8lc36Xjh0vorPN7YIRIVxkuw41mX1M5vZlnIw_SVNUhmKywL0OJcTuCocK-gQ&type=js&k=6fd4ecdec5e5a3dc0733f25e0c57d9fe69bc42b1&t=1569791188"></script>
<script type="text/javascript"
	src="/ind-script/optimizer.php?filename=rZRNbgMhDIUPMNn2HChppa6bVGoXEzVKKnXtMO6MM4AphkRz-5KfRbaFbhASeh_P5hk1sEU1XwTlA_cBrALv1Roc9Ki2KJyCRnUQBTI5fV1nS5AR4yZwl3ScHeRBlVBWnDw77coJazKYz4v1r-hZqPz-L5KhJakDaE4VLQiosUK-vcg_OYJZVfn4CB2GYvUSHX5XPMQ1kC1MFR7eAnTlUXpJkS1E0hfMbuBTeaqTibRhn3w5YmppxNuA1j1sS0c05EZ2ddl4z3PCYSo14yEOgQ02RzDUQUaVV8TQ_UnsCz46Oc00GHOfR9RNEgzZjHO4mD8_Kp_2hnQzRGuUdNh0KNQ7JSO5pzPE5nsNKgMTp6g0ROxzC4uJN84ehPQZf9nU-NNs7X0uaiv8SaTH5kh4-j-mPU-TDOx3A3lPrq8sWMRkwi8&type=js&k=f09bdba3622d97671bc67774963ab7360a5a1b93&t=1573420409"></script>

</body>
</html>
