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
<!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. -->
<script src="https://connect.facebook.net/signals/config/183242402324052?v=2.9.14&amp;r=stable" async=""></script><script async="" src="https://connect.facebook.net/en_US/fbevents.js">
</script>
<script type="text/javascript" src="//www.slowand.com//ec-js/common.js">
</script>
<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js">
</script>
<script src="/yangji/js/jquery.bxslider.min.js">
</script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">


<meta name="viewport" content="width=device-width">


<link rel="shortcut icon" href="//www.slowand.com//web/upload/favicon_20170717165926.ico">
<script type="text/javascript" src="//www.slowand.com//app/Eclog/js/cid.generate.js?vs=3d0b473968a0ec4ec41e3bf59df3aa51">
</script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js">
</script>

            
<link rel="stylesheet" type="text/css" href="//www.slowand.com//ind-script/optimizer.php?filename=tZU9cgIxDIV7Nm3OoYFkJn3qVOEE_hG7AltyLHsGbh8HKEJoMsu6tMb6bD1ZzzBJRFhvMqQsYzYRMqrU7BCcKuyycAEnMQo_tcAz_Gc_upVKqIWEV1aOMxNrKXMPDeaEeV5qMTbgr1R0Q1XMCoYZN-u3F0jVBnLDVGIA9Th4VBoZ9ED8eoZG8TUgRIwWM-yI_UB-PrIVI7WANUruzL9rx6PAS2BBYBO0LXBVqQO0iIRCqQN5wtAD216er66HvsmMxKZgD5WN7UC9G-rFwDc2s6AIoYe4bZebjz0ZHvd08a9mX4uA9l8V8-nJHjWQv_HO-cwPU2QR0NawLmLJ14ZIbiW-Gz1gcVIfUfCefR32T3TIPUb-79f28IVjbW6qk6TtRCkRjz_wbw&amp;type=css&amp;k=5ed278e113c52323acc23601825c140d896ecb06&amp;t=1547093551">
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
    <h2>FIND ID</h2>
    <h3>아이디 찾기</h3>
    <p>
        가입하실때 등록하신 이메일 또는 핸드폰번호로 아이디 찾기가 가능합니다
	</p>
</div>

<!-- 아이디찾기 폼 -->
<form id="findIdForm" name="findIdForm" action="findid" 
method="post" target="_self" enctype="multipart/form-data"
onclick="">

<div class="xans-element- xans-member xans-member-findid">

<div class="findId">        
        <fieldset>
<legend>아이디 찾기</legend>


<input id="check_method1" name="check_method" fw-filter="" onclick="transformType('Radio_On');"
fw-label="찾는방법" fw-msg="" value="1" type="radio" checked="checked">
<label for="check_method1">이메일</label>

<input id="check_method2" name="check_method" fw-filter="" onclick="transformType('Radio_Off');"
fw-label="찾는방법" fw-msg="" value="2" type="radio">
<label for="check_method2">
핸드폰번호</span>
</label> 

<p id="name_view" class="name" style="">
<strong id="name_lable">이름</strong><input style="width:150px;height:30px;" id="name" name="name" fw-filter="" fw-label="이름" fw-msg="" class="lostInput" placeholder="" value="" type="text">
</p>
            
<p id="Radio_On" class="email" style="">
<strong>이메일</strong><input style="width:150px;height:30px;" id="email" name="email" fw-filter="isEmail" fw-label="이메일" 
fw-msg="" class="lostInput" placeholder="" value="" type="text">
</p>
            
<p id="Radio_Off" class="phone" style="display:none;">
<strong>핸드폰번호</strong><input style="width:141px;height:24px;" id="phone" name="phone" 
fw-filter="isNumber" fw-label="휴대전화 번호" 
fw-msg="" class="lostInput" placeholder="" maxlength="11" 
value="" type="text">
</p>

         
<p class="ec-base-button ">
<a href="#" class="yg_btn" 
onclick="document.getElementById('findIdForm').submit();" 
alt="확인">확인</a>
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
<i class="fa fa-angle-up fa-2x"></i>
</a>
<a class="pageBottom" href="#copyright" title="화면 최하단으로 이동하기" alt="맨아래로">
<i class="fa fa-angle-down fa-2x"></i>
</a>
</p>
</div>    
<!-- 페이지 상단 하단 조정 -->
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
<!--  페이지 상단 하단 조정 end -->

<script type="text/javascript" src="//slowand.com/ind-script/i18n.php?lang=ko_KR&amp;domain=front&amp;v=1911201087" charset="utf-8"></script>


</body>
</html>