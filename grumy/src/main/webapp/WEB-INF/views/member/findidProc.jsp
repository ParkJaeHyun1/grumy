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
<body id="cmn"><div id="skipNavigation">
    <p><a href="#category">전체상품목록 바로가기</a></p>
    <p><a href="#contents">본문 바로가기</a></p>
</div>

<div id="wrap">    
    <!-- 상단카테고리 -->
    

<div id="header">
    
    <!--div id="headerTop">
        <div module="Layout_multishopList" class="list">            
            <ul module="Layout_multishopListitem">
                <li class="{$selected_class}">
                    <a href="//{$shop_domain}/">
                        <img src="//img.cafe24.com/img/common/global/{$language}_32x24.png" alt="" />
                        &nbsp;<span class="name">{$locale_language}</span>
                        <span class="unit">{$currency_code}</span>
                    </a>
                </li>
                <li class="{$selected_class}">
                    <a href="//{$shop_domain}/">
                        <img src="//img.cafe24.com/img/common/global/{$language}_32x24.png" alt="" />
                        &nbsp;<span class="name">{$locale_language}</span>
                        <span class="unit">{$currency_code}</span>
                    </a>
                </li>
            </ul>
        </div>
            
        <div module="Layout_multishopList" class="thumb">            
            <ul>
                <li>
                    <a href="//{$shop_domain}/">
                        <img src="//img.cafe24.com/img/common/global/{$language}_32x24.png" alt="" />
                    &nbsp;</a>
                </li>
                <li>
                    <a href="//{$shop_domain}/">
                        <img src="//img.cafe24.com/img/common/global/{$language}_32x24.png" alt="" />
                    &nbsp;</a>
                </li>
            </ul>
            <div module="Layout_multishopListmultioption" class="multiOption">
                <a href="#none">
                    <span module="Layout_multishopListmultioptionCountry" class="ship">
                        <strong>Ship to</strong><span> : </span>
                    </span>
                    <span module="Layout_multishopListmultioptionLanguage" class="language">
                        <strong>Language</strong><span> : <img src="//img.cafe24.com/img/common/global/{$language_code}_32x24.png" alt="" />{$language_name}</span>
                    </span>
                </a>
            </div>
        </div>
    </div-->
    
    <div id="headerBottom">
        
        <!-- 로고 -->
        <div class="topArea">
            <h1 class="xans-element- xans-layout xans-layout-logotop "><a href="/index.html"><!--span>슬로우앤드</span--><img src="/web/upload/category/logo/879dc6b6f36fbc7af37c96e4ff9ff6b5_8_top.jpg"></a>
</h1>
            
        </div><!-- // 로고 -->
        
        <div class="myList">
    
            <div class="xans-element- xans-layout xans-layout-statelogoff "><a href="/member/login.html" class="log">LOGIN</a>
<a href="/member/join.html">JOIN</a>
<a href="/myshop/order/list.html">ORDER</a>
<a href="/myshop/index.html">MY PAGE</a>
<a class=" cart" href="/order/basket.html">CART</a>
</div>
        
                        
            <!-- cre.ma / 로그인 회원 정보 / 스크립트를 수정할 경우 연락주세요 (support@cre.ma) -->
                        
            <div class="xans-element- xans-layout xans-layout-boardinfo"><a style="cursor:pointer;">COMMUNITY</a>
<ul class="gnb_sub">
<li class="xans-record-"><a href="/board/notice/1/">NOTICE<span></span></a></li>
                    <li class="xans-record-"><a href="/board/상품-문의/6/">상품 문의<span></span></a></li>
<li class="xans-record-"><a href="/board/배송-문의/3001/">배송 문의<span></span></a></li>
<li class="xans-record-"><a href="/board/배송-전-변경취소/101/">배송 전 변경/취소<span></span></a></li>
<li class="xans-record-"><a href="/board/배송-후-교환반품/5/">배송 후 교환/반품<span></span></a></li>
<li class="xans-record-"><a href="/board/delay/2/">DELAY<span></span></a></li>
<li class="xans-record-"><a href="/board/채용-공고/1002/">채용 공고<span></span></a></li>
<li class="xans-record-"><a href="/board/review/4/">REVIEW<span></span></a></li>
                </ul>
</div>
            
            <form id="searchBarForm" name="" action="/product/search.html" method="get" target="_self" enctype="multipart/form-data">
<input id="banner_action" name="banner_action" value="" type="hidden"><div class="xans-element- xans-layout xans-layout-searchheader "><!--
                    $product_page=/product/detail.html
                    $category_page=/product/list.html
                -->
<fieldset>
<legend>검색</legend>
                    <input id="keyword" name="keyword" fw-filter="" fw-label="검색어" fw-msg="" class="inputTypeText" placeholder="" onmousedown="SEARCH_BANNER.clickSearchForm(this)" value="" type="text"><input type="image" src="/web/upload/yangji_pc_crumb/btn_search.png" alt="검색" onclick="SEARCH_BANNER.submitSearchBanner(this); return false;">
                &nbsp;</fieldset>
</div>
</form>     
        </div>
        
        
        
<!-- snap common script contact mail: support@snapvi.co.kr -->
    <span id="solutiontype" style="display:none;">cafe24</span>
    <span id="sfsnapfit_store_id" style="display:none">slowand</span>
    <div><input id="sf_draw_type" type="hidden" value="pc"><input id="sf_store_name" type="hidden" value="slowand"></div>
	<!-- snap common end -->
        
        
        <!-- 메인 메뉴 -->
        <ul class="gnb grid5"><!--li><a href="/shopinfo/company.html">BRAND</a></li>
            <li><a href="/yangji/lookbook.html?cate_no=50">LOOKBOOK</a></li--><div class="xans-element- xans-layout xans-layout-category main_cate"><div class="position">
                    <ul>
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
</div>
</div>
            <!--li module="Layout_BoardInfo"><a href="/board/free/list.html?board_no=1">COMMUNITY</a>
                <ul class="gnb_sub">
                    <li><a href="{$link_board_list}">{$board_name}<span></span></a></li>
                    <li><a href="{$link_board_list}">{$board_name}<span></span></a></li>
                </ul>
            </li-->
        </ul><!-- // 메인 메뉴 --><!--div class="link">
            <a module="Layout_bookmark" href="/link/bookmark.html" target="_blank" onclick="winPop(this.href); return false;"><span>즐겨찾기</span></a>
            <a module="Layout_shortcut" href="/link/shortcut.html" target="_blank" onclick="winPop(this.href); return false;">바로가기</a>
        </div--></div>

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
    <h2>ID FIND RESULT</h2>
    <h3>아이디 찾기 결과</h3>
</div>

<div class="xans-element- xans-member xans-member-findidresult"><div class="findId">        
        <p class="info">고객님 아이디 찾기가 완료 되었습니다.</p>
        <div class="ec-base-box typeMember gMessage">
            <p class="message">다음정보로 가입된 아이디가 총 <span class="txtEm">1</span>개 있습니다.</p>
            <div class="information">                
                <div class="description">
                    <ul class="ec-base-desc gSmall">
<li>
<strong class="term">이름</strong><strong class="desc">: <span>안지탁</span></strong>
</li>
                        <li>
<strong class="term">이메일</strong><span class="desc">: <span>snowangel86@daum.net</span></span>
</li>
                        <li><label><input type="radio" name="fid" onclick="set_findpwdid( 'sakurago86' , 'indi' );" checked=""> <span class="id">sakurago86</span> <span class="gaip">( 개인회원, 2019-12-03 가입 )</span></label><br></li>                        
                    </ul>
</div>
            </div>
        </div>
        <p class="ec-base-button">
            <a href="javascript:go_findlogin('sakurago86');" alt="로그인" class="yg_btn_140 ">로그인</a>
            <a href="javascript:go_findpwd('sakurago86','indi');" alt="비밀번호 찾기" class="yg_btn_140 yg_btn4 ">비밀번호 찾기</a>        </p>
    </div>
</div>
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
                    wcs.setReferer("https://slowand.com/member/id/find_id.html");

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

<script type="text/javascript" src="//slowand.com/ind-script/i18n.php?lang=ko_KR&amp;domain=front&amp;v=1911281089" charset="utf-8"></script>

<script type="text/javascript" src="/ind-script/optimizer.php?filename=tZXNbtswDMdfwNc9h5Bhh51boKcNAzb0AWiJtplQokpJbbOnH5N1Q7PNSQ0v8EEAwd-fEr_sJonoNu_VDQoRn0R3TrFIU49uWxxtPqZuW965c36NMvid2z401P3Lsek-2HdCZpXR4BP9kpVSHS47BvEtYqp3ovFWUlVhRr3MDWrO7hmSvSVV1KxYF3IVY2ao-G8IcnafpSdG9_UV7yVGSa5V4kVclNDMVJ4oLws4tOQrWUjzC83XLoquVDhzCabe3f8s-2sJhu97FgiLoNgqHOJ-6Qvq41xxZuAsvB-I-a0VDThA43pIQYmg9QZS-jPkxRbHZ-uhBFxeDF0_0hFaq-NFdrRaJZBNSrGMlrVKCIXSuFYlYoUAFea78UZAw0ldzdr1B-s89G2SfMLcHSt8e5y8-7ODN4MWBPXTov6rMAz2Qlq6JTO3kWy5PAKT5Ub0V7J-G1YLHuqQQvlb2BSyNQdeL8KEnPGKL5ggBb5mAFtDZHW9mr6trPof7s_iwbb4Ti6vv5m-estA2b9vFN1_olIN_gE&amp;type=js&amp;k=81cead6b99ffa3a78f6503851e2d2fd76af38afb&amp;t=1574024793"></script>
<script type="text/javascript" src="/ind-script/optimizer.php?filename=rZVbbsIwEEUXAL9dh9XuoKXqQwoqoq36PTgDHuJ4rLENyu6bBioVQV82P4kS5xyP7etYGW5RXV6J8sIrgVaB92qK7QJFzTFwEo1qHVQ7vLojVz_WFbkmjNfhQh3R8gWBFE0I9vM-Ngj1aeqjz-v91_Njwzjo77kpOFjhAbbFheXVacTSQr2SB90cIJMkgk53Khj2Iy-ksYDX-6fRkqWFWFrJuTQpkv192UxsLbpIkTD8a9ohdE7vrtncLmbZ-JPUKNrFbMENhAZjueGHBP3ZMROuk86vZMLJsysZy5Qs9u3Z_C16DpTf_xsFU1EoE2hOBVMgqLEAnw_4C0ewk6I6hmTnBwodLqk01BV0BTXcC9T5UeqPB-7_gaQHzbPhbX6qk400Y598vqKrqMH9Bi1b2Io2aPsDlV1ZNh76fcLS5RbjIRphi6MNWKqhV_WSdw&amp;type=js&amp;k=844e0e9e72b0ec0aa5494e86fa63d964b705df7a&amp;t=1573420409"></script>
<script type="text/javascript" src="/ind-script/optimizer.php?filename=rY9JDsIwDEUP0G45h8UgcQnYwAmMa6WGJA5xQtXbUwaJLdPGsmS95_-h18AwX2RIWV3GAJgSbDGiY9ixac3EcDRAGyM9ZrtR7NqjzeBdeDp3lcpHjA0tofecXxRTU43zFCZGXszXS0j14IWavgQP1nHTsYmLYCeJq5skTH89g8dRawHCwk7z-LXx6TmgCd309-WXfKQhaPxfw3MVOjUX4eF_zlB9Ees17XtJSaL7sbCZnwxX&amp;type=js&amp;k=3713b072f420c6621412a929d2509456a52ba407&amp;t=1560719849"></script>
<script type="text/javascript">
var EC_MOBILE = false;
var EC_MOBILE_DEVICE = false;
var EC_MOBILE_USE = true;
var mobileWeb = false;
var sSearchBannerUseFlag = 'F';
AUTHSSL_SC.setAppAction('FindIdResult');
AUTHSSL_SC.decrypt("eyy5O5A\/Kc0MxYwYkuWXglBNHQxgNfOgMu54ZvMMQO9rGD9Z3JXXGdWLgdzSN+u2dKUoEreRU7ti+vAxHblFOcFqhDO2wLEet7AlcCiTqL7Nb50+TQ2SMQuv2z\/O6eF+dWiOcqTGFzRfxkF\/xURr7F4WmsNJbE0By1NCuEZubh4yaWDCcGn7qHJeDVLXsXFBVJVjf1Go9Q3iCqifbo9dsrNzhGLC+MQGe6pJmhzP6SZOgzk+DhVHvDILpug2LvqF\/Vd0DD\/9Jg5HhMZ5dKRJDllP3DU01qvMXW7RsCczyiVBTlc88g\/SWS2D+Qx+K+OwiGwxGZ4+u4v1ZqS52vY4Y67EtQof\/p6nkFpsLy1XUUPI6kJgVHs7ACGY0M1NaEdoJlPMhQKYpYDlp8vJtGZZV8ZJtkoKUiX58ar162BpRN19aPr7wWiCi1p4ev3M3Mp4eoGSUJn\/buv6\/qDrywRfFw2adByxsUlB4xfF5ZBtS8Duuh09x2RUppI46RuIxjbO");
var aLogData = {"log_server1":"eclog2-186.cafe24.com","log_server2":"eclog2-186.cafe24.com","mid":"anne2173","stype":"e","domain":"","shop_no":1,"etc":""};
var sMileageName = '적립금';
var sMileageUnit = '[:PRICE:]원';
var sDepositName = '예치금';
var sDepositUnit = '원';
var SHOP_CURRENCY_INFO = {"1":{"aShopCurrencyInfo":{"currency_code":"KRW","currency_no":"410","currency_symbol":"\uffe6","currency_name":"South Korean won","currency_desc":"\uffe6 \uc6d0 (\ud55c\uad6d)","decimal_place":0,"round_method_type":"F"},"aShopSubCurrencyInfo":null,"aBaseCurrencyInfo":{"currency_code":"KRW","currency_no":"410","currency_symbol":"\uffe6","currency_name":"South Korean won","currency_desc":"\uffe6 \uc6d0 (\ud55c\uad6d)","decimal_place":0,"round_method_type":"F"},"fExchangeRate":1,"fExchangeSubRate":null,"aFrontCurrencyFormat":{"head":"","tail":"\uc6d0"},"aFrontSubCurrencyFormat":{"head":"","tail":""}}};
var EC_ASYNC_LIVELINKON_ID = '';
var EC_FRONT_JS_CONFIG_MANAGE = {"sSmartBannerScriptUrl":"https:\/\/app4you.cafe24.com\/SmartBanner\/tunnel\/scriptTags?vs=1563164396689206","sMallId":"anne2173","sDefaultAppDomain":"https:\/\/app4you.cafe24.com","sWebLogEventFlag":"F","FW_MANIFEST_CACHE_REVISION":1911281089,"IS_WEB_VIEW":"F"};
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
<iframe src="/exec/front/eclog/main/?member=21862e2699cdb9dea3ebb7941d6350717cdb3dac661de7912f847e361d8338871e50842f0d5a116410b3c400dd14a55f461e7db61c6fd3ed9c72b70d08baa460abacf4475c2e9da8b82a2df43886b6eadbbf47dcb871ac2cca737fc6bb7a69538bde41563b0492f8ad9878e85c9176b4520d4847b6d4048200422a90e84172b16cf1ba0ee3846b450ce07b6338e016725ee6b4e04a5c02c126dc5fa7c3be264ea33ac85823aa3bbe19dc1b581cae638ef957e0bddebadfbfd0e9ddeb13341d6cb1a9dfb2dcb64a340dc6728f9d8e0542c45fa0eb56596ff7006dcb49949957f13683fba6b0ea6f2e6847083bdddb58a34761b0684e307c5ef4362805f5c7a7791f37544e05cf47866379cdf394fedd595b1e6cd2791dac85a5208d09af19f045&amp;check_method=2&amp;rloc=https%3A//slowand.com/member/id/find_id_result.html%3Fmember%3D21862e2699cdb9dea3ebb7941d6350717cdb3dac661de7912f847e361d8338871e50842f0d5a116410b3c400dd14a55f461e7db61c6fd3ed9c72b70d08baa460abacf4475c2e9da8b82a2df43886b6eadbbf47dcb871ac2cca737fc6bb7a69538bde41563b0492f8ad9878e85c9176b4520d4847b6d4048200422a90e84172b16cf1ba0ee3846b450ce07b6338e016725ee6b4e04a5c02c126dc5fa7c3be264ea33ac85823aa3bbe19dc1b581cae638ef957e0bddebadfbfd0e9ddeb13341d6cb1a9dfb2dcb64a340dc6728f9d8e0542c45fa0eb56596ff7006dcb49949957f13683fba6b0ea6f2e6847083bdddb58a34761b0684e307c5ef4362805f5c7a7791f37544e05cf47866379cdf394fedd595b1e6cd2791dac85a5208d09af19f045%26check_method%3D2&amp;rref=https%3A//slowand.com/member/id/find_id.html&amp;udim=1280*720&amp;rserv=eclog2-186.cafe24.com&amp;cid=CID944049a0e02bc91e0a30d0163a0455de&amp;role_path=MEMBER_ID_FINDRESULT" id="log_realtime" style="display: none;"></iframe><script src="https://eclog2-186.cafe24.com/weblog_ubp.html?uid=anne2173&amp;udim=1280*720&amp;uref=https://slowand.com/member/id/find_id.html&amp;uname=anne2173&amp;url=https://slowand.com/member/id/find_id_result.html?member=21862e2699cdb9dea3ebb7941d6350717cdb3dac661de7912f847e361d8338871e50842f0d5a116410b3c400dd14a55f461e7db61c6fd3ed9c72b70d08baa460abacf4475c2e9da8b82a2df43886b6eadbbf47dcb871ac2cca737fc6bb7a69538bde41563b0492f8ad9878e85c9176b4520d4847b6d4048200422a90e84172b16cf1ba0ee3846b450ce07b6338e016725ee6b4e04a5c02c126dc5fa7c3be264ea33ac85823aa3bbe19dc1b581cae638ef957e0bddebadfbfd0e9ddeb13341d6cb1a9dfb2dcb64a340dc6728f9d8e0542c45fa0eb56596ff7006dcb49949957f13683fba6b0ea6f2e6847083bdddb58a34761b0684e307c5ef4362805f5c7a7791f37544e05cf47866379cdf394fedd595b1e6cd2791dac85a5208d09af19f045&amp;check_method=2&amp;r_ref=https://slowand.com/member/id/find_id.html&amp;shop_no=1&amp;t=1575341103051"></script><script type="text/javascript" src="//eclog2-186.cafe24.com/weblog.js?uid=anne2173&amp;uname=anne2173&amp;r_ref=https://slowand.com/member/id/find_id.html&amp;shop_no=1&amp;t=1575341103051" id="log_script"></script><div id="modalBackpanel"></div><div id="modalContainer">
    <iframe id="modalContent" scroll="0" scrolling="no" frameborder="0"></iframe>
</div>
</body>
</html>