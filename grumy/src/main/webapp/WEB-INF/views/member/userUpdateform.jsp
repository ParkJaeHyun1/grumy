<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</head>
<body id="cmn">

	<div id="wrap">    
  
	<div class="myList">
    
                    
	<div class="xans-element- xans-layout xans-layout-statelogon ">
	<a href="/exec/front/Member/logout/" class="log">LOGOUT</a>
	<a href="/member/modify.html">MODIFY</a>
	<a href="/myshop/order/list.html">ORDER</a>
	<a href="/myshop/index.html">MY PAGE</a>
	<a class="1 cart" href="/order/basket.html">CART</a>
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
            



<div class="mypage_top_outer">
<p class="xans-element- xans-myshop xans-myshop-asyncbenefit mypage_top ">
<strong>
<span><span class="xans-member-var-name">유경은</span></span>
</strong>
 님은 현재 
<strong>
<span class="xans-member-var-group_name">VIP</span>
<span class="myshop_benefit_ship_free_message"></span>
</strong>
  입니다.
</p>
<div class="xans-element- xans-myshop xans-myshop-bankbook ">
<ul>
<li class="xans-element- xans-layout xans-layout-shoppinginfo ">
<strong class="title"><a href="/myshop/wish_list.html">WISH</a></strong>
<strong class="data ">
<a href="/myshop/wish_list.html">
<span id="xans_myshop_interest_prd_cnt">17개</span>
</a>
</strong>
</li>
<li>
<strong class="title">
<a href="/myshop/mileage/historyList.html">POINT</a>
</strong>
<strong class="data">
<a href="/myshop/mileage/historyList.html">33,782원</a></strong>
</li>
<li class="etc ">
<strong class="title">
<a href="/myshop/coupon/coupon.html">COUPON</a>
</strong>
<strong class="data">
<a href="/myshop/coupon/coupon.html">5<span>개</span></a>
</strong>
<a href="/myshop/coupon/coupon.html"></a>
</li>
</ul>
</div>
</div>

<div class="titleArea">
    <h2>EDIT PROFILE</h2>
    <h3>회원 정보 수정</h3>
</div>

<div class="xans-element- xans-member xans-member-updateeventlogon ec-base-box displaynone "><strong class="title">회원정보 수정 시 을 지급하는 이벤트를 진행중입니다.</strong>
<ul>
<li>이벤트 기간 : </li>
         <li>아래의 조건을 충족한 경우  지급됩니다.<br></li>
    </ul>
</div>

<form id="editForm" name="editForm" 
action="/exec/front/Member/edit/" method="post" 
target="_self" enctype="multipart/form-data">

<div class="displaynone">
        <h3>회원인증</h3>
        <div class="ec-base-table typeWrite">
            <table border="1" summary="">
<caption>회원인증</caption>
            <colgroup>
<col style="width:150px;">
<col style="width:auto;">
</colgroup>
<tbody>
<tr class="displaynone">
<th scope="row">회원구분</th>
<td></td>
</tr>
<tr>
<th scope="row">인증여부</th>
<td>
<strong class="txtEm">미인증</strong>
<ul class="certifInfo">
</ul>
</td>
</tr>
<tr class="">
<th scope="row">회원인증</th>
<td>
<div class="certifForm" id="ipinWrap">
<a href="#none" onclick="">
<img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_check6.gif" alt="아이핀 인증"></a>
<p class="certifInfo">아이핀이란, 회원님의 개인정보 보호를 위해 웹사이트에 주민등록번호를 제공하지 않고 본인임을 확인하는 인터넷상의 개인식별번호 서비스입니다.<br>아이핀을 통한 가입을 원하시면 아이핀 인증 버튼을 눌러 진행해 주십시오.</p>
</div>
<div class="certifForm" id="mobileWrap">
<a href="#none" onclick="">
<img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_check5.gif" alt="휴대폰 인증"></a>
<p class="certifInfo">본인 명의의 휴대폰으로 본인인증을 진행합니다.</p>
</div>
<div class="certifForm" id="emailWrap">
<p class="certifInfo">기본정보 &gt; 이메일 항목에 입력하신 정보로 본인인증을 진행합니다.
<br>
정보수정 후에 입력하신 이메일 주소로 인증 메일이 발송되오니, 확인해 주시기 바랍니다.</p>
</div>
</td>
</tr>
</tbody>
</table>
</div>
    </div>
<h3 class=" ">기본정보</h3>
<p class="required "><img src="/web/upload/yangji_pc_crumb/req_check.png" alt="필수"> 필수입력사항</p>
<div class="ec-base-table typeWrite">
        <table border="1" summary="">
<caption>회원 기본정보</caption>
        <colgroup>
<col style="width:150px;">
<col style="width:auto;">
</colgroup>
<tbody>
<tr>
<th scope="row">아이디 <img src="/web/upload/yangji_pc_crumb/req_check.png" alt="필수"></th>
                <td>
                    <input id="member_id" name="member_id" fw-filter="isFill&amp;isFill&amp;isMin[4]&amp;isMax[16]&amp;isIdentity" fw-label="아이디" fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" value="" type="text">                     (영문소문자/숫자, 4~16자)
                </td>
            </tr>
<tr>
<th scope="row">비밀번호 <img src="/web/upload/yangji_pc_crumb/req_check.png" class="" alt="필수"></th>
                <td><input id="passwd" name="passwd" fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="비밀번호" fw-msg="" autocomplete="off" maxlength="16" 0="disabled" value="" type="password"> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)</td>
            </tr>
<tr class="">
<th scope="row">비밀번호 확인 <img src="/web/upload/yangji_pc_crumb/req_check.png" alt="필수"></th>
                <td><input id="user_passwd_confirm" name="user_passwd_confirm" fw-filter="isFill&amp;isMatch[passwd]" fw-label="비밀번호 확인" fw-msg="비밀번호가 일치하지 않습니다." autocomplete="off" maxlength="16" 0="disabled" value="" type="password"> <span id="pwConfirmMsg"></span>
</td>
            </tr>
<tr class="displaynone">
<th scope="row">새 비밀번호</th>
                <td><input id="new_passwd" name="new_passwd" fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="새 비밀번호" fw-msg="" maxlength="16" 0="disabled" value="" type="password"> (영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)</td>
            </tr>
<tr class="displaynone">
<th scope="row">새 비밀번호 확인</th>
                <td><input id="new_passwd_confirm" name="new_passwd_confirm" fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="비밀번호" fw-msg="" maxlength="16" 0="disabled" value="" type="password"> <span id="new_pwConfirmMsg"></span>
</td>
            </tr>
<tr class="displaynone">
<th scope="row">비밀번호 확인 질문 <img src="/web/upload/yangji_pc_crumb/req_check.png" alt="필수"></th>
                <td><select id="hint" name="hint" fw-filter="" fw-label="hint" fw-msg="">
<option value="hint_01" selected="selected">기억에 남는 추억의 장소는?</option>
<option value="hint_02">자신의 인생 좌우명은?</option>
<option value="hint_03">자신의 보물 제1호는?</option>
<option value="hint_04">가장 기억에 남는 선생님 성함은?</option>
<option value="hint_05">타인이 모르는 자신만의 신체비밀이 있다면?</option>
<option value="hint_06">추억하고 싶은 날짜가 있다면?</option>
<option value="hint_07">받았던 선물 중 기억에 남는 독특한 선물은?</option>
<option value="hint_08">유년시절 가장 생각나는 친구 이름은?</option>
<option value="hint_09">인상 깊게 읽은 책 이름은?</option>
<option value="hint_10">읽은 책 중에서 좋아하는 구절이 있다면?</option>
<option value="hint_11">자신이 두번째로 존경하는 인물은?</option>
<option value="hint_12">친구들에게 공개하지 않은 어릴 적 별명이 있다면?</option>
<option value="hint_13">초등학교 때 기억에 남는 짝꿍 이름은?</option>
<option value="hint_14">다시 태어나면 되고 싶은 것은?</option>
<option value="hint_15">내가 좋아하는 캐릭터는?</option>
</select></td>
            </tr>
<tr class="displaynone">
<th scope="row">비밀번호 확인 답변 <img src="/web/upload/yangji_pc_crumb/req_check.png" alt="필수"></th>
                <td><input id="hint_answer" name="hint_answer" fw-filter="" fw-label="비밀번호 확인시 답변" fw-msg="" class="inputTypeText" placeholder="" value="" type="text"></td>
            </tr>
<tr style="display:">
<th scope="row" id="">이름 <img src="/web/upload/yangji_pc_crumb/req_check.png" alt="필수"></th>
                <td><input id="name" name="name" fw-filter="isFill&amp;isMax[30]" fw-label="이름" fw-msg="" class="ec-member-name" placeholder="" maxlength="30" readonly="readonly" value="유경은" type="text"></td>
            </tr>
<tr class="displaynone">
<th scope="row">이름(영문) <img src="/web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수"></th>
                <td><input id="name_en" name="name_en" fw-filter="isMax[30]" fw-label="이름(영문)" fw-msg="" class="ec-member-name" placeholder="" maxlength="30" value="" type="text"> (이름 - 성 형식으로 입력해 주세요.)</td>
            </tr>
<tr class="displaynone">
<th scope="row"></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row">법인명 <img src="/web/upload/yangji_pc_crumb/req_check.png" alt="필수"></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row">법인번호 <img src="/web/upload/yangji_pc_crumb/req_check.png" alt="필수"></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row">상호명 <img src="/web/upload/yangji_pc_crumb/req_check.png" alt="필수"></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row">사업자번호 <img src="/web/upload/yangji_pc_crumb/req_check.png" alt="필수"></th>
                <td></td>
            </tr>
<tr class="displaynone">
<th scope="row">국적 <img src="/web/upload/yangji_pc_crumb/req_check.png" alt="필수"></th>
                <td></td>
            </tr>
<tr class="">
<th scope="row">주소 <img src="/web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수"></th>
                <td>
                    <input id="postcode1" name="postcode1" fw-filter="isLengthRange[1][14]" fw-label="우편번호1" fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" maxlength="14" value="" type="text">                    <a href="#none" onclick="ZipcodeFinder.Opener.bind('postBtn', 'postcode1', 'postcode2', 'addr1', 'layer', 'ko_KR');" id="postBtn" class="yg_btn_28 yg_btn5" alt="우편번호">우편번호</a><br>
                    <input id="addr1" name="addr1" fw-filter="" fw-label="주소" fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" value="" type="text"> 기본주소<br>
                    <input id="addr2" name="addr2" fw-filter="" fw-label="주소" fw-msg="" class="inputTypeText" placeholder="" value="" type="text"> 나머지주소 (선택입력가능)                </td>
            </tr>
<tr class="">
<th scope="row">일반전화 <img src="/web/upload/yangji_pc_crumb/req_check.png" class="" alt="필수"></th>
                <td><select id="phone1" name="phone[]" fw-filter="isNumber&amp;isFill&amp;isNumber" fw-label="일반전화" fw-alone="N" fw-msg="">
<option value="02">02</option>
<option value="031">031</option>
<option value="032">032</option>
<option value="033">033</option>
<option value="041">041</option>
<option value="042">042</option>
<option value="043">043</option>
<option value="044">044</option>
<option value="051">051</option>
<option value="052">052</option>
<option value="053">053</option>
<option value="054">054</option>
<option value="055">055</option>
<option value="061">061</option>
<option value="062">062</option>
<option value="063">063</option>
<option value="064">064</option>
<option value="0502">0502</option>
<option value="0503">0503</option>
<option value="0504">0504</option>
<option value="0505">0505</option>
<option value="0506">0506</option>
<option value="0507">0507</option>
<option value="070">070</option>
<option value="010">010</option>
<option value="011">011</option>
<option value="016">016</option>
<option value="017">017</option>
<option value="018">018</option>
<option value="019">019</option>
</select>-<input id="phone2" name="phone[]" maxlength="4" fw-filter="isNumber&amp;isFill&amp;isNumber" fw-label="일반전화" fw-alone="N" fw-msg="" value="" type="text">-<input id="phone3" name="phone[]" maxlength="4" fw-filter="isNumber&amp;isFill&amp;isNumber" fw-label="일반전화" fw-alone="N" fw-msg="" value="" type="text"></td>
            </tr>
<tr class="">
<th scope="row">휴대전화 <img src="/web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수"></th>
                <td><select id="mobile1" name="mobile[]" fw-filter="isNumber" fw-label="휴대전화" fw-alone="N" fw-msg="">
<option value="010">010</option>
<option value="011">011</option>
<option value="016">016</option>
<option value="017">017</option>
<option value="018">018</option>
<option value="019">019</option>
</select>-<input id="mobile2" name="mobile[]" maxlength="4" fw-filter="isNumber" fw-label="휴대전화" fw-alone="N" fw-msg="" value="" type="text">-<input id="mobile3" name="mobile[]" maxlength="4" fw-filter="isNumber" fw-label="휴대전화" fw-alone="N" fw-msg="" value="" type="text"></td>
            </tr>
<tr class="">
<th scope="row">SMS 수신여부 <img src="/web/upload/yangji_pc_crumb/req_check.png" alt="필수"></th>
                <td><input id="is_sms0" name="is_sms" fw-filter="isFill" fw-label="is_sms" fw-msg="" value="T" type="radio"><label for="is_sms0">수신함</label>
<input id="is_sms1" name="is_sms" fw-filter="isFill" fw-label="is_sms" fw-msg="" value="F" type="radio" checked="checked"><label for="is_sms1">수신안함</label><p>쇼핑몰에서 제공하는 유익한 이벤트 소식을 SMS로 받으실 수 있습니다.</p>
</td>
            </tr>
<tr>
<th scope="row">이메일 <img src="/web/upload/yangji_pc_crumb/req_check.png" alt="필수"></th>
                <td>
                    <input id="email1" name="email1" fw-filter="isFill" fw-label="이메일" fw-alone="N" fw-msg="" class="mailId" value="" type="text">@<input id="email2" name="email2" fw-filter="isFill" fw-label="이메일" fw-alone="N" fw-msg="" class="mailAddress" readonly="readonly" value="" type="text"><select id="email3" fw-filter="isFill" fw-label="이메일" fw-alone="N" fw-msg="">
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
</select> <span id="emailMsg"></span>
                    <p class="displaynone">이메일 주소 변경 시 로그아웃 후 재인증을 하셔야만 로그인이 가능합니다.<br>인증 메일은 24시간 동안 유효하며, 유효 시간이 만료된 후에는 가입 정보로 로그인 하셔서 재발송 요청을 해주시기 바랍니다.</p>
                </td>
            </tr>
<tr class="">
<th scope="row">이메일 수신여부 <img src="/web/upload/yangji_pc_crumb/req_check.png" alt="필수"></th>
                <td><input id="is_news_mail0" name="is_news_mail" fw-filter="isFill" fw-label="is_news_mail" fw-msg="" value="T" type="radio"><label for="is_news_mail0">수신함</label>
<input id="is_news_mail1" name="is_news_mail" fw-filter="isFill" fw-label="is_news_mail" fw-msg="" value="F" type="radio" checked="checked"><label for="is_news_mail1">수신안함</label><p>쇼핑몰에서 제공하는 유익한 이벤트 소식을 이메일로 받으실 수 있습니다.</p>
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
<tr class="displaynone">
<th scope="row">별명
<img src="/web/upload/yangji_pc_crumb/req_check.png" 
 class="displaynone" alt="필수">
</th>
<td>
<input id="nick_name" name="nick_name" fw-filter="" 
fw-label="별명" fw-msg="" class="inputTypeText" 
placeholder="" maxlength="20" value="" type="text"> 
(한글2~10자/영문 대소문자4~20자/숫자 혼용가능)
</td>
</tr>
<tr class="displaynone">
<th scope="row">성별 
<img src="/web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수">
</th>
<td>
<input id="is_sex0" name="is_sex" fw-filter="" fw-label="성별" 
fw-msg="" 0="disabled" value="M" type="radio">
<label for="is_sex0">남자</label>
<input id="is_sex1" name="is_sex" fw-filter="" fw-label="성별" 
fw-msg="" 0="disabled" value="F" type="radio">
<label for="is_sex1">여자</label>
</td>
</tr>
<tr class="">
<th scope="row">생년월일 
<img src="/web/upload/yangji_pc_crumb/req_check.png" class="" alt="필수">
</th>
<td>
<input id="birth_year" name="birth_year" fw-filter="isFill" 
fw-label="생년월일" fw-msg="" class="inputTypeText" 
placeholder="" maxlength="4" value="" type="text"> 년 
<input id="birth_month" name="birth_month" fw-filter="isFill" 
fw-label="생년월일" fw-msg="" class="inputTypeText" 
placeholder="" maxlength="2" value="" type="text"> 월 
<input id="birth_day" name="birth_day" fw-filter="isFill" 
fw-label="생년월일" fw-msg="" class="inputTypeText" 
placeholder="" maxlength="2" value="" type="text"> 일 
<span class="gIndent20 ">
<input id="is_solar_calendar0" name="is_solar_calendar" fw-filter="isFill" 
fw-label="생년월일" fw-msg="" value="T" type="radio" checked="checked">
<label for="is_solar_calendar0">양력</label>
<input id="is_solar_calendar1" name="is_solar_calendar" fw-filter="isFill" 
fw-label="생년월일" fw-msg="" value="F" type="radio">
<label for="is_solar_calendar1">음력</label>
</span>
</td>
</tr>

<tr class="displaynone">
<th scope="row"> 
<img src="/web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수"></th>
<td>
<input id="add1" name="add1" fw-filter="" fw-label="추가항목1" 
fw-msg="" class="inputTypeText" 
placeholder="" maxlength="30" value="" type="text">
</td>
</tr>
<tr class="displaynone">
<th scope="row"> 
<img src="/web/upload/yangji_pc_crumb/req_check.png" 
class="displaynone" alt="필수">
</th>
<td>
<input id="add2" name="add2" fw-filter="" fw-label="추가항목2" fw-msg="" class="inputTypeText" 
placeholder="" maxlength="30" value="" type="text"></td>
</tr>
<tr class="displaynone">
<th scope="row"> 
<img src="/web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수">
</th>
<td>
<input id="add3" name="add3" fw-filter="" fw-label="추가항목3" fw-msg="" class="inputTypeText" 
placeholder="" maxlength="30" value="" type="text">
</td>
</tr>
<tr class="displaynone">
<th scope="row"> 
<img src="/web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수">
</th>
<td>
<input id="add4" name="add4" fw-filter="" fw-label="추가항목4" 
fw-msg="" class="inputTypeText" 
placeholder="" maxlength="30" value="" type="text">
</td>
</tr>
<tr class="displaynone">
<th scope="row"> 
<img src="/web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수">
</th>
<td>
</td>
</tr>
<tr class="displaynone">
<th scope="row"> 
<img src="/web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수">
</th>
<td>
</td>
</tr>
<tr class="displaynone">
<th scope="row"> 
<img src="/web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수">
</th>
<td>
</td>
</tr>
<tr class="displaynone">
<th scope="row"> 
<img src="/web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수">
</th>
<td>
</td>
</tr>
<tr class="displaynone">
<th scope="row"> 
<img src="/web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수">
</th>
<td>
</td>
</tr>
<tr class="displaynone">
<th scope="row"> 
<img src="/web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수">
</th>
<td>
</td>
</tr>
<tr class="displaynone">
<th scope="row"> 
<img src="/web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수">
</th>
<td>
</td>
</tr>
<tr class="displaynone">
<th scope="row"> 
<img src="/web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수">
</th>
<td>
</td>
</tr>
<tr class="displaynone">
<th scope="row"> 
<img src="/web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수"></th>
<td>
</td>
</tr>
<tr class="displaynone">
<th scope="row"> 
<img src="/web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수">
</th>
<td>
</td>
</tr>


<tr class="displaynone">
<th scope="row">환불계좌 
<img src="/web/upload/yangji_pc_crumb/req_check.png" class="displaynone" alt="필수"></th>
                <td>
                    <span id=""></span> <a href="#none"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_account_change.gif" alt="환불계좌변경" id="id_has_bank_img" class="displaynone"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_account.gif" alt="환불계좌등록" id="id_reg_bank_img" class="displaynone"></a>
                </td>
            </tr>
</tbody>
</table>
</div>
<div class="displaynone">
        <h3>개인정보 제3자 제공 동의(선택)</h3>
<div class="ec-base-box typeThinBg agreeArea">
<div class="content">
                아래 내용의 동의 여부는 회원가입에 영향을 미치지 않습니다. 단, 동의 거부시 서비스 이용에 제한이 있을 수 있습니다.<br>
<br>
- 제공 받는 자 :<br>
<br>
- 제공 항목 :<br>
<br>
- 제공 목적 :<br>
<br>
- 보유 및 이용기간 :<br>
</div>
<p class="check"><span>개인정보 제3자 제공에 동의하십니까?</span> 
<input id="agree_information_check0" name="agree_information_check[]" fw-filter="" fw-label="개인정보 제3자 제공 동의" fw-msg="" value="1" type="checkbox">
<label for="agree_information_check0">동의함</label>
</p>
</div>
</div>
<div class="displaynone">
        <h3>개인정보 처리 위탁 동의(선택)</h3>
<div class="ec-base-box typeThinBg agreeArea">
<div class="content">
                아래 내용의 동의 여부는 회원가입에 영향을 미치지 않습니다. 단, 동의 거부시 서비스 이용에 제한이 있을 수 있습니다.<br>
<br>
- 위탁받는 자(수탁업체) :<br>
<br>
- 위탁업무의 내용:<br>
</div>
	<p class="check"><span>개인정보 처리 위탁에 동의하십니까?</span> 
<input id="agree_consignment_check0" name="agree_consignment_check[]" 
fw-filter="" fw-label="개인정보 처리 위탁 동의" fw-msg="" 
value="1" type="checkbox">
<label for="agree_consignment_check0">동의함</label>
	</p>
</div>
</div>

<div class="ec-base-button justify">
<a href="#none" class="yg_btn_140 yg_btn1 yg_btn_border_444" 
onclick="" alt="회원정보수정">회원정보수정</a>
<a href="/index.html" class="yg_btn_140 yg_btn4" alt="취소">취소</a>
<span class="gRight">
<a href="#none" class="yg_btn_140 yg_btn3" 
onclick="" alt="회원탈퇴">회원탈퇴</a>
</span>
</div>

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
<a href="#none" id="eLeaveLayerBtn" class="yg_btn_30" alt="탈퇴">탈퇴</a>
<a href="#none" onclick="$('#eLeaveLayer').hide();" 
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