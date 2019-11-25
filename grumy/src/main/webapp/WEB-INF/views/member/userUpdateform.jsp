<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="util" uri="/ELFunctions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<!--해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!--해당 CSS는 쇼핑몰 전체 슬라이드 배너에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. -->
<script src="https://connect.facebook.net/signals/config/183242402324052?v=2.9.13&amp;r=stable" async="">
</script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js">
</script>
<script type="text/javascript" src="/ec-js/common.js">
</script>
<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js">
</script>
<script src="/yangji/js/jquery.bxslider.min.js">
</script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="canonical" href="http://www.slowand.com">
<link rel="alternate" href="http://www.m.slowand.com/">

<meta name="google-site-verification" content="EFPjfmjiYaukHxgQEmFrlvyllFVJax3Pr1MlHCYhkgU">
<meta name="naver-site-verification" content="cdc66033ac54c3c0175fba92d71c46317e5c78e1">


<!--  확인 해야함 -->
<link rel="canonical" href="http://slowand.com/member/modify">
<link rel="alternate" href="http://m.slowand.com/member/modify">

<link rel="shortcut icon" href="/web/upload/favicon_20170717165926.ico">

<script type="text/javascript" src="/app/Eclog/js/cid.generate.js?vs=3d0b473968a0ec4ec41e3bf59df3aa51">
</script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js">
</script>




<link rel="stylesheet" type="text/css" href="/ind-script/optimizer.php?filename=tZSxbgMhDIb3XNY-h5WkUvfOndonMODekQC-YlMlb1-UZEh0S3V3jCD8IX_gHwaOBLt9hjFznzFCJuGSLYEVge_MScFyjJy2deMF_nOe7EY4FPWcNobPMwuL6txLA14ozytVNIEeSsl2RSgLYEq0370dYCwmeNsNGgOIo86R-D6BnHx6vUIjuxIIIkVDGcroUIl-KWng_qmjxWxyXufzqiUuCgbF2yu8eqgLmuhbyp38n6XA20aDzotvAFXmoH5sQB4otMDWUXHFtvA7Yu9THYcWltE0oE5SaDXwUy6uKCG0kFtP2fnYC6b-6G-BW_N2FdDxp1C-bM1ZgndL0uqB-YHKq4C-MMkqOX9_EM61xXeUE6nlssTglH0f9k-ydAP_AQ&amp;type=css&amp;k=d10885102131af326f4b320a0f26c1908e505ea4&amp;t=1547093551">
<link rel="stylesheet" type="text/css" href="/ind-script/optimizer.php?filename=rZHbDcIwDEUHKL_MYfGQGIQJ3MQkpokd1Qmo29OWDSA__vH10bkyRM0E5IZmNBugCJ1PtwuUNiZ2Q6w5gXkaPBkHAZtYruDMIKtviSDhoq1CbqmyRS33yKWwhMOaOUIfuFN5rfesUtzv3AUlPHnHR0JPc1dFrBR0XrroPVTrP3pYigGLVQwz5jf7QHVfnb6zS_G8bO-GEWUaVaeezIwsG-8D&amp;type=css&amp;k=f53659961fbe6a5f77148b697e8faa567b7da93b&amp;t=1566806466">

<title>grumy</title>
<script type="text/javascript" 
id="AuthSSLContainer" charset="utf-8" 
src="https://login2.cafe24ssl.com/crypt/AuthSSLManagerV2.php?token=YXV0aF9tb2RlJTNEZGVjcnlwdENsaWVudCUyNmF1dGhfY2FsbGJhY2tOYW1lJTNETWVtYmVyRWRpdEF1dGh0U1NMLnNldE1lbWJlciUyNmF1dGhfc3RyaW5nJTNEZHdCZ2dxMkJKV1VXdXE1SzVHc0JBdVlsdzJsMEhPMWJZWFV4STclMjUyQkd2UXIlMjUyQmZVdzklMjUyRnkzQkJVQkdkdWZ0bzI0cngxdkwwcmRxbmpFQVZxJTI1MkJBTkRjbmtvN2NjdE8yTDl5ZFp6bnlETURJbElKVTZ1ZDJ5NDhXdDU1JTI1MkJVVHl4WXZ2NnR3bjdLM1A2eWkzYlMyR1plNFVFMzJ2S3RPR3JpQ1NDMm83SkFnRkF0UGt0dXNDSkdQU0NJMkt1MEZwZFdrM2hOQmpRTWlhTm1rdDJFJTI1MkIlMjUyQlhRMzVrMkJtWGM3S1R2T0FBJTI1MkJmdUs5Z3N2ZWZybVNwSEZNM2Vpck9xdVJmU2hLbW1kWGd0d1RrdmZyZTFlNW1HYUUwMm1PZ3Y1NFhmQjM5azlQaEZQa2MlMjUyRjlwdXo1JTI1MkJobDNjUk0lMjUyQjNiUWNROFAxajhjYkxsaTVaZzhLd3RiSGVRYVpQcFVzSW9OSlEzTCUyNTJCdHdEV3NINE1HaWNGZTlBenFHeTlSWHRRR3BKQXBrbjBEQktJNU4yUzNNcG1vNUczc1l6JTI1MkY0dFlIdFJBNW9wRWczV0k2djUwTTRQZGNYeXklMjUyRjB5eTRYdFRKZjRIWVRCVWlUSk1RbjI3MXNRNVl6JTI1MkIyS3p2ZHZMSDdFakclMjUyQnBsWk9VWGE2RCUyNTJCUlM2JTI1MkJEQkIzNlp2RGJZejdoaWptOVBaZ1pVYjU1V2VQRjNzdGVZMmUlMjUyRnA1VURvU0tQaGglMjUyRnRYRVVsYkFFRXVJd1VMbklwVjF3d1NjcDc5JTI1MkJjTlZWMWxiZXZ0eW5DcmdDaHdPanpHanJlZWNFZTVRZE95dmc5Y0NVUU9qRWMyaiUyNTJGd3RkT2J5b1pTQmt4enpCcGUyQ2lmU28lMjUyQiUyNTJGU0k4OUhuSHhEVnlDVElTeiUyNTJCb0VJNEZzSzhqRGhkRkpWNUxFYlElMjUyQiUyNTJGTlZMNjUxTXh2anN4cVFMTWQzZXR6NDd2Q2xycVlhMllZd2pLJTI1MkJLbTBhMUZjakhZZEhPQW9SQyUyNTJGb3A2MjRnWmxmbWJEeG9XRmhEMk1Sbkp6ZVJGNlowbGdFR0w4eGpwU0h5JTI1MkZZayUyNTJGM1NOJTI1MkJseDh2TlFKVjFwTFdWQnRmdjlZM2U4NEVSRTNNTmxoVUs3WnVWMjI5MFhCOXJzbFV6ZGRib3h4VSUyNTJCJTI1MkZxVnpuQXNEYXpNJTI1MkZQaG1GWXZSU0ZjZVY4eGpTNlgyVmpIWmN3d1M4T1J0YmhrUUgzcWY2ZCUyNTJCSU1sd0QwMFN6WE5ZODhhQUQzUlRkNTl0QjRGcUxLQ1N5TEQlMjUyRkt1bE56QmElMjUyQldGRWlxUlNiY1dwcExNR3h4TFpRQkptR1FEUmZIN0JITVBSQUc4dmhCZklvJTI1MkJIUGw3U3BqY3JHSVJza1ZJcmV6YnhialhrVmNIMSUyNTJCRlZKSDlCdVJtc1ViUjlnJTI1MkJHRkRjcGdHJTI1MkJjMUdHaWZkUVhoRnNodzZ1OSUyNTJCcUZUWks5VFJiREFWb2RsenREd1dZN056JTI1MkZUTFF3SVZaOWdDZGxReGdDME5CM2UyRmF6ekFmMHVvTUdUOEdIRyUyNTJGcVdkb0ZWUUljanpQTFljdUJ6QmY5MFdFbkpmMVIlMjUyRmglMjUyQjNVbVNWa010WFJyeG1KSzY0NU1TSUc5MFhqT0hPandMczN0QyUyNTJCalBBbGpic0lWcXlieEpNeFFHczJFTDVNMy&amp;com=0&amp;id=c157440674330784405"></script><script type="text/javascript" id="AuthSSLContainer" charset="utf-8" src="https://login2.cafe24ssl.com/crypt/AuthSSLManagerV2.php?token=UyNTJCWmpTMmlEMXFkZEJBQmg1TWZaQlhRRGdJWlNudiUyNTJGaGVqTzdXTzJZS3dhNFhueTFjZXRvMiUyNTJCTzdqTWdkT2x6N1pRYkRINWZlbjFUMyUyNTJGSW81aVglMjUyRjJqa2J1REl3V1lLS0VHV2FPVkd2Z1IxQ2NjZURiZWRBMlBQWFA3QnBSc3NiWFljJTI1MkJhJTI1MkJ6TmxoTjdvNXU5VWI2UHZtQ2xPTTh1NHJJZzNiY3NrYlJZZGp5cllYM0d5MkdkM1lJU1Q5SzNwOGZKNlBFJTI1MkJYJTI1MkJBS3JQOEUzJTI1MkZaYnpnSE10OGFOMUhuZ3k2b3RYcTF0S1JUTzNwYWxRcTUlMjUyQklxVzZ0bkclMjUyQmd2U3ZEY3VTT1dLVWU5THhHQUk0aXhyOVhLbXRnS3FMUmRMZWdDajJtNkclMjUyRmo5cUlPTGhzZlVlTDRSamR6WmE5aE1PcFpKTVhYdjFySHk2R01vWQ==&amp;com=1&amp;id=c157440674330784405">
</script>
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
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailaddress").focus();
            }
        }).open();
    }
</script>

<!-- 필수 입력창 확인  -->
<script type="text/javascript">
function inCheck(f){
	if(f.id.value.length==0){
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
		f.user_passwd_confirm.focus();
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
		f.name.focus();
		return false;
	}
	
	if(f.postcode.value.length==0){
		alert("주소를 입력하세요")
		f.postcode.focus();
		return false;
	}
	if(f.address.value.length==0){
		alert("주소를 입력하세요")
		f.address.focus();
		return false;
	}
	if(f.detailaddress.value.length==0){
		alert("주소를 입력하세요")
		f.detailaddress.focus();
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

</head>
<body id="cmn">


            
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
    
    <div id="container">
        <div id="contents">
            
<div class="titleArea">
    <h2>EDIT PROFILE</h2>
    <h3>회원 정보 수정</h3>
</div>

<h3 class=" ">기본정보</h3>
<p class="required ">
<img src="/web/upload/yangji_pc_crumb/req_check.png" alt="필수"> 필수입력사항</p>
<form id="update" name="" 
action="${pageContext.request.contextPath }/member/update" method="post" 
target="_self" enctype="multipart/form-data">
<input type="hidden" name="id" value="${dto.id }">
<div class="ec-base-table typeWrite">
        <table border="1" summary="">
<caption>회원 기본정보</caption>
        <colgroup>
<col style="width:150px;">
<col style="width:auto;">
</colgroup>
<tbody>


<tr>
		<th scope="row">아이디 
		<label class="control-label col-sm-2" for="id">
		<img src="" alt="필수" />
		</th>
		<td>
				<div class="col-sm-3">
					${dto.id }
				</div>
		</td>
	</tr>
	<tr>


<tr>
<th scope="row" id="nameTitle">이름 
<img src="" alt="필수" /></th>
<td>
<span id="nameContents">
<input id="name" name="name" fw-filter="isFill&isMax[30]" fw-label="이름"
fw-msg="" class="ec-member-name" placeholder="" maxlength="30"
value="${dto.name }" type="text" />
</span> 
</td>
</tr>

<tr class="">
<th scope="row">주소 
<img src="/web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수">
</th>
<td>
<input id="postcode" name="postcode" fw-filter="isLengthRange[1][14]" 
fw-label="우편번호1" fw-msg="" class="inputTypeText" placeholder="" 
readonly="readonly" maxlength="14" value="${dto.postcode }" type="text">                    
<a href="#" onclick="sample6_execDaumPostcode()" id="postBtn" 
class="yg_btn_28 yg_btn5" alt="우편번호">우편번호</a>
<br>
<input id="address" name="address" fw-filter="" fw-label="주소" 
fw-msg="" class="inputTypeText" placeholder="" 
readonly="readonly" value="${dto.address }" type="text"> 기본주소<br>
<input id="detailaddress" name="detailaddress" fw-filter="" 
fw-label="주소" fw-msg="" class="inputTypeText" placeholder="" 
value="${dto.detailaddress }" type="text"> 
나머지주소 (선택입력가능)
</td>
</tr>

<tr class="">
<th scope="row">휴대전화 
<img src="/web/upload/yangji_pc_crumb/req_check.png" class="displaynone" 
alt="필수">
</th>
<td>
<input id="phone" name="phone" maxlength="11" 
fw-filter="isNumber" fw-label="휴대전화" fw-alone="N"
fw-msg="" value="${dto.phone }" type="text" />
(-)는 제외하고 입력하세요.
</td>
</tr>
               
<tr>
<th scope="row">이메일 
<img src="" alt="필수" />
</th>
<td>
<input id="email" name="email" fw-filter="isFill" 
fw-label="이메일" fw-alone="Y" fw-msg="" class="mailId" value="${dto.email }"
type="text" />
</td>
</tr>
<tr>
<th scope="row">생년월일
</th>
<td>
<input id="birth" name="birth" 
fw-filter="" fw-label="생년월일" fw-msg=""
autocomplete="off" maxlength="8" 0="disabled" value="${dto.birth }"
type="text" /> ex) 2000년 1월 1일 → 20000101
</td>
</tr>		



</tbody>
</table> 
</div>



<div class="ec-base-button justify">
<a href="#" class="yg_btn_140 yg_btn1 yg_btn_border_444" 
onclick="document.getElementById('update').submit();" alt="회원정보수정">회원정보수정</a>
<a href="/index.html" class="yg_btn_140 yg_btn4" alt="취소">취소</a>
<span class="gRight">
<a href="#none" class="yg_btn_140 yg_btn3" 
onclick="" alt="회원탈퇴">회원탈퇴</a>
</span>
</div>
</form>
<div class="layerLeave ec-base-layer" id="eLeaveLayer">
   <div class="header">
            <h3>회원탈퇴</h3>
   </div>
   <div class="content">
   <div class="ec-base-box typeMember">
   <div class="information">
<strong class="title">혜택 내역</strong>
<div class="description">
<ul>
<li id="eLeaveLayerMileageText">탈퇴시 보유하고 있는 적립금은 모두 삭제됩니다.</li>
<li>현재 적립금 : <strong id="eLeaveLayerMileage" class="txtEm">0</strong>
</li>
<li id="eLeaveLayerDepositTextarea">현재 예치금 : 
<strong id="eLeaveLayerDeposit" class="txtEm">0</strong>
</li>
</ul>
	</div>
	</div>
	</div>
</table>
</div>
</div>
        
	<div class="ec-base-button">
<a href="#" id="eLeaveLayerBtn" class="yg_btn_30" alt="탈퇴">탈퇴</a>
<a href="#" onclick="$('#eLeaveLayer').hide();" 
class="yg_btn_30 yg_btn3" alt="취소">취소</a>
	</div>
<a href="#none" class="close" onclick="$('#eLeaveLayer').hide();">
<img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif" alt="닫기">
</a>

</div>
</div>

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

   
<script src="https://cdn.megadata.co.kr/js/en_script/3.5/enliple_min3.5.js" defer="defer" onload="mobRf()">
</script>
<!-- Enliple Common Tracker v3.5 [공용] end -->
<iframe src="/exec/front/eclog/main/?&amp;rloc=https%3A//slowand.com/member/modify.html&amp;rref=https%3A//slowand.com/&amp;udim=1280*720&amp;rserv=eclog2-186.cafe24.com&amp;cid=CIDb61358b9e10e2a1baf457b3737878631&amp;role_path=MEMBER_MODIFY" id="log_realtime" style="display: none;"></iframe><script src="https://eclog2-186.cafe24.com/weblog_ubp.html?uid=anne2173&amp;udim=1280*720&amp;uref=https://slowand.com/&amp;uname=anne2173&amp;url=https://slowand.com/member/modify.html&amp;r_ref=https://slowand.com/&amp;shop_no=1&amp;t=1574406743263"></script><script type="text/javascript" src="//eclog2-186.cafe24.com/weblog.js?uid=anne2173&amp;uname=anne2173&amp;r_ref=https://slowand.com/&amp;shop_no=1&amp;t=1574406743263" id="log_script">
</script>
<div id="modalBackpanel">
</div>
<div id="modalContainer">
<iframe id="modalContent" scroll="0" scrolling="no" frameborder="0"></iframe>
</div>
</body>
</html>