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

<title>슬로우앤드</title>


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

<form id="findPasswdForm" name="findPasswdForm" action="/exec/front/Member/FindPasswd/" method="post" target="_self" enctype="multipart/form-data">
<input id="nextUrl" name="nextUrl" value="/member/passwd/find_passwd_question.html" type="hidden">
<input id="resultURL" name="resultURL" value="" type="hidden"><div class="xans-element- xans-member xans-member-findpasswd "><!--
        $nextURL = /member/passwd/find_passwd_question.html
     -->
<div class="findPw">        
        <fieldset>
<legend>비밀번호 찾기 1단계 정보 입력</legend>
            <ul class="ec-base-desc typeBullet gMedium">
<li>
<strong class="term">회원유형</strong><span class="desc"><select id="searchType" name="searchType" fw-filter="" fw-label="회원유형" fw-msg="">
<option value="indi" selected="selected">개인회원</option>
<option value="indibuis">개인 사업자회원</option>
<option value="corp">법인 사업자회원</option>
<option value="fore">외국인회원</option>
</select><span class="gBlank5"><input id="check_method0" name="check_method" fw-filter="" fw-label="찾는방법" fw-msg="" value="1" type="radio" style="display: none;"><label for="check_method0" style="display: none;"><span id="ssn_lable" style="display: none;"></span></label>
<input id="check_method1" name="check_method" fw-filter="" fw-label="찾는방법" fw-msg="" value="2" type="radio" checked="checked"><label for="check_method1">이메일</label>
<input id="check_method2" name="check_method" fw-filter="" fw-label="찾는방법" fw-msg="" value="3" type="radio"><label for="check_method2"><span id="search_type_mobile_lable" style="display:inline;">휴대폰번호</span></label></span></span>
</li>
                <li class="gBlank20">
<strong class="term">아이디</strong><span class="desc"><input id="member_id" name="member_id" fw-filter="isFill&amp;isIdentity" fw-label="아이디" fw-msg="" class="lostInput" placeholder="" value="" type="text"></span>
</li>
                <li id="name_view" class="name" style="">
<strong class="term" id="name_lable">이름</strong><span class="desc"><input id="name" name="name" fw-filter="" fw-label="이름" fw-msg="" class="lostInput ec-member-name" placeholder="" value="" type="text"></span>
</li>
                <li id="ssn_view" class="ssn_no" style="display: none;">
<strong class="term" id="ssn_name"></strong><span class="desc"> <input id="ssn" name="ssn" fw-filter="isNumber" fw-label="주민등록번호" fw-msg="" class="lostInput" maxlength="20" value="" type="password"> <span class="gBlank5 txtInfo">(-) 없이 숫자만 입력하세요.</span></span>
</li>
                <li id="email_view" class="email" style="">
<strong class="term">이메일로 찾기</strong><span class="desc"><input id="email" name="email" fw-filter="isEmail" fw-label="이메일" fw-msg="" class="lostInput" placeholder="" value="" type="text"></span>
</li>
                <li id="mobile_view" class="mobile" style="display:none;">
<strong class="term">휴대폰 번호로 찾기</strong><span class="desc"><input id="mobile1" name="mobile1" fw-filter="isMin[3]&amp;isMax[3]&amp;isNumber" fw-label="휴대전화 번호" fw-msg="" class="mobile1" placeholder="" maxlength="3" value="" type="text"> - <input id="mobile2" name="mobile2" fw-filter="isMin[3]&amp;isMax[4]&amp;isNumber" fw-label="휴대전화 번호" fw-msg="" class="mobile2" placeholder="" maxlength="4" value="" type="text"> - <input id="mobile3" name="mobile3" fw-filter="isMin[4]&amp;isMax[4]&amp;isNumber" fw-label="휴대전화 번호" fw-msg="" class="mobile2" placeholder="" maxlength="4" value="" type="text"></span>
</li>
                <li id="ipin_view" class="ipin" style="display:none;">
<strong class="term">아이핀인증으로 찾기</strong><span class="desc">회원가입을 아이핀으로 가입하신 <br>회원님께서는 아이핀으로 인증하세요. <a href="#none" onclick="findPasswd.action('anne2173' , 'kcp'); return false;"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/member/btn_check6.gif" alt="아이핀 인증"></a></span>
</li>
                <li id="mobile_auth_view" class="mobileauth" style="display:none;">
<strong class="term">휴대폰인증으로<br> 찾기</strong><span class="desc txtInfo">본인 명의의 휴대폰으로<br> 아이디 찾기를 진행할 수 있습니다. <br>휴대폰 명의자의 정보로 가입한 <br>아이디 찾기가 가능합니다.</span>
</li>
            </ul>
<p class="ec-base-button gBlank20">
                <a href="#none" class="yg_btn" onclick="findPasswd.action('anne2173' , 'kcp'); return false;" alt="확인">확인</a>
            </p>
        </fieldset>
</div>
</div>
</form>
        </div><hr class="layout"></div><hr class="layout"><!-- 하단 --><div id="footer" class="xans-element- xans-layout xans-layout-footer"><!--
        module="instagramwidget_display_1" 는 위젯리스트중 적용하고자 하는 위젯의 코드로 변경하여 사용하시면 됩니다.
    -->
<div id="footerTop">
        <div class="footerTop_inner">
            
            <div class="inner ">
                <ul class="fTop_box">
<h3>DELIVERY</h3>
                    <!--li><a href="/shopinfo/company.html">BRAND STORY</a></li>
                    <!--li><a href="/yangji/lookbook.html?cate_no=50">LOOKBOOK</a></li-->
                    <li style="margin-top:20px;"><a href="https://service.epost.go.kr/iservice/usr/trace/usrtrc001k01.jsp" target="_blank">DELIVERY</a></li>
                </ul><ul class="xans-element- xans-layout xans-layout-category fTop_box"><h3>SHOP</h3>
<li class="xans-record-"><a href="/category/best-50/66/">BEST 50</a></li>
<li class="xans-record-"><a href="/category/slowmade/82/">#SLOWMADE</a></li>
<li class="xans-record-"><a href="/category/겨울시작/122/">겨울시작❄</a></li>
<li class="xans-record-"><a href="/category/outer/24/">OUTER</a></li>
<li class="xans-record-"><a href="/category/top/25/">TOP</a></li>
<li class="xans-record-"><a href="/category/dress/27/">DRESS</a></li>
<li class="xans-record-"><a href="/category/skirt/70/">SKIRT</a></li>
<li class="xans-record-"><a href="/category/bottom/26/">BOTTOM</a></li>
<li class="xans-record-"><a href="/category/shoesbag/28/">SHOES/BAG</a></li>
<li class="xans-record-"><a href="/category/acc/68/">ACC</a></li>
<li class="xans-record-"><a href="/category/soom-pick/112/">soom pick *.*</a></li>
<li class="xans-record-"><a href="/category/창고개방sale/111/">창고개방SALE</a></li>
<li class="xans-record-"><a href="/category/기획특가모음/108/">기획특가모음</a></li>
<li class="xans-record-"><a href="/category/당일발송/78/">당일발송</a></li>
<li class="xans-record-"><a href="/category/monotone/86/">monotone♥</a></li>
</ul>
<ul class="xans-element- xans-layout xans-layout-boardinfo fTop_box"><h3>COMMUNITY</h3>
<li class="xans-record-"><a href="/board/notice/1/">NOTICE<span></span></a></li>
<li class="xans-record-"><a href="/board/상품-문의/6/">상품 문의<span></span></a></li>
<li class="xans-record-"><a href="/board/배송-문의/3001/">배송 문의<span></span></a></li>
<li class="xans-record-"><a href="/board/배송-전-변경취소/101/">배송 전 변경/취소<span></span></a></li>
<li class="xans-record-"><a href="/board/배송-후-교환반품/5/">배송 후 교환/반품<span></span></a></li>
<li class="xans-record-"><a href="/board/delay/2/">DELAY<span></span></a></li>
<li class="xans-record-"><a href="/board/채용-공고/1002/">채용 공고<span></span></a></li>
<li class="xans-record-"><a href="/board/review/4/">REVIEW<span></span></a></li>
</ul>
<ul class="fTop_box">
<h3>CS CENTER</h3>
                    <li>Tel</li>
                    <li style="font-size:30px;">070-7705-5595</li>
                    <li>am 10:00 - pm 17:00<br>BREAK TIME : pm 12;00 - pm 13:00<br>(sat / sun / holiday OFF) </li>
                </ul>
<ul class="fTop_box bank_info">
<h3>BANK INFO</h3>
                    <li>
<i>기업은행</i>029-081822-04-039</li>
                    <li class="holder">(주)앤드모어</li>
                </ul>
<ul class="snsLink fTop_box">
<li><a href="https://www.facebook.com/slowandmore" target="_blank"><img src="/web/upload/yangji_pc_crumb/icon_facebook.png" onmouseover="this.src=&quot;/web/upload/yangji_pc_crumb/icon_facebook_on.png&quot;" onmouseout="this.src=&quot;/web/upload/yangji_pc_crumb/icon_facebook.png&quot;"></a></li>
                    <!--li><a href="https://blog.naver.com" target="_blank"><img src="/web/upload/yangji_pc_crumb/icon_blog.png" onmouseover='this.src="/web/upload/yangji_pc_crumb/icon_blog_on.png"' onmouseout='this.src="/web/upload/yangji_pc_crumb/icon_blog.png"'/></a></li>
                    <li><a href="https://www.twitter.com" target="_blank"><img src="/web/upload/yangji_pc_crumb/icon_twitter.png" onmouseover='this.src="/web/upload/yangji_pc_crumb/icon_twitter_on.png"' onmouseout='this.src="/web/upload/yangji_pc_crumb/icon_twitter.png"'/></a></li-->
                    <li><a href="https://www.instagram.com/slow.and" target="_blank"><img src="/web/upload/yangji_pc_crumb/icon_instagram.png" onmouseover="this.src=&quot;/web/upload/yangji_pc_crumb/icon_instagram_on.png&quot;" onmouseout="this.src=&quot;/web/upload/yangji_pc_crumb/icon_instagram.png&quot;"></a></li>
                    <!--li><a href="https://story.kakao.com/ch/kakaostory" target="_blank"><img src="/web/upload/yangji_pc_crumb/icon_story.png" onmouseover='this.src="/web/upload/yangji_pc_crumb/icon_story_on.png"' onmouseout='this.src="/web/upload/yangji_pc_crumb/icon_story.png"'/></a></li-->
                </ul>
</div>
                
            <div class="inner_b ">
                <h2>COMPANY INFO</h2>
                <p class="address">
                    <span><i>COMPANY</i>(주) 앤드모어</span><span><i>CEO</i>김수민</span><span><i>TEL</i>070-7705-5595</span><span><i>BUSINESS LICENSE</i>390-86-00737</span><br><span><i>MAIL ORDER LICENSE</i>제 2018-서울동대문-0658호 <i class="bizLink"><a href="#none" onclick="window.open('http://www.ftc.go.kr/bizCommPop.do?wrkr_no=3908600737', 'bizCommPop', 'width=750, height=950;');return false;">[Go Checking]</a></i></span><span><i>COMPANY E-MAIL</i><a href="mailto:slowand@naver.com">김재형 slowand@naver.com</a></span><br><span><i>ADDRESS</i>02622 서울특별시 동대문구 답십리동 530-16 평화빌딩 4층 슬로우앤드</span><br><span><i>RETURN &amp; EXCHANGE</i> 서울특별시 중랑구 망우로 271(상봉동,중랑우체국)</span>
                </p> 
            </div>
            
            <ul class="inner_h">
<li><a href="//www.ftc.go.kr/" target="_blank"><img src="/web/upload/yangji_pc_crumb/footer_ico_1.png" alt="공정거래위원회"></a></li>
                <li><a href="//www.cafe24.com/" target="_blank"><img src="/web/upload/yangji_pc_crumb/footer_ico_2.png" alt="hosting by cafe24 심플렉스인터넷(주)"></a></li>
                <li><img src="/web/upload/yangji_pc_crumb/footer_ico_3.png" alt="SSL 결제보안"></li>
                <li><a href="https://www.hometax.go.kr/ui/pp/agitx_index.html" target="_blank"><img src="/web/upload/yangji_pc_crumb/footer_ico_4.png" alt="현금영수증"></a></li>
                <li><a href="//www.allthegate.com/hyosung/paysafe/escrow_check.jsp?service_id=CG_anne21&amp;biz_no=3908600737" target="_blank"><img src="/web/upload/yangji_pc_crumb/bottom_nicepay.png" alt="나이스페이 구매안전 서비스 가입사실 확인"></a></li>
            </ul>
<div class="inner_s">
                <ul class="utilMenu">
<li><a href="/member/agreement.html">AGREEMENT</a></li>
                    <li class="pr"><a href="/member/privacy.html">PRIVACY POLICY</a></li>
                    <li><a href="/shopinfo/guide.html">SHOPPING GUIDE</a></li>        
                </ul>
<p class="copyright">Copyright © <strong>슬로우앤드</strong> All rights reserved. Designed by DESIGN-YANGJI</p>    
            </div>
        </div>
        
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
    <!-- //하단 -->
    
    <!--div id="quick">
        <div module="Layout_orderBasketcount">
            
            <!--strong>장바구니</strong> <span><a href="/order/basket.html">{$basket_count}</a>개</span>
        </div>

        <div module="Layout_productRecent">
            
            <!--h2><a href="/product/recent_view_product.html">최근 본 상품</a></h2>
            <ul>
                <li class="{$disp_recent|display}">
                    <a href="/product/detail.html{$param}"><img src="{$recent_img}" alt="" /><span>{$name}</span></a>
                </li>
                <li class="{$disp_recent|display}">
                    <a href="/product/detail.html{$param}"><img src="{$recent_img}" alt="" /><span>{$name}</span></a>
                </li>
            </ul>
            <p class="player"><img src="//img.echosting.cafe24.com/skin/base/layout/btn_recent_prev.gif" alt="이전 제품" class="prev" /><img src="//img.echosting.cafe24.com/skin/base/layout/btn_recent_next.gif" alt="다음 제품" class="next" /></p>
        </div>

        <p class="pageTop"><a href="#header" title="화면 최상단으로 이동하기"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/layout/btn_top1.gif" alt="맨위로" /></a></p>

        <p class="banner"><a href="#none"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/layout/img_banner2.jpg" alt="" /></a></p>
    </div-->    
</div><hr class="layout"><!-- 참고: 결제를 위한 필수 영역 --><div id="progressPaybar" style="display:none;">
    <div id="progressPaybarBackground" class="layerProgress"></div>
    <div id="progressPaybarView">
        <div class="box">
            <p class="graph">
                <span><img src="//img.echosting.cafe24.com/skin/base_ko_KR/layout/txt_progress.gif" alt="현재 결제가 진행중입니다."></span>
                <span><img src="//img.echosting.cafe24.com/skin/base/layout/img_loading.gif" alt=""></span>
            </p>
            <p class="txt">
                본 결제 창은 결제완료 후 자동으로 닫히며,결제 진행 중에 본 결제 창을 닫으시면<br>
                주문이 되지 않으니 결제 완료 될 때 까지 닫지 마시기 바랍니다.
            </p>
        </div>
    </div>
</div>
<!-- //참고 -->


    
    
<script type="text/javascript">var sAuthSSLDomain = "login2.cafe24ssl.com";</script><script type="text/javascript" src="https://login2.cafe24ssl.com/crypt/AuthSSLManager.js"></script><script type="text/javascript" src="https://login2.cafe24ssl.com/crypt/AuthSSLManager.plugin.js"></script>

                <script>
                try {
                    // Account ID 적용
                    if (!wcs_add) var wcs_add = {};
                    wcs_add["wa"] = "s_22a6d3e203";
            
                    // 마일리지 White list가 있을 경우
                    wcs.mileageWhitelist = ["anne2173.cafe24.com", "www.anne2173.cafe24.com", "m.anne2173.cafe24.com", "slowand.com", "www.slowand.com", "m.slowand.com"];

                    // 네이버 페이 White list가 있을 경우
                    wcs.checkoutWhitelist = ["anne2173.cafe24.com", "www.anne2173.cafe24.com", "m.anne2173.cafe24.com", "slowand.com", "www.slowand.com", "m.slowand.com"];
                
                    // 레퍼러 (스크립트 인젠션 공격 대응 strip_tags) ECQAINT-15101
                    wcs.setReferer("https://slowand.com/member/login.html");

                    // 유입 추적 함수 호출
                    wcs.inflow("slowand.com");

                    // 로그수집
                    wcs_do();
                } catch (e) {};
                </script>
            

<!-- External Script Start -->

<!-- fap -->
<!-- CMC script -->
<div id="fap_common_top_script" style="display:none;">
  <!-- Facebook Pixel Code -->
<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.agent='plcafe24_kr';n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', '183242402324052');
  fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
  src="https://www.facebook.com/tr?id=183242402324052&ev=PageView&noscript=1"
/></noscript>
<!-- End Facebook Pixel Code -->
</div>
<!-- CMC script --> 
<!-- External Script End -->

<script type="text/javascript" src="//slowand.com/ind-script/i18n.php?lang=ko_KR&amp;domain=front&amp;v=1911201087" charset="utf-8"></script>

<script type="text/javascript" src="/ind-script/optimizer.php?filename=tZXNbtswDMdfwNc9h5Bhh51boKcNAzb0AWiJtplQokpJbbOnH5N1Q7PNSQ0v8EEAwd-fEr_sJonoNu_VDQoRn0R3TrFIU49uWxxtPqZuW965c36NMvid2z401P3Lsek-2HdCZpXR4BP9kpVSHS47BvEtYqp3ovFWUlVhRr3MDWrO7hmSvSVV1KxYF3IVY2ao-G8IcnafpSdG9_UV7yVGSa5V4kVclNDMVJ4oLws4tOQrWUjzC83XLoquVDhzCabe3f8s-2sJhu97FgiLoNgqHOJ-6Qvq41xxZuAsvB-I-a0VDThA43pIQYmg9QZS-jPkxRbHZ-uhBFxeDF0_0hFaq-NFdrRaJZBNSrGMlrVKCIXSuFYlYoUAFea78UZAw0ldzdr1B-s89G2SfMLcHSt8e5y8-7ODN4MWBPXTov6rMAz2Qlq6JTO3kWy5PAKT5Ub0V7J-G1YLHuqQQvlb2BSyNQdeL8KEnPGKL5ggBb5mAFtDZHW9mr6trPof7s_iwbb4Ti6vv5m-estA2b9vFN1_olIN_gE&amp;type=js&amp;k=81cead6b99ffa3a78f6503851e2d2fd76af38afb&amp;t=1574024793"></script>
<script type="text/javascript" src="/ind-script/optimizer.php?filename=rZVBTsMwEEUPULacw4IbQBGwSEXUFLGeOtN6Gsdjje1WuT1R2gWVqkJtNpbs6P35GX_bynCP6uFRlBfeCvQKvFcL7NcoaomBk2hUu6D6aalBEG1Wg8e7XbhXt8Gv5NoaQji0l2H5QTylaJqmulIFHGzxrMoB15a3lxFLa_VJHnR3hsyTCDo9qGDYz7yQxgJen2azDUsPsdTJf8mkSPb3jpvYW3SRImG4qe0QBqePYzZ3DEg2_iEtinYxW-AZQoexXOFKgv6sUQu3Sec7mXPy7Er-ZUEWx-_Z_At6DpRf_4uCqSiUCWhOBS0Q1FiALyd8xRHsvMjHlOz8QKHDDZWGuoKhwMObQJsfpfEd4PEOJD3JNIYP-alONlLNPvl8iaGiDk8HtGxjK9qjJdexK8vG-3hOWIZcMx6iEbY424OlFkapUeQb&amp;type=js&amp;k=1e475d0fd536675f2764c2dd4c3cd081146fd7bc&amp;t=1573420409"></script>
<script type="text/javascript" src="/ind-script/optimizer.php?filename=rY9JDsIwDEUP0G45h8UgcQnYwAmMa6WGJA5xQtXbUwaJLdPGsmS95_-h18AwX2RIWV3GAJgSbDGiY9ixac3EcDRAGyM9ZrtR7NqjzeBdeDp3lcpHjA0tofecXxRTU43zFCZGXszXS0j14IWavgQP1nHTsYmLYCeJq5skTH89g8dRawHCwk7z-LXx6TmgCd309-WXfKQhaPxfw3MVOjUX4eF_zlB9Ees17XtJSaL7sbCZnwxX&amp;type=js&amp;k=3713b072f420c6621412a929d2509456a52ba407&amp;t=1560719849"></script>
<script type="text/javascript">
var EC_MOBILE = false;
var EC_MOBILE_DEVICE = false;
var EC_MOBILE_USE = true;
var mobileWeb = false;
var sSearchBannerUseFlag = 'F';
$(document).ready(function(){
AuthSSL.Bind('findPasswdForm', ["findPasswdForm::nextUrl","findPasswdForm::resultURL","findPasswdForm::searchType","findPasswdForm::check_method","findPasswdForm::ssn","findPasswdForm::mobile1","findPasswdForm::mobile2","findPasswdForm::mobile3","findPasswdForm::email","findPasswdForm::name","findPasswdForm::member_id"]);
});
var aLogData = {"log_server1":"eclog2-186.cafe24.com","log_server2":"eclog2-186.cafe24.com","mid":"anne2173","stype":"e","domain":"","shop_no":1,"etc":""};
var sMileageName = '적립금';
var sMileageUnit = '[:PRICE:]원';
var sDepositName = '예치금';
var sDepositUnit = '원';
var SHOP_CURRENCY_INFO = {"1":{"aShopCurrencyInfo":{"currency_code":"KRW","currency_no":"410","currency_symbol":"\uffe6","currency_name":"South Korean won","currency_desc":"\uffe6 \uc6d0 (\ud55c\uad6d)","decimal_place":0,"round_method_type":"F"},"aShopSubCurrencyInfo":null,"aBaseCurrencyInfo":{"currency_code":"KRW","currency_no":"410","currency_symbol":"\uffe6","currency_name":"South Korean won","currency_desc":"\uffe6 \uc6d0 (\ud55c\uad6d)","decimal_place":0,"round_method_type":"F"},"fExchangeRate":1,"fExchangeSubRate":null,"aFrontCurrencyFormat":{"head":"","tail":"\uc6d0"},"aFrontSubCurrencyFormat":{"head":"","tail":""}}};
var EC_ASYNC_LIVELINKON_ID = '';
var EC_FRONT_JS_CONFIG_MANAGE = {"sSmartBannerScriptUrl":"https:\/\/app4you.cafe24.com\/SmartBanner\/tunnel\/scriptTags?vs=1563164396689206","sMallId":"anne2173","sDefaultAppDomain":"https:\/\/app4you.cafe24.com","sWebLogEventFlag":"F","FW_MANIFEST_CACHE_REVISION":1911201087,"IS_WEB_VIEW":"F"};
var EC_FRONT_JS_CONFIG_MEMBER = {"sAuthUrl":"https:\/\/i-pin.cafe24.com\/certify\/1.0\/?action=auth"};
</script><script type="text/javascript">
<!--
	function mobRf(){
        var rf = new EN();
		rf.setData("userid", "slowand");
        rf.setSSL(true);
        rf.sendRf();
    }
//-->
</script><script src="https://cdn.megadata.co.kr/js/en_script/3.5/enliple_min3.5.js" defer="defer" onload="mobRf()"></script><!-- Enliple Common Tracker v3.5 [공용] end -->
<iframe src="/exec/front/eclog/main/?&amp;rloc=https%3A//slowand.com/member/passwd/find_passwd_info.html&amp;rref=https%3A//slowand.com/member/login.html&amp;udim=1280*720&amp;rserv=eclog2-186.cafe24.com&amp;cid=CID491dfb9e114434a8e91c363a89dcb042&amp;role_path=MEMBER_PW_FIND" id="log_realtime" style="display: none;"></iframe><script src="https://eclog2-186.cafe24.com/weblog_ubp.html?uid=anne2173&amp;udim=1280*720&amp;uref=https://slowand.com/member/login.html&amp;uname=anne2173&amp;url=https://slowand.com/member/passwd/find_passwd_info.html&amp;r_ref=https://slowand.com/member/login.html&amp;shop_no=1&amp;t=1574739577929"></script><script type="text/javascript" src="//eclog2-186.cafe24.com/weblog.js?uid=anne2173&amp;uname=anne2173&amp;r_ref=https://slowand.com/member/login.html&amp;shop_no=1&amp;t=1574739577929" id="log_script"></script><div id="modalBackpanel"></div><div id="modalContainer">
    <iframe id="modalContent" scroll="0" scrolling="no" frameborder="0"></iframe>
</div></body>
</html>