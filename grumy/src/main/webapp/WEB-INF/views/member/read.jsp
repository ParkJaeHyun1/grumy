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
    <h2>PROFILE</h2>
    <h3>회원 정보</h3>
</div>

<h3 class=" ">기본정보</h3>
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
<td>${dto.id }</td> 
</th>
</tr>
<tr>
<th scope="row" id="">비밀번호
</th>
<td>${dto.passwd }</td>
</tr>
<tr>
<th scope="row" id="">이름 
</th>
<td>${dto.name }</td>
</tr>
<tr class="">
<th scope="row">우편번호 
</th>
<td>${dto.postcode }<br>
${dto.address }<br>
${dto.detailaddress }
</td>
</tr>

<tr class="">
<th scope="row">휴대전화 
</th>
<td>
0${dto.phone }
</td>
</tr>
               
<tr>
<th scope="row">이메일 
</th>
<td>
${dto.email }
</td>
</tr>

<tr>
<th scope="row">생년월일
</th>
<td>
${dto.birth }
</td>
</tr>

<tr>
<th scope="row">포인트
</th>
<td>
${dto.point }
</td>
</tr>

<tr>
<th scope="row">회원등급
</th>
<td>
<c:choose>
		<c:when test="${dto.grade=='A'}">
		관리자
		</c:when>
		<c:when test="${dto.grade=='H'}">
		일반회원 
		</c:when>
		<c:when test="${dto.grade=='S'}">
		VIP
		</c:when>
</c:choose>
</td>
</tr>

		


</tbody>
</table> 
</div>





        
	<div class="ec-base-button">
<a href="${pageContext.request.contextPath}/member/delete" id="eLeaveLayerBtn" class="yg_btn_30" alt="탈퇴">회원삭제</a>
<a href="javascript:history.back()" 
class="yg_btn_30 yg_btn3" alt="이전페이지">이전페이지</a>
<a href="${pageContext.request.contextPath}/" 
class="yg_btn_30 yg_btn3" alt="홈으로">홈으로</a>
	</div>


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