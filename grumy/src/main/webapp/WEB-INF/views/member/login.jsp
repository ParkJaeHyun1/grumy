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

<title>grumy</title>

<script type="text/javascript" id="AuthSSLContainer" charset="utf-8" src="https://login2.cafe24ssl.com/crypt/AuthSSLManagerV2.php?auth_mode=decryptClient&amp;auth_callbackName=openAgreementLayerStep2&amp;auth_string=&amp;dummy=1574068258771"></script>

<style type="">
	.inputTypeText{
		width: 200px;
		heigh: 50px;
		}
</style>
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
    	<h2>LOGIN</h2>
    	<h3>로그인</h3>
	</div>

<form id="member_form_9781456108" name="" 
action="${pageContext.request.contextPath }/member/login" method="post" 
target="_self" enctype="multipart/form-data">

<input id="returnUrl" name="returnUrl" value="https://slowand.com/" 
type="hidden">
<input id="forbidIpUrl" name="forbidIpUrl" value="/index.html" 
type="hidden">
<input id="certificationUrl" name="certificationUrl" 
value="/intro/adult_certification.html?returnUrl=" type="hidden">
<input id="sIsSnsCheckid" name="sIsSnsCheckid" value="" type="hidden">
<input id="sProvider" name="sProvider" value="" type="hidden">
<div class="xans-element- xans-member xans-member-login ">
   
<div class="login">        
	
	<fieldset style=text-align:center;>
	
	<legend>회원로그인</legend>

    
    <label class="id ePlaceholder" title="ID">
    <input id="id" name="id" fw-filter="isFill" fw-label="아이디" fw-msg="" 
    class="inputTypeText" placeholder="ID" value='${c_id_val }' type="text">
    </label>
    <br>
    <label class="password ePlaceholder" title="PASSWORD">
    <input id="passwd" name="passwd" class="inputTypeText"
    fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="패스워드" fw-msg="" autocomplete="off" 
    value="" type="password" placeholder="PASSWORD">
    </label>            
    <br>
    <a href="#" class="yg_btn_140 yg_btn3 yg_btn5" 
    onclick="document.getElementById('member_form_9781456108').submit();"
	alt="로그인" style="background:#a18266">로그인</a>
    
	<br>
    <br>
    <br>   
   
	<ul class="find">
	<a href="${pageContext.request.contextPath}/member/find_id" class="yg_btn yg_btn4">아이디 찾기</a>
	<a href="${pageContext.request.contextPath}/member/find_passwd" class="yg_btn yg_btn4">비밀번호 찾기</a>
    </ul>
	
	<p class="link">
    <a href="${pageContext.request.contextPath}/member/create" class="yg_btn yg_btn5" alt="회원가입" 
    style="background:#a18266">회원가입</a>
    </p>
     
    </fieldset>
    
    
</div>
</div>
</form>
</div>
</div>
	
	
        
<div>
    <p class="pageMove">            
    <a class="pageTop" href="#header" title="화면 최상단으로 이동하기" alt="맨위로">
    <i class="fa fa-angle-up fa-2x"></i></a>
    <a class="pageBottom" href="#copyright" title="화면 최하단으로 이동하기" alt="맨아래로">
    <i class="fa fa-angle-down fa-2x"></i></a>
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
  

<!-- //참고 -->
<script type="text/javascript">
var sAuthSSLDomain = "login2.cafe24ssl.com";
</script>
<script type="text/javascript" src="https://login2.cafe24ssl.com/crypt/AuthSSLManager.js">
</script>
<script type="text/javascript" src="https://login2.cafe24ssl.com/crypt/AuthSSLManager.plugin.js">
</script>

<script type="text/javascript" src="//slowand.com/ind-script/i18n.php?lang=ko_KR&amp;domain=front&amp;v=1911131086" charset="utf-8">
</script>
<script type="text/javascript" src="/ind-script/optimizer.php?filename=tZXNbtswDMdfwNc9h5Bhh51boKcNAzb0AWiJtplQokpJbbOnH5N1Q7PNSQ0v8EEAwd-fEr_sJonoNu_VDQoRn0R3TrFIU49uWxxtPqZuW965c36NMvid2z401P3Lsek-2HdCZpXR4BP9kpVSHS47BvEtYqp3ovFWUlVhRr3MDWrO7hmSvSVV1KxYF3IVY2ao-G8IcnafpSdG9_UV7yVGSa5V4kVclNDMVJ4oLws4tOQrWUjzC83XLoquVDhzCabe3f8s-2sJhu97FgiLoNgqHOJ-6Qvq41xxZuAsvB-I-a0VDThA43pIQYmg9QZS-jPkxRbHZ-uhBFxeDF0_0hFaq-NFdrRaJZBNSrGMlrVKCIXSuFYlYoUAFea78UZAw0ldzdr1B-s89G2SfMLcHSt8e5y8-7ODN4MWBPXTov6rMAz2Qlq6JTO3kWy5PAKT5Ub0V7J-G1YLHuqQQvlb2BSyNQdeL8KEnPGKL5ggBb5mAFtDZHW9mr6trPof7s_iwbb4Ti6vv5m-estA2b9vFN1_olIN_gE&amp;type=js&amp;k=81cead6b99ffa3a78f6503851e2d2fd76af38afb&amp;t=1574024793">
</script>
<script type="text/javascript" src="/ind-script/optimizer.php?filename=rZXhToMwEMcfYPvqczT6BnMmxsjiMpx-LuWA20qvXlsnby-DaWaiy9b6hQDN73fH5U8rGmpBXN-wqFi2sCPeCgZHgRWIgFaqrdi8BeBOwIcHNlK7w4tpYD3duCvxrbBMdW8R0lqxgLYAFqsv18YJ6TqjRDsszPb3uXyHh_Iix0hnVKOJ5R4BbAT7AoxVt6ACNUTguXER1Ap8YLP-a9B8BMyCb_I8O1FEGlnDjyI7KDTVvyMaC7EeA3CMzAMzGNUJ15CdWEYFCbw6PE0q4lb61E7-SxM8njHxxrcajEeP4C4a-_gjDNdobsxHNP7EJbAyPlpwK90WfLrhRILOdiyZyqDiO5lTsGRSvmXRbwr9ejR_B5Ycxtd_Rddk6NIEikLCCBgUJOCrAX8mL_U8qY8h2fGBAgMVpoY6k11CD_csy_go9ecA9XsgqkGTN7SLT3XQHpdkw_68_AQ&amp;type=js&amp;k=7a782f17ee18cb10b7182e6178e4cd04bab98bd0&amp;t=1573420409">
</script>
<script type="text/javascript" src="/ind-script/optimizer.php?filename=rdFBTgMxDAXQA6RbzmG1IPUAbFi0AsEJ3MSauJPEaZwMmtt3SpFgS4aN5Y2f_G3wEgm2uwK5yFAwAuYMR0w4ELyTSiuW4KyAOid7r5vjfOCR3oq4ZuuztFQ3Z32AHurAEwVOo6Ru4rU4Ki-sVcrcu0zG6osEMhMGdrhQ_YkE3Z-G8_2OPzNkTVMqC5sS7bb7R8jtFNgaX2MAdWQcKQ8JdOT0dCPiIgSCgLO0ChYrDcsxusVv54TK9sZ_NWv2sxLj7w-vTXhpbEczMX3-nxlbqKxe8ofnnDkNKwOrhkW4Ag&amp;type=js&amp;k=defefa9bde57ab14af9a1b92a24fb30261ae422a&amp;t=1553461395">
</script>
<script type="text/javascript">
</script>

<script src="https://cdn.megadata.co.kr/js/en_script/3.5/enliple_min3.5.js" defer="defer" 
onload="mobRf()">
</script>
<iframe src="/exec/front/eclog/main/?&amp;rloc=https%3A//slowand.com/member/login.html&amp;rref=https%3A//slowand.com/member/join.html&amp;udim=1280*720&amp;rserv=eclog2-186.cafe24.com&amp;cid=CID4c6ecb057af7b551f3008ac7dd026746&amp;role_path=MEMBER_LOGIN" id="log_realtime" style="display: none;">
</iframe>
<script src="https://eclog2-186.cafe24.com/weblog_ubp.html?uid=anne2173&amp;udim=1280*720&amp;uref=https://slowand.com/member/join.html&amp;uname=anne2173&amp;url=https://slowand.com/member/login.html&amp;r_ref=https://slowand.com/member/join.html&amp;shop_no=1&amp;t=1574068258906">
</script>
<script type="text/javascript" src="//eclog2-186.cafe24.com/weblog.js?uid=anne2173&amp;uname=anne2173&amp;r_ref=https://slowand.com/member/join.html&amp;shop_no=1&amp;t=1574068258906" 
id="log_script">
</script>
<div id="modalBackpanel"></div>
<div id="modalContainer">
<iframe id="modalContent" scroll="0" scrolling="no" frameborder="0"></iframe>
</div>
</body>
</html>