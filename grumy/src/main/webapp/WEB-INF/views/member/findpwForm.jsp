<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="util" uri="/ELFunctions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--PG크로스브라우징필수내용 시작-->
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<meta http-equiv="Pragma" content="no-cache">
<!--PG크로스브라우징필수내용 끝-->
<!--해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!--해당 CSS는 쇼핑몰 전체 슬라이드 배너에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. --><script src="https://connect.facebook.net/signals/config/183242402324052?v=2.9.14&amp;r=stable" async=""></script><script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script><script type="text/javascript" src="/ec-js/common.js"></script><!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. --><script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script><script src="/yangji/js/jquery.bxslider.min.js"></script><link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">


<link rel="shortcut icon" href="//www.slowand.com//web/upload/favicon_20170717165926.ico">
<script type="text/javascript" src="//www.slowand.com//app/Eclog/js/cid.generate.js?vs=3d0b473968a0ec4ec41e3bf59df3aa51"></script>
<script type="text/javascript" src="//www.slowand.com//wcs.naver.net/wcslog.js"></script>

           

<link rel="stylesheet" type="text/css" href="//www.slowand.com//ind-script/optimizer.php?filename=tZWxcsMgDIZ3O2ufQ5e0d907d2qeQIBikwCiCK7x25cmGZp66TlmRIc-0C_0AyN7gu0uQUw8JPSQSLgkTaBF4JA4ZNDsPYdNDTzBf_aT7oRdyZZDp_i8MLHkvPRQhxOlZakZlaNfqaT7IpQEMATabV-fIRblrO7H7B2Iod6Q2CGAnGx4uUA9m-IIPHlFCQ42mD6iyJdZjq0FccmgUKy-nDFryaPAa2BFYBW1LqgrtgE0M7tsYwPySK4Ftr4-U3QLfSMONmCmFiqjakCdDfZq4DurWVEE10Lcuksvx04YhqO9eli1sFVAx89Cadqoszhr7vxzOfMdM68C2mOQVWz51hBOtcQ3lBNlzeURBefs27B_kKbQYuT_fm8PX9iX6qYyctyPNkYbhh_4Nw&amp;type=css&amp;k=732fa7cc7293fdff97cc675423e7143ab5742dd6&amp;t=1547093551">
<link rel="stylesheet" type="text/css" href="//www.slowand.com//ind-script/optimizer.php?filename=rY5BDgIhDEUPMG49RzNq4nkqVKhCSyhouL3juHU1uvmbl__yIGomIDd1o2qAInSYz0co_ZLYTbHlBOZp8mQcBOzOcgJnBll9TwQJh_YGTuWx_FmluN2C97DFO1DCjVd9JPRUt6u-JGKjoHX8Je-q2n7Jw1IMWKxhqJif7AO1Fc2ffZtf&amp;type=css&amp;k=0bf1200a5e8ef8a5ba790aa4613ab5bd42bdb5c6&amp;t=1566806466">

<title>grumy</title>

<!--  radio 변경 -->
<script type="text/javascript">
function transformType(id){
	if(id=="Radio_On"){
		document.all["Radio_On"].style.display="";
		document.all["Radio_Off"].style.display="none";
	}else{
		document.all["Radio_On"].style.display="none";
		document.all["Radio_Off"].style.display="";
	}
}

</script>

</head>
<body id="cmn">

<div id="wrap">    
    
<div id="header">
    
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
            
<div class="titleArea">
    <h2>FIND PASSWORD</h2>
    <h3>비밀번호 찾기</h3>
</div>

<form id="findPasswdForm" name="findPasswdForm" action="findpw" 
method="post" target="_self" enctype="multipart/form-data"
onclick="">

<div class="xans-element- xans-member xans-member-findpasswd ">

<div class="findPw">        

<fieldset>

<legend>비밀번호 찾기 1단계 정보 입력</legend>
<ul class="ec-base-desc typeBullet gMedium">

<li>

<span class="desc"><span class="gBlank5">


<input id="check_method0" name="check_method" fw-filter="" onclick="transformType('Radio_On');"
fw-label="찾는방법" fw-msg="" value="0" type="radio" checked="checked"\>
<label for="check_method0">이메일
</label>

<input id="check_method1" name="check_method" fw-filter="" onclick="transformType('Radio_Off');"
fw-label="찾는방법" fw-msg="" value="1" type="radio">
<label for="check_method1">
휴대폰번호
</label>
</span></span>

</li>
                
<li class="gBlank20">
<strong class="term">아이디</strong>
<span class="desc">
<input id="id" name="id" fw-filter="isFill&amp;isIdentity" 
fw-label="아이디" fw-msg="" class="lostInput" placeholder="" 
value="" type="text">
</span>
</li>
                
<li id="name_view" class="name" style="">
<strong class="term" id="name_lable">이름</strong>
<span class="desc">
<input id="name" name="name" fw-filter="" fw-label="이름" 
fw-msg="" class="lostInput ec-member-name" placeholder="" 
value="" type="text">
</span>

</li>
                

<li id="Radio_On" class="email" style="">
<strong class="term">이메일로 찾기</strong>
<span class="desc">
<input id="email" name="email" fw-filter="isEmail" fw-label="이메일" 
fw-msg="" class="lostInput" placeholder="" value="" type="text">
</span>
</li>
                
<li id="Radio_Off" class="phone" style="display:none;">
<strong class="term">휴대폰 번호로 찾기</strong>
<span class="desc">
<input id="phone" name="phone" 
fw-filter="isNumber" fw-label="휴대전화 번호" 
fw-msg="" class="lostInput" placeholder="" maxlength="11" 
value="" type="text">
</span>
</li>

 
               
</ul>

<p class="ec-base-button gBlank20">
<a href="#none" class="yg_btn" 
onclick="document.getElementById('findPasswdForm').submit();" alt="확인">확인</a>
</p>

</fieldset>

</div>
</div>
</form>
       
       
<div>
<p class="pageMove">            
<a class="pageTop" href="#header" title="화면 최상단으로 이동하기" alt="맨위로"><i class="fa fa-angle-up fa-2x"></i></a>
<a class="pageBottom" href="#copyright" title="화면 최하단으로 이동하기" alt="맨아래로"><i class="fa fa-angle-down fa-2x"></i></a>
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


<script type="text/javascript" src="//slowand.com/ind-script/i18n.php?lang=ko_KR&amp;domain=front&amp;v=1911201087" charset="utf-8"></script>


</body>
</html>