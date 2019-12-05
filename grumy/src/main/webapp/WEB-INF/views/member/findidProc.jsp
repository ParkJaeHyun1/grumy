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

<script src="https://connect.facebook.net/signals/config/183242402324052?v=2.9.14&amp;r=stable" async="">
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

<meta name="viewport" content="width=device-width">

<link rel="shortcut icon" href="//www.slowand.com/web/upload/favicon_20170717165926.ico">
<script type="text/javascript" src="//www.slowand.com/app/Eclog/js/cid.generate.js?vs=3d0b473968a0ec4ec41e3bf59df3aa51"></script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js">
</script>
          
<link rel="stylesheet" type="text/css" href="//www.slowand.com/ind-script/optimizer.php?filename=tZU9cgIxDIV7Nm3OoYFkJn3qVOEE_hG7AttyLHkGbh8HKEJoMsu6tEb6ZD9bzzBxRFhvCuTCYzERCgrX4hCcCOwKJwXHMXJ6aoFn-E8-upVwqEqcVpaPMwur6tymwZywzCtVYwP-KkU3VMEiYFLCzfrtBXK1gdwwaQwgHgePQmMCOVB6PUMj-xoQIkaLBXaU_EB-aH1r0PnkdiauCtYIuXObu1t5FHgJLAhsurYFrip1gCpzUModyBOGHtj2AH11PfTNZqRkFHuobGwH6t1sLwa-cZsFRQg9xG1Zbj72ZNK4p4uNNRdbBLT_qlhOT_YogfyNhc5nfhjlRUBbk2QRZ75eCJd2xHcjB1TH9REF79nXYf9Eh6nHyP_94R7ecGyfE8nEeTtRzpTGH_g3&amp;type=css&amp;k=24a98743aa998fd51d20c1bea60477e16b4c2bc6&amp;t=1547093551">
<link rel="stylesheet" type="text/css" href="//www.slowand.com/ind-script/optimizer.php?filename=rY5BDgIhDEUPMG49RzNq4nkqVKhCSyhouL3juHU1uvmbl__yIGomIDd1o2qAInSYz0co_ZLYTbHlBOZp8mQcBOzOcgJnBll9TwQJh_YGTuWx_FmluN2C97DFO1DCjVd9JPRUt6u-JGKjoHX8Je-q2n7Jw1IMWKxhqJif7AO1Fc2ffZtf&amp;type=css&amp;k=0bf1200a5e8ef8a5ba790aa4613ab5bd42bdb5c6&amp;t=1566806466">

<title>grumy</title>

<script type="text/javascript" id="AuthSSLContainer" 
charset="utf-8" src="https://login2.cafe24ssl.com/crypt/AuthSSLManagerV2.php?auth_mode=decryptClient&amp;auth_callbackName=AUTHSSL_SC.decryptCallbackFn&amp;auth_string=eyy5O5A%2FKc0MxYwYkuWXglBNHQxgNfOgMu54ZvMMQO9rGD9Z3JXXGdWLgdzSN%2Bu2dKUoEreRU7ti%2BvAxHblFOcFqhDO2wLEet7AlcCiTqL7Nb50%2BTQ2SMQuv2z%2FO6eF%2BdWiOcqTGFzRfxkF%2FxURr7F4WmsNJbE0By1NCuEZubh4yaWDCcGn7qHJeDVLXsXFBVJVjf1Go9Q3iCqifbo9dsrNzhGLC%2BMQGe6pJmhzP6SZOgzk%2BDhVHvDILpug2LvqF%2FVd0DD%2F9Jg5HhMZ5dKRJDllP3DU01qvMXW7RsCczyiVBTlc88g%2FSWS2D%2BQx%2BK%2BOwiGwxGZ4%2Bu4v1ZqS52vY4Y67EtQof%2Fp6nkFpsLy1XUUPI6kJgVHs7ACGY0M1NaEdoJlPMhQKYpYDlp8vJtGZZV8ZJtkoKUiX58ar162BpRN19aPr7wWiCi1p4ev3M3Mp4eoGSUJn%2Fbuv6%2FqDrywRfFw2adByxsUlB4xfF5ZBtS8Duuh09x2RUppI46RuIxjbO&amp;dummy=1575341103004">
</script>
</head>
<body id="cmn">
<div id="wrap">    
  
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
    <h2>ID FIND RESULT</h2>
    <h3>아이디 찾기 결과</h3>
</div>

<div class="xans-element- xans-member xans-member-findidresult">
<div class="findId">        
<p class="info">고객님 아이디 찾기가 완료 되었습니다.</p>
 
<div class="information">                
<div class="description">

<ul class="ec-base-desc gSmall">

<li>
<strong class="term">아이디</strong>
<strong class="desc">: 
<span>${id }</span>
</strong>
</li>
                              
</ul>
</div>
</div>
</div>
   
<p class="ec-base-button">
	<a href="${pageContext.request.contextPath }/member/login" 
	alt="로그인" class="yg_btn_140 ">로그인</a>
    <a href="${pageContext.request.contextPath }/member/findpw" 
    alt="비밀번호 찾기" class="yg_btn_140 yg_btn4 ">비밀번호 찾기</a>        
</p>

</div>
</div>
</div>
        
<div>

<p class="pageMove">            
	<a class="pageTop" href="#header" title="화면 최상단으로 이동하기" alt="맨위로"><i class="fa fa-angle-up fa-2x"></i></a>
    <a class="pageBottom" href="#copyright" title="화면 최하단으로 이동하기" alt="맨아래로"><i class="fa fa-angle-down fa-2x"></i></a>
</p>

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
  
<script type="text/javascript" src="//slowand.com/ind-script/i18n.php?lang=ko_KR&amp;domain=front&amp;v=1911281089" charset="utf-8"></script>


</div>
</body>
</html>