<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<!--해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!--해당 CSS는 쇼핑몰 전체 슬라이드 배너에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. -->

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

<link rel="shortcut icon" href="//slowand.com//web/upload/favicon_20170717165926.ico">

<script type="text/javascript" src="//slowand.com//app/Eclog/js/cid.generate.js?vs=3d0b473968a0ec4ec41e3bf59df3aa51">
</script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js">
</script>




<link rel="stylesheet" type="text/css" href="//slowand.com//ind-script/optimizer.php?filename=tZSxbgMhDIb3XNY-h5WkUvfOndonMODekQC-YlMlb1-UZEh0S3V3jCD8IX_gHwaOBLt9hjFznzFCJuGSLYEVge_MScFyjJy2deMF_nOe7EY4FPWcNobPMwuL6txLA14ozytVNIEeSsl2RSgLYEq0370dYCwmeNsNGgOIo86R-D6BnHx6vUIjuxIIIkVDGcroUIl-KWng_qmjxWxyXufzqiUuCgbF2yu8eqgLmuhbyp38n6XA20aDzotvAFXmoH5sQB4otMDWUXHFtvA7Yu9THYcWltE0oE5SaDXwUy6uKCG0kFtP2fnYC6b-6G-BW_N2FdDxp1C-bM1ZgndL0uqB-YHKq4C-MMkqOX9_EM61xXeUE6nlssTglH0f9k-ydAP_AQ&amp;type=css&amp;k=d10885102131af326f4b320a0f26c1908e505ea4&amp;t=1547093551">
<link rel="stylesheet" type="text/css" href="//slowand.com//ind-script/optimizer.php?filename=rZHbDcIwDEUHKL_MYfGQGIQJ3MQkpokd1Qmo29OWDSA__vH10bkyRM0E5IZmNBugCJ1PtwuUNiZ2Q6w5gXkaPBkHAZtYruDMIKtviSDhoq1CbqmyRS33yKWwhMOaOUIfuFN5rfesUtzv3AUlPHnHR0JPc1dFrBR0XrroPVTrP3pYigGLVQwz5jf7QHVfnb6zS_G8bO-GEWUaVaeezIwsG-8D&amp;type=css&amp;k=f53659961fbe6a5f77148b697e8faa567b7da93b&amp;t=1566806466">

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

<!-- 회원정보 확인  -->

<script language="javascript">
   function validate() {
       
       var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
   	   var re3 =  /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$/
   	   
       var passwd = document.getElementById("passwd");
       var email = document.getElementById("email");

	   if(!check(re3,passwd,"숫자,영문,특수문자가 모두 포함되어야 합니다")){
		   user_passwd_confirm.value="";
		   return false;
       }

       if(user_passwd_confirm.value.length==0){
   		alert("비밀번호를 입력하세요");
   		user_passwd_confirm.focus();
   		return false;
   		}

   	   if(passwd.value != user_passwd_confirm.value){
   		alert("비밀번호가 일치하지 않습니다.");
   		passwd.value="";
   		user_passwd_confirm.value="";
   		passwd.focus();
   		return false;
   	   }

       if(join.name.value=="") {
           alert("이름을 입력해 주세요");
           join.name.focus();
           return false;
       }
       if(postcode.value.length==0){
   		alert("주소를 입력하세요")
   		f.postcode.focus();
   		return false;
   	}
   	if(address.value.length==0){
   		alert("주소를 입력하세요")
   		f.address.focus();
   		return false;
   	}
   	if(detailaddress.value.length==0){
   		alert("주소를 입력하세요")
   		f.detailaddress.focus();
   		return false;
   	}
   	if(phone.value.length==0){
   		alert("전화번호를 입력하세요");
   		phone.focus();
   		return false;
   	}
    if(email.value=="") {
        alert("이메일을 입력해 주세요");
        email.focus();
        return false;
    }

    if(!check(re2, email, "적합하지 않은 이메일 형식입니다.")) {
        return false;
    }

       
      }

   function check(re, what, message) {
       if(re.test(what.value)) {
           return true;
       }
       alert(message);
       what.value = "";
       what.focus();
       //return false;
   }
</script>

<!-- 탈퇴 처리 확인 -->
<script language="javascript">
   function validate1() {
       
       var passwd = document.getElementById("passwd");
      
       if(user_passwd_confirm.value.length==0){
   		alert("비밀번호 확인을 입력하세요");
   		user_passwd_confirm.focus();
   		return false;
   		}

   	   if(passwd.value != user_passwd_confirm.value){
   		alert("비밀번호가 일치하지 않습니다.");
   		passwd.value="";
   		user_passwd_confirm.value="";
   		passwd.focus();
   		return false;
   	   }
   	   
   	   if(delpasswd.value != passwd.value){
   		alert("비밀번호가 일치하지 않습니다.");
   		passwd.value="";
   		user_passwd_confirm.value="";
   		passwd.focus();
   		return false;   
   	   }
}

</script>



</head>
<body id="cmn">

<div id="wrap">    
    <!-- 상단카테고리 -->
    

<div id="header">
 
<!-- snap common script contact mail: support@snapvi.co.kr -->
<span id="solutiontype" style="display:none;">cafe24</span>
<span id="sfsnapfit_store_id" style="display:none">grumy</span>
<div>
<input id="sf_draw_type" type="hidden" value="pc">
<input id="sf_store_name" type="hidden" value="slowand">
</div>
<div style="display: none" class="xans-element- xans-layout xans-layout-statelogon "><span id="sf_user_name" class="xans-member-var-id" style="display:none;">yke3075</span>
</div>
</div>
</div>

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
		
<form id="frm" name="frm" action="update"
	onsubmit="return validate();" method="post" enctype="multipart/form-data">

<input type="hidden" name="id" value="${dto.id }">

<div class="mypage_top_outer">
<p class="xans-element- xans-myshop xans-myshop-asyncbenefit mypage_top ">
<strong>
<span><span class="xans-member-var-name">${dto.name }</span></span>
</strong>
 님은 현재 
 <c:choose>
	<c:when test="${dto.grade == 'H' }">
<strong>
<span class="xans-member-var-group_name">일반 회원</span>
<span class="myshop_benefit_ship_free_message"></span>
</strong>
	</c:when>
	<c:when test="${dto.grade == 'A' }">
<strong>
<span class="xans-member-var-group_name">관리자</span>
<span class="myshop_benefit_ship_free_message"></span>
</strong>
	</c:when>
	<c:when test="${dto.grade == 'S' }">
<strong>
<span class="xans-member-var-group_name">VIP</span>
<span class="myshop_benefit_ship_free_message"></span>
</strong>
	</c:when>
</c:choose>
  입니다.
</p>

<div class="xans-element- xans-myshop xans-myshop-bankbook ">
<ul>

            
<li>
<strong class="title">
<a href="/myshop/mileage/historyList.html">POINT</a>
</strong>
<strong class="data">
<a href="/myshop/mileage/historyList.html">${dto.point }원</a>
</strong>
</li>

<li class="etc ">
<strong class="title">
<a href="/myshop/coupon/coupon.html">COUPON</a></strong>
<strong class="data">
<a href="/myshop/coupon/coupon.html">5<span>개</span></a>
</strong>
<a href="${pageContext.request.contextPath}/myshop/coupon/coupon.html"></a>
</li>
</ul>
</div>
</div>

<div id="myshopMain" class="xans-element- xans-myshop xans-myshop-main">
<div class="shopMain order">
<a href="/myshop/order/list.html">주문내역</a>
</div>
<div class="shopMain wishlist">
<a href="/myshop/wish_list.html">관심상품</a>
</div>
<div class="shopMain likeIt displaynone">
<a href="">좋아요</a>
</div>
<div class="shopMain mileage">
<a href="/myshop/mileage/historyList.html">적립금</a>
</div>
<div class="shopMain coupon  ">
<a href="/myshop/coupon/coupon.html">쿠폰</a>
</div>
<div class="shopMain view">
<a href="/product/recent_view_product.html">최근 본 상품</a>
</div>
<div class="shopMain deposits displaynone ">
<a href="/myshop/deposits/historyList.html">예치금</a>
</div>
<div class="shopMain board">
<a href="/myshop/board_list.html">내가 쓴 게시글</a>
</div>
<div class="shopMain address">
<a href="/myshop/addr/list.html">배송 주소록 관리</a>
</div>
<div class="shopMain profile">
<a href="${pageContext.request.contextPath}/member/update">회원 정보 수정</a>
</div>

</div>
<div class="titleArea">
    <h2>EDIT PROFILE</h2>
    <h3>회원 정보 수정</h3>
</div>


<h3 class=" ">기본정보</h3>
<p class="required ">
<img src="//slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수"> 
필수입력사항
</p>
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
</th>
<td>
${dto.id}
</td>
</tr>

<tr>
<th scope="row">비밀번호 
<img src="//slowand.com//web/upload/yangji_pc_crumb/req_check.png" 
class="" alt="필수">
</th>
<td>
<input id="passwd" name="passwd" fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" 
fw-label="비밀번호" fw-msg="" autocomplete="off" maxlength="16" 
0="disabled" value="" type="password"> 
(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)
</td>
</tr>
<tr class="">
<th scope="row">
비밀번호 확인 
<img src="//slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수"></th>
<td>
<input id="user_passwd_confirm" name="user_passwd_confirm" 
fw-filter="isFill&amp;isMatch[passwd]" fw-label="비밀번호 확인" 
fw-msg="비밀번호가 일치하지 않습니다." autocomplete="off" maxlength="16" 
0="disabled" value="" type="password"> 
<span id="pwConfirmMsg"></span>
</td>
</tr>

<th scope="row" id="">이름 
<img src="//slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수"></th>
<td>
<input id="name" name="name" fw-filter="isFill&amp;isMax[30]" 
fw-label="이름" fw-msg="" class="ec-member-name" placeholder="" 
maxlength="30" readonly="readonly" value="${dto.name }" type="text">
</td>
</tr>

<tr class="">
<th scope="row">주소 
<img src="//slowand.com//web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수"></th>
<td>
<input id="postcode" name="postcode" fw-filter="isLengthRange[1][14]" 
fw-label="우편번호1" fw-msg="" class="inputTypeText" placeholder="" 
readonly="readonly" maxlength="14" value="${dto.postcode }" type="text">                    
<a href="#" onclick="sample6_execDaumPostcode()" 
id="postBtn" class="yg_btn_28 yg_btn5" alt="우편번호">주소검색</a><br>
<input id="address" name="address" fw-filter="" fw-label="주소" fw-msg="" 
class="inputTypeText" placeholder="" readonly="readonly" 
value="${dto.address }" type="text"> 기본주소<br>
<input id="detailaddress" name="detailaddress" fw-filter="" 
fw-label="주소" fw-msg="" class="inputTypeText" placeholder="" 
value="${dto.detailaddress }" type="text"> 나머지주소 (선택입력가능)
</td>
</tr>

<tr>
<th scope="row">휴대전화 
<img src="//slowand.com//web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수"></th>
<td>
<input id="phone" name="phone" maxlength="11" fw-filter="isNumber" 
fw-label="휴대전화" fw-alone="N" fw-msg="" value="0${dto.phone}" type="text">
</td>
</tr>


<tr>
<th scope="row">이메일 
<img src="//slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수"></th>
<td>
<input id="email" name="email" fw-filter="isFill&amp;isEmail" 
fw-label="이메일" fw-alone="N" fw-msg="" value="${dto.email }" type="text"> 
</td>
</tr>


</tbody>
</table>
</div>

<h3 class=" ">추가정보</h3>
<div class="ec-base-table typeWrite ">
        <table border="1" summary="">
<caption>회원 추가정보</caption>
        <colgroup>
<col style="width:150px;">
<col style="width:auto;">
</colgroup>
<tbody>


<tr class="">
<th scope="row">생년월일
<img src="//slowand.com//web/upload/yangji_pc_crumb/req_check.png" class="" alt="필수"></th>
<td>
<input id="birth" name="birth" fw-filter="isFill" fw-label="생년월일" 
fw-msg="" class="inputTypeText" placeholder="" maxlength="8" 
value="${dto.birth }" type="text">

</td>
</tr>

</tbody>
</table>
</div>

	<div class="ec-base-button justify">
	<button type="submit" class="yg_btn_140">회원정보수정</button>
	<button type="reset" class="yg_btn_140 yg_btn3">취소</button>
	</div>
	
</form>
</div>
</div>

<form action="delete" class="form-horizontal" method="post" id="delfrm"
name="delfrm" onsubmit="return validate1();" enctype="multipart/form-data">
<input type="hidden" name="id" id="id" value="${dto.id }">
<input type="hidden" name="delpasswd" id="delpasswd" value="${dto.passwd }">
<div class="ec-base-button justify">
<button type="submit" class="yg_btn_140">탈퇴</button>
</div>
</form>      

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

<div id="fap_common_top_script" style="display:none;">

</div>

<script type="text/javascript" src="//slowand.com/ind-script/i18n.php?lang=ko_KR&amp;domain=front&amp;v=1911201087" charset="utf-8"></script>
<script type="text/javascript" src="//slowand.com/ind-script/optimizer.php?filename=tZXNbtswDMdfwNc9h5Bhh51boKcNAzb0AWiJtplQokpJbbOnH5N1Q7PNSQ0v8EEAwd-fEr_sJonoNu_VDQoRn0R3TrFIU49uWxxtPqZuW965c36NMvid2z401P3Lsek-2HdCZpXR4BP9kpVSHS47BvEtYqp3ovFWUlVhRr3MDWrO7hmSvSVV1KxYF3IVY2ao-G8IcnafpSdG9_UV7yVGSa5V4kVclNDMVJ4oLws4tOQrWUjzC83XLoquVDhzCabe3f8s-2sJhu97FgiLoNgqHOJ-6Qvq41xxZuAsvB-I-a0VDThA43pIQYmg9QZS-jPkxRbHZ-uhBFxeDF0_0hFaq-NFdrRaJZBNSrGMlrVKCIXSuFYlYoUAFea78UZAw0ldzdr1B-s89G2SfMLcHSt8e5y8-7ODN4MWBPXTov6rMAz2Qlq6JTO3kWy5PAKT5Ub0V7J-G1YLHuqQQvlb2BSyNQdeL8KEnPGKL5ggBb5mAFtDZHW9mr6trPof7s_iwbb4Ti6vv5m-estA2b9vFN1_olIN_gE&amp;type=js&amp;k=81cead6b99ffa3a78f6503851e2d2fd76af38afb&amp;t=1574024793"></script>
<script type="text/javascript" src="//slowand.com/ind-script/optimizer.php?filename=rZRLTsMwEIb3NFvOYcENSgQSqIWKChbsHGeSTGN7rLEDCqcnpK1EBE1bh81Ysfz9mbeoyIC4umbhmEqWRjB4aliB2Hghm1B5r_dnUoHMk42_FL8o6ZyY714__1ZIvDrMLVtfkRtgd0w2iO9rh7a8twX9jWvMxAs6qeoBvuzedbzpj8SgjacvAhr4JAuHZX5mrAmoe5O8S425DMRR0IM7B3vdY3dSdbaNYtMu5UxaA4-UCkwGPMiW6a9egbFol5Shhgj8gdCmFaj6EVUdwadkDNkI8DbH8N236_Viiturjyn0rZFdISKi7mHvowMvGaAfkTg-AluAfIe5UtSM_fUNnaIcBnyBNocThul4NaWV5VD7AzJN5VlLIm2Ywaq2X1Izx6hgAq92X7OC2Mgw1ZP_kukXxNGMV8HorokwIPiz0i59a9XWRnPbtorGn7hrKjU6AeMCN9LXEKYrjHTQyRorprxR8Z6k1Diy21i-AA&amp;type=js&amp;k=7c4101d5a9eb320c1a793a7c37523d01bbfe1968&amp;t=1574629648"></script>
<script type="text/javascript" src="//slowand.com/ind-script/optimizer.php?filename=rZNBbgIxDEUPMGx7jgiK1HVppXYxqAgqdW0Sd8ZMEqdxAprbd4Au2JJ0E0WK_su3_a16dqjmi6hC5C6CUxCCWoOHDtUWhXPUqA6iQEavr-dsTRan99lBHlSJ_hUDC6Vi_RdJ35LUATRnX06IqLFCvr3IPzmBfany8RENxmL1Cj1-VwxiBTJgamGs8PAWwZRH6TkndpBIXzC7nk_FqHW2iTYccihHjC0NuIlssk51g23piJb8wL4uG-_TnnAcS80ESH1ki80RLBmYUOUVMZi7xOHax7s0cpppsPY2j6ibLBgnM97jYv70qELeW9JNn5xVYrAxKNR5JQP55Rnipn8tKgsj56Q0JOymFhYT_zh7ENJn_OVS40-zc7e5qK3wJ5MemiPh6f-Y7rxN0nPY9RQC-a6yYBE7EX4B&amp;type=js&amp;k=629d5282c8f608c63ae4bd0c93fc3b0a877cfb74&amp;t=1573420409"></script>

</body>
</html>