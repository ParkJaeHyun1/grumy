<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script async="" src="https://connect.facebook.net/en_US/fbevents.js">
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
<link rel="canonical" href="http://slowand.com/member/login.html">
<link rel="alternate" href="http://m.slowand.com/member/login.html">

<link rel="shortcut icon" href="//www.slowand.com//web/upload/favicon_20170717165926.ico">
<script type="text/javascript" src="//www.slowand.com//app/Eclog/js/cid.generate.js?vs=3d0b473968a0ec4ec41e3bf59df3aa51"></script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>

<link rel="stylesheet" type="text/css" href="//www.slowand.com//ind-script/optimizer.php?filename=tZWxTgMxDIb3tivPYbUgsTMxIAZ4giRn7tIm8WE7Uu_tidoKUd2C7pIxlv1Z-m3_gYEiwv7AMDL1bCIwCmV2CE4EvpiSgqMYKe1K4AH-k49uIxSyekobS-eFhVl1adNgJuRlpWpswD-l6LZZkAVMSnjYPz_CmG3wbjtoDCAdbjsU3yeQk09PF2ikLgeEiNEiQ6DepzrASQYagbhDfvWixNM7rcQXpSgrWCPeXXrNZr0WeA1UBJZplQdusm8AVaKgfmxAHjC0wJa17rJroe9oymYZxRYqG9uAOnOMauA7D6soQmghbslyy7GTSf3RX82xeGMV0PE7I087e5bguztjXs58M0pVQJ8mSRV7vg3kYs8vRk6ojvIaBefs27F_oMPU4uR__80f&amp;type=css&amp;k=5af551950b47b5b79b9acb86c4fdc32ac9e6e5f5&amp;t=1547093551">
<link rel="stylesheet" type="text/css" href="//www.slowand.com//ind-script/optimizer.php?filename=rY7BDQIxDAQLOL7UYR0gUQgVmMQkhsSO4gSU7jmODuA--9nd0UDUTEBu6kbVAEXoMJ-PUPo1sZtiywnM0-TJOAjYg-UEzgyy-p4IEg7tDXJPjS1quUQuhSXsls0etoE7lefyZ5XifucOlHDnFR8JPdVNFbFR0Do20buptn_0sBQDFmsYKuYX-0BtreZvfshv&amp;type=css&amp;k=a657dc189b9b8bbc03db761fe930ee0ea776ae32&amp;t=1566806466">

<title>grumy</title>

</head>
<body id="cmn">


<div id="wrap">    
    <!-- 상단카테고리 -->
    

<div id="header">
<div class="myList">


        
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
    <h2>LOGIN</h2>
    <h3>로그인</h3>
</div>

<form id="member_form_3274124755" name="" 
action="login" method="post" 
target="_self" enctype="multipart/form-data">

<div class="xans-element- xans-member xans-member-login ">
<div class="login">        

<fieldset>

<legend>회원로그인</legend>

<label class="id ePlaceholder" title="ID">
<input id="id" name="id" fw-filter="isFill" fw-label="아이디" 
fw-msg="" class="inputTypeText" placeholder="ID" value="" type="text">
</label>
<label class="password ePlaceholder" title="PASSWORD">
<input id="passwd" name="passwd" 
fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="패스워드" 
fw-msg="" autocomplete="off" value="" 
type="password" placeholder="PASSWORD"></label>            

<a href="#" class="yg_btn" id="login"
onclick="document.getElementById('member_form_3274124755').submit();" 
alt="로그인" style="background:#a18266">로그인</a>


 
<ul class="find">

<li>
<a href="${pageContext.request.contextPath }/member/findid" class="yg_btn yg_btn4">
아이디 찾기
</a>
</li>

<li>
<a href="${pageContext.request.contextPath }/member/findpw" class="yg_btn yg_btn4">
비밀번호 찾기
</a>
</li>

</ul>

<p class="link">
<a href="${pageContext.request.contextPath }/member/create" class="yg_btn yg_btn5" 
alt="회원가입" style="background:#a18266">
회원가입
</a>
</p>

</fieldset>
<c:if test="${alert=fail }">

</c:if>
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

</body>
</html>