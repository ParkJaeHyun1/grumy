<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="naver-site-verification"
	content="cdc66033ac54c3c0175fba92d71c46317e5c78e1" />
<!--PG크로스브라우징필수내용 시작-->
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<!--PG크로스브라우징필수내용 끝-->
<!--해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!--해당 CSS는 쇼핑몰 전체 슬라이드 배너에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. -->
<script type="text/javascript"
	src="https://www.slowand.com/ec-js/common.js"></script>
<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://www.slowand.com/yangji/js/jquery.bxslider.min.js"></script>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />
<!--script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script-->
<link rel="canonical" href="http://www.slowand.com">
	<link rel="alternate" href="http://www.m.slowand.com/">

		<meta name="google-site-verification"
			content="EFPjfmjiYaukHxgQEmFrlvyllFVJax3Pr1MlHCYhkgU" />
		<meta name="naver-site-verification"
			content="cdc66033ac54c3c0175fba92d71c46317e5c78e1" />

		<script type="application/ld+json">
    {
     "@context": "http://schema.org",
     "@type": "Person",
     "name": "그루미",
     "url": "http://www.slowand.com",
     "sameAs": [
       "https://www.instagram.com/slow.and",
       "https://www.facebook.com/slowandmore",
     ]
    }
</script>

		<meta name="author" content="슬로우앤드 - 천천히 그리고,">
			<meta name="keywords"
				content="20대 여성의류 베이직쇼핑몰, 데일리룩, 캠퍼스룩, 원피스, 스커트, 악세사리, 니트, 가디건, 등" />
			<meta name="description"
				content="20대 여성의류 베이직쇼핑몰, 데일리룩, 캠퍼스룩, 원피스, 스커트, 악세사리, 니트, 가디건, 등">

				<meta name="viewport" content="width=device-width">
					<link rel="canonical" href="http://slowand.com/" />
					<link rel="alternate" href="http://m.slowand.com/" />
					<meta property="og:url" content="http://slowand.com/" />
					<meta property="og:title" content="그루미" />
					<meta property="og:description"
						content="20대 여성의류쇼핑몰, 데일리룩, 캠퍼스룩, 원피스, 스커트, 악세사리 등" />
					<meta property="og:site_name" content="슬로우앤드" />
					<meta property="og:type" content="website" />
					<link rel="shortcut icon"
						href="https://www.slowand.com/web/upload/favicon_20170717165926.ico" />
					<script type="text/javascript"
						src="https://www.slowand.com/app/Eclog/js/cid.generate.js?vs=3d0b473968a0ec4ec41e3bf59df3aa51"></script>
					<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>


					<script type="text/javascript"
						src="//slowand.com/ind-script/moment.php?convert=T"></script>

</style>
					<title>슬로우앤드</title>
					<meta name="path_role" content="MAIN" />
					<meta name="author" content="슬로우앤드" />
					<meta name="description"
						content="20대 여성의류 베이직쇼핑몰, 데일리룩, 캠퍼스룩, 원피스, 스커트, 악세사리, 니트, 가디건, 등" />
					<meta name="keywords"
						content="20대 여성의류 베이직쇼핑몰, 데일리룩, 캠퍼스룩, 원피스, 스커트, 악세사리, 니트, 가디건, 등" />
</head>
<body id="main">
	<div id="skipNavigation">
		<p>
			<a href="#category">전체상품목록 바로가기</a>
		</p>
		<p>
			<a href="#contents">본문 바로가기</a>
		</p>
	</div>

	<div id="wrap">
		<!-- 상단카테고리 -->

		<script>
			// 메인메뉴에 마우스오버시 하위메뉴 나타남
			$(".gnb > li").mouseenter(function() {
				//$(this).find(".gnb_sub").stop().slideDown(200);
				$(this).find(".gnb_sub").stop().css('display', 'block');
			});
			$(".gnb > li").mouseleave(function() {
				$(this).find(".gnb_sub").css("display", "none");
			});

			// 메인메뉴에 마우스오버시 하위메뉴 나타남 *커뮤니티 이동 양지수정*
			$(".myList > .xans-layout-boardinfo").mouseenter(function() {
				//$(this).find(".gnb_sub").stop().slideDown(200);
				$(this).find(".gnb_sub").stop().css('display', 'block');
			});
			$(".myList > .xans-layout-boardinfo").mouseleave(function() {
				$(this).find(".gnb_sub").css("display", "none");
			});
		</script>
		<!-- //상단카테고리 -->

		<!-- 메인슬라이드 -->
		<div id="photoslide_out">
			<div
				class="xans-element- xans-photoslide2 xans-photoslide2-slide-1 xans-photoslide2-slide xans-photoslide2-1 photoslide_inner main_slider ">

				<div class="slider-wrapper theme-default">
					<div class="ribbon"></div>
					<div id="nivoSlider1" rel="1" class="nivoSlider"
						style="background: url(//app-storage-edge-008.cafe24.com/photoslide2/anne2173/2019/12/09/2f13eda322d570c0d5fb69934438fbda.jpg) no-repeat; position: 

relative; overflow: hidden; width: 2000px; height: 800px;">
						<a
							href="https://www.slowand.com/product/slowmade-우디-프리미엄-더플코트-3-color/3581/category/1/display/3/"
							rel="106" class="nivohref" style='display: block;'><img
							src="//app-storage-008.cafe24.com/photoslide2/anne2173/2019/11/05/b7c3e23fad0b75ac6bd2c0161ddc26f1.jpg"
							alt="" title="" border="0" /></a> <a
							href="https://www.slowand.com/product/slowmade-홀가먼트-터틀넥니트-wool-80-5-color/3582/category/1/display/3/"
							rel="103" class="nivohref" style='display: none;'><img
							src="//app-storage-008.cafe24.com/photoslide2/anne2173/2019/11/05/7d0c549a50f984117ae8c3cccc269022.jpg"
							alt="" title="" border="0" /></a> <a
							href="https://www.slowand.com/product/재입고-slowmade-코듀로이-야상점퍼-플리스내피-3-color/3564/category/24/display/1/"
							rel="104" class="nivohref" style='display: none;'><img
							src="//app-storage-008.cafe24.com/photoslide2/anne2173/2019/11/05/03f47f67e4a0e544a0b67b976be4d2e7.jpg"
							alt="" title="" border="0" /></a> <a href="javascript:;" rel="102"
							class="nivohref" style='display: none;'><img
							src="//app-storage-008.cafe24.com/photoslide2/anne2173/2019/10/30/4933a3cf6770ef9152594f252531b5f8.jpg"
							alt="" title="" border="0" /></a> <a
							href="https://www.slowand.com/product/slowmade-코펜-울-싱글하프코트-3-color/3569/category/1/display/3/"
							rel="98" class="nivohref" style='display: none;'><img
							src="//app-storage-008.cafe24.com/photoslide2/anne2173/2019/10/29/0ee8281bf897d9873430642f5d17a044.jpg"
							alt="" title="" border="0" /></a> <a
							href="https://slowand.com/product/1만장돌파-slowmade-여리핏-터틀넥티셔츠-6-color/2065/category/25/display/1/"
							rel="96" class="nivohref" style='display: none;'><img
							src="//app-storage-008.cafe24.com/photoslide2/anne2173/2019/10/23/a761b96aca825f437b27b64431c57467.jpg"
							alt="1023" title="1023" border="0" /></a> <a
							href="https://slowand.com/category/창고개방sale/111/" rel="97"
							class="nivohref" style='display: none;'><img
							src="//app-storage-008.cafe24.com/photoslide2/anne2173/2019/10/23/aeae8267aae84bc9df09b678f7fbddaf.jpg"
							alt="1023" title="1023" border="0" /></a>
					</div>
				</div>
			</div>
		</div>

		<!-- //메인슬라이드 -->

		<!-- 탭영역배너 -->

		<div id="container">
			<div id="contents_main">






				<!-- new! -->
				<div
					class="xans-element- xans-product xans-product-listmain-2 xans-product-listmain xans-product-2 ec-base-product">
					<!--
        $count = 12
            ※ 노출시킬 상품의 갯수를 숫자로 설정할 수 있으며, 설정하지 않을경우, 최대 200개로 자동제한됩니다.
            ※ 상품 노출갯수가 많으면 쇼핑몰에 부하가 발생할 수 있습니다.
        $basket_result = /product/add_basket.html
        $basket_option = /product/basket_option.html
    -->
					<div class="title">
						<h2>
							<span>NEW!</span>
						</h2><br></br>
					</div>
					<ul class="prdList grid4">
						<li id="anchorBoxId_3597" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/slowmade여리핏-윈터-기모티셔츠-8-color/3597/category/1/display/3/"
									name="anchorBoxName_3597"><img
									src="//slowand.com/web/product/medium/201911/4b19a9dfd5ff96f0d6ea7ac99ca6d576.gif"
									id="eListPrdImage3597_3" alt="#SLOWMADE.여리핏 윈터 기모티셔츠 - 8 color" />
									<!--img src="//slowand.com/web/product/small/201911/ce478fbb2439f12b2055ecafcfcfea99.gif" id="" alt="#SLOWMADE.여

리핏 윈터 기모티셔츠 - 8 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3597,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3597', '1', '3','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3597" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/slowmade여리핏-윈터-기모티셔츠-8-color/3597/category/1/display/3/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">#SLOWMADE.여리핏
											윈터 기모티셔츠 - 8 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-2 xans-product-colorchip xans-product-2">
										<span style="background-color: #E6E3E3"
											class="chips xans-record-"></span> <span
											style="background-color: #D6AFAF" class="chips xans-record-"></span><span
											style="background-color: #B8A47D" class="chips xans-record-"></span><span
											style="background-color: #523E31" class="chips xans-record-"></span><span
											style="background-color: #32382C" class="chips xans-record-"></span><span
											style="background-color: #464D57" class="chips xans-record-"></span><span
											style="background-color: #232429" class="chips xans-record-"></span><span
											style="background-color: #000000" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-2 xans-product-listitem xans-product-2 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold; text-decoration: line-through;">14,000원</span><span
										id="span_product_tax_type_text"
										style="text-decoration: line-through;"> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">made by
											slowand! 누적구매량 8만장 <br>가장 사랑받은 시그니처핏 #여리핏티셔츠 <br>왠만한
													내복보다 따뜻하고 포근한 <br>속기모를 넣어 겨울용으로 보여드려요 *.* <br>1+1
															구매시 무료배송이벤트 중입니다. 
									</span></li>
									<li class=" xans-record-"><strong class="title "><span
											style="font-size: 12px; color: #555555;">할인판매가</span> :</strong> <span
										style="font-size: 12px; color: #555555;">13,300원 <span
											style="font-size: 11px; color: #fa6767; font-weight: bold;">700원
												(할인)</span></span></li>
									<li class=" xans-record-"><strong class="title "><span
											style="font-size: 10px; color: #ff99a0; font-weight: bold;">할인
												기간</span> :</strong>
										<div class="discountPeriod">
											<a href="#none"><img
												src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_details.gif"
												alt="자세히" /></a>
											<div class="layerDiscountPeriod ec-base-tooltip">
												<div class="content">
													<strong class="title"><img
														src="//img.echosting.cafe24.com/skin/base_ko_KR/common/ico_tip_title.gif"
														alt="" /> 할인기간</strong>
													<p>
														<strong>남은시간 2일 05:27:02 (700원 할인)</strong>
													</p>
													<p>2019-11-08 20:15 ~ 2019-11-11 20:15</p>
												</div>
												<a href="#none" class="close btnClose"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close_tip.gif"
													alt="닫기"></a> <span class="edge"></span>
											</div>
										</div></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_4.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3596" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/slowmade-윈터즈-양기모-후드집업-5-color/3596/category/1/display/3/"
									name="anchorBoxName_3596"><img
									src="//slowand.com/web/product/medium/201911/bc49032a2938a2dae8914d83b1cb3668.gif"
									id="eListPrdImage3596_3"
									alt="#SLOWMADE. 윈터즈 양기모 후드집업 - 5 color" /> <!--img 

src="//slowand.com/web/product/small/201911/4ea4f1ef5b1ebf6b8498831b8ef4b233.gif" id="" alt="#SLOWMADE. 윈터즈 양기모 후드집업 - 5 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3596,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3596', '1', '3','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3596" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/slowmade-윈터즈-양기모-후드집업-5-color/3596/category/1/display/3/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">#SLOWMADE. 윈터즈
											양기모 후드집업 - 5 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-2 xans-product-colorchip xans-product-2">
										<span style="background-color: #FEFFEF"
											class="chips xans-record-"></span> <span
											style="background-color: #EBE7E2" class="chips xans-record-"></span><span
											style="background-color: #4F422E" class="chips xans-record-"></span><span
											style="background-color: #494B4D" class="chips xans-record-"></span><span
											style="background-color: #000000" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-2 xans-product-listitem xans-product-2 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #999999;">소비자가</span> :</strong> <span
										style="font-size: 12px; color: #999999; text-decoration: line-through;">34,900원</span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold; text-decoration: line-through;">29,800원</span><span
										id="span_product_tax_type_text"
										style="text-decoration: line-through;"> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">맨투맨,후디에 이어
											요청많았던 후드집업♥ <br>양기모로 한겨울 미리미리 준비하기 :) <br>도톰하고 폭닥한
													특양기모원단으로 <br>가볍게 티 위에만 걸쳐도 포근해요 *.* <br>(니켈칩/3중재봉/아

일렛디테일)

													
									</span></li>
									<li class=" xans-record-"><strong class="title "><span
											style="font-size: 12px; color: #555555;">할인판매가</span> :</strong> <span
										style="font-size: 12px; color: #555555;">28,400원 <span
											style="font-size: 11px; color: #fa6767; font-weight: bold;">1,400원
												(할인)</span></span></li>
									<li class=" xans-record-"><strong class="title "><span
											style="font-size: 10px; color: #ff99a0; font-weight: bold;">할인
												기간</span> :</strong>
										<div class="discountPeriod">
											<a href="#none"><img
												src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_details.gif"
												alt="자세히" /></a>
											<div class="layerDiscountPeriod ec-base-tooltip">
												<div class="content">
													<strong class="title"><img
														src="//img.echosting.cafe24.com/skin/base_ko_KR/common/ico_tip_title.gif"
														alt="" /> 할인기간</strong>
													<p>
														<strong>남은시간 2일 05:37:02 (1,400원 할인)</strong>
													</p>
													<p>2019-11-08 20:25 ~ 2019-11-11 20:25</p>
												</div>
												<a href="#none" class="close btnClose"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close_tip.gif"
													alt="닫기"></a> <span class="edge"></span>
											</div>
										</div></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3595" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/slowmade-탄탄핏-윈터기모셔츠-8-color/3595/category/1/display/3/"
									name="anchorBoxName_3595"><img
									src="//slowand.com/web/product/medium/201911/a6fa8e3d252398356a52bffae54df107.gif"
									id="eListPrdImage3595_3" alt="#SLOWMADE. 탄탄핏 윈터기모셔츠 - 8 color" />
									<!--img src="//slowand.com/web/product/small/201911/5530167201b9419774ef48b7ab7b35d9.gif" id="" alt="#SLOWMADE. 

탄탄핏 윈터기모셔츠 - 8 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3595,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3595', '1', '3','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3595" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/slowmade-탄탄핏-윈터기모셔츠-8-color/3595/category/1/display/3/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">#SLOWMADE. 탄탄핏
											윈터기모셔츠 - 8 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-2 xans-product-colorchip xans-product-2">
										<span style="background-color: #FFF9F5"
											class="chips xans-record-"></span> <span
											style="background-color: #D9D1C5" class="chips xans-record-"></span><span
											style="background-color: #A1A1A1" class="chips xans-record-"></span><span
											style="background-color: #8FA7C4" class="chips xans-record-"></span><span
											style="background-color: #BF6565" class="chips xans-record-"></span><span
											style="background-color: #042E33" class="chips xans-record-"></span><span
											style="background-color: #050938" class="chips xans-record-"></span><span
											style="background-color: #000000" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-2 xans-product-listitem xans-product-2 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #999999;">소비자가</span> :</strong> <span
										style="font-size: 12px; color: #999999; text-decoration: line-through;">33,000원</span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold; text-decoration: line-through;">24,900원</span><span
										id="span_product_tax_type_text"
										style="text-decoration: line-through;"> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">#m.b.s!
											어텀무지셔츠의 겨울기모버전 *.* <br>깔끔 스탠다드핏 + 예쁜색감 유지한채 <br>겨울에도
													기획특가 그대로 보여드려요 :) <br>올 겨울 기본으로 소장해야 할 기모셔츠 
									</span></li>
									<li class=" xans-record-"><strong class="title "><span
											style="font-size: 12px; color: #555555;">할인판매가</span> :</strong> <span
										style="font-size: 12px; color: #555555;">23,700원 <span
											style="font-size: 11px; color: #fa6767; font-weight: bold;">1,200원
												(할인)</span></span></li>
									<li class=" xans-record-"><strong class="title "><span
											style="font-size: 10px; color: #ff99a0; font-weight: bold;">할인
												기간</span> :</strong>
										<div class="discountPeriod">
											<a href="#none"><img
												src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_details.gif"
												alt="자세히" /></a>
											<div class="layerDiscountPeriod ec-base-tooltip">
												<div class="content">
													<strong class="title"><img
														src="//img.echosting.cafe24.com/skin/base_ko_KR/common/ico_tip_title.gif"
														alt="" /> 할인기간</strong>
													<p>
														<strong>남은시간 1일 05:42:02 (1,200원 할인)</strong>
													</p>
													<p>2019-11-07 20:30 ~ 2019-11-10 20:30</p>
												</div>
												<a href="#none" class="close btnClose"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close_tip.gif"
													alt="닫기"></a> <span class="edge"></span>
											</div>
										</div></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3564" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/플러스사이즈open-slowmade-코듀로이-야상점퍼-플리스내피-3-color/3564/category/1/display/3/"
									name="anchorBoxName_3564"><img
									src="//slowand.com/web/product/medium/201910/18c2757d341be29d93481c0929ef6039.gif"
									id="eListPrdImage3564_3"
									alt="[플러스사이즈open] #SLOWMADE. 코듀로이 야상점퍼 (플리스내피) - 3 color" /> <!--img 

src="//slowand.com/web/product/small/201910/38926e73dedd64f2f141edfbb1ba5aaa.gif" id="" alt="[플러스사이즈open] #SLOWMADE. 코듀로이 야상점퍼 (플리스내피) - 3 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3564,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3564', '1', '3','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3564" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/플러스사이즈open-slowmade-코듀로이-야상점퍼-플리스내피-3-color/3564/category/1/display/3/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">[플러스사이즈open]
											#SLOWMADE. 코듀로이 야상점퍼 (플리스내피) - 3 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-2 xans-product-colorchip xans-product-2">
										<span style="background-color: #C7B287"
											class="chips xans-record-"></span> <span
											style="background-color: #484F36" class="chips xans-record-"></span><span
											style="background-color: #0B2A5E" class="chips xans-record-"></span><span
											style="background-color: #C7B287" class="chips xans-record-"></span><span
											style="background-color: #484F36" class="chips xans-record-"></span><span
											style="background-color: #0B2A5E" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-2 xans-product-listitem xans-product-2 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">69,000원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">made by
											slowand, 문의폭주 맨사이즈오픈! <br>요즘따라 더 입고싶은 캐쥬얼한 야상점퍼 <br>플리스(후리스)안감

을
													덧대어줘서 <br>바람 새어들어오지 않고 정말 따뜻해요 *.* 
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3598" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/slowmade-딥체크-울트렌치코트-one-color/3598/category/1/display/3/"
									name="anchorBoxName_3598"><img
									src="//slowand.com/web/product/medium/201911/160c50e99ff3c107ef92dd43a4d0f6d4.gif"
									id="eListPrdImage3598_3"
									alt="#SLOWMADE. 딥체크 울트렌치코트 - one color" /> <!--img 

src="//slowand.com/web/product/small/201911/0affe2ed03cedcf0ebbd368b7c6771db.gif" id="" alt="#SLOWMADE. 딥체크 울트렌치코트 - one color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3598,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3598', '1', '3','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3598" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/slowmade-딥체크-울트렌치코트-one-color/3598/category/1/display/3/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">#SLOWMADE. 딥체크
											울트렌치코트 - one color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-2 xans-product-colorchip xans-product-2">
										<span style="background-color: #263622"
											class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-2 xans-product-listitem xans-product-2 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold; text-decoration: line-through;">103,000원</span><span
										id="span_product_tax_type_text"
										style="text-decoration: line-through;"> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">made by
											slowand! NEW 다크그린+체크조합 <br>후기로 인정받은 울 더블트렌치코트 핏 <br>겨울스러운
													체크원단으로 보여드려요 <br>흔하지 않아 더 만족하실거에요 - 
									</span></li>
									<li class=" xans-record-"><strong class="title "><span
											style="font-size: 12px; color: #555555;">할인판매가</span> :</strong> <span
										style="font-size: 12px; color: #555555;">97,900원 <span
											style="font-size: 11px; color: #fa6767; font-weight: bold;">5,100원
												(할인)</span></span></li>
									<li class=" xans-record-"><strong class="title "><span
											style="font-size: 10px; color: #ff99a0; font-weight: bold;">할인
												기간</span> :</strong>
										<div class="discountPeriod">
											<a href="#none"><img
												src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_details.gif"
												alt="자세히" /></a>
											<div class="layerDiscountPeriod ec-base-tooltip">
												<div class="content">
													<strong class="title"><img
														src="//img.echosting.cafe24.com/skin/base_ko_KR/common/ico_tip_title.gif"
														alt="" /> 할인기간</strong>
													<p>
														<strong>남은시간 2일 05:16:02 (5,100원 할인)</strong>
													</p>
													<p>2019-11-08 20:04 ~ 2019-11-11 20:04</p>
												</div>
												<a href="#none" class="close btnClose"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close_tip.gif"
													alt="닫기"></a> <span class="edge"></span>
											</div>
										</div></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3591" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/slowmade-먼데이-매트카키-데님팬츠-4-size/3591/category/1/display/3/"
									name="anchorBoxName_3591"><img
									src="//slowand.com/web/product/medium/201911/2a6dae9be4dac89dd3251b5f756d214f.gif"
									id="eListPrdImage3591_3" alt="#SLOWMADE. 먼데이 매트카키 데님팬츠- 4 size" />
									<!--img src="//slowand.com/web/product/small/201911/93c3aa3ef198d62fecb912f9093de3aa.gif" id="" alt="#SLOWMADE. 

먼데이 매트카키 데님팬츠- 4 size" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3591,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3591', '1', '3','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3591" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/slowmade-먼데이-매트카키-데님팬츠-4-size/3591/category/1/display/3/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">#SLOWMADE. 먼데이
											매트카키 데님팬츠- 4 size</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-2 xans-product-colorchip xans-product-2">
										<span style="background-color: #3D473E"
											class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-2 xans-product-listitem xans-product-2 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold; text-decoration: line-through;">29,800원</span><span
										id="span_product_tax_type_text"
										style="text-decoration: line-through;"> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">made by
											slowand! 먼데이에 카키더하기 <br>다잉데님만의 빈티지한 색감과 매력 <br>사랑받는
													하체커버 먼데이핏으로 만나보세요 :) 
									</span></li>
									<li class=" xans-record-"><strong class="title "><span
											style="font-size: 12px; color: #555555;">할인판매가</span> :</strong> <span
										style="font-size: 12px; color: #555555;">28,400원 <span
											style="font-size: 11px; color: #fa6767; font-weight: bold;">1,400원
												(할인)</span></span></li>
									<li class=" xans-record-"><strong class="title "><span
											style="font-size: 10px; color: #ff99a0; font-weight: bold;">할인
												기간</span> :</strong>
										<div class="discountPeriod">
											<a href="#none"><img
												src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_details.gif"
												alt="자세히" /></a>
											<div class="layerDiscountPeriod ec-base-tooltip">
												<div class="content">
													<strong class="title"><img
														src="//img.echosting.cafe24.com/skin/base_ko_KR/common/ico_tip_title.gif"
														alt="" /> 할인기간</strong>
													<p>
														<strong>남은시간 1일 05:16:02 (1,400원 할인)</strong>
													</p>
													<p>2019-11-07 20:04 ~ 2019-11-10 20:04</p>
												</div>
												<a href="#none" class="close btnClose"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close_tip.gif"
													alt="닫기"></a> <span class="edge"></span>
											</div>
										</div></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_4.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3592" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/slowmade-윈터-스트라이프티셔츠-양기모-4-color/3592/category/1/display/3/"
									name="anchorBoxName_3592"><img
									src="//slowand.com/web/product/medium/201911/27420b2c60bc68c022edf264eb8da4e9.gif"
									id="eListPrdImage3592_3"
									alt="#SLOWMADE. 윈터 스트라이프티셔츠 (양기모) - 4 color" /> <!--img 

src="//slowand.com/web/product/small/201911/54bbf0735f155855d9f6ab72fce50958.gif" id="" alt="#SLOWMADE. 윈터 스트라이프티셔츠 (양기모) - 4 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3592,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3592', '1', '3','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3592" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/slowmade-윈터-스트라이프티셔츠-양기모-4-color/3592/category/1/display/3/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">#SLOWMADE. 윈터
											스트라이프티셔츠 (양기모) - 4 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-2 xans-product-colorchip xans-product-2">
										<span style="background-color: #B39C8D"
											class="chips xans-record-"></span> <span
											style="background-color: #606169" class="chips xans-record-"></span><span
											style="background-color: #BF9869" class="chips xans-record-"></span><span
											style="background-color: #09163D" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-2 xans-product-listitem xans-product-2 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold; text-decoration: line-through;">23,000원</span><span
										id="span_product_tax_type_text"
										style="text-decoration: line-through;"> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">made by
											slowand ! 캐쥬얼코디 필수템 <br>양기모 맨투맨처럼 도톰한 두께로 제작된 <br>보송보송
													따뜻한 스트라이프 티셔츠 <br>집에서도 입고있고 싶은 부드러운 재질이에요 :) 
									</span></li>
									<li class=" xans-record-"><strong class="title "><span
											style="font-size: 12px; color: #555555;">할인판매가</span> :</strong> <span
										style="font-size: 12px; color: #555555;">21,900원 <span
											style="font-size: 11px; color: #fa6767; font-weight: bold;">1,100원
												(할인)</span></span></li>
									<li class=" xans-record-"><strong class="title "><span
											style="font-size: 10px; color: #ff99a0; font-weight: bold;">할인
												기간</span> :</strong>
										<div class="discountPeriod">
											<a href="#none"><img
												src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_details.gif"
												alt="자세히" /></a>
											<div class="layerDiscountPeriod ec-base-tooltip">
												<div class="content">
													<strong class="title"><img
														src="//img.echosting.cafe24.com/skin/base_ko_KR/common/ico_tip_title.gif"
														alt="" /> 할인기간</strong>
													<p>
														<strong>남은시간 1일 05:31:02 (1,100원 할인)</strong>
													</p>
													<p>2019-11-07 20:19 ~ 2019-11-10 20:19</p>
												</div>
												<a href="#none" class="close btnClose"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close_tip.gif"
													alt="닫기"></a> <span class="edge"></span>
											</div>
										</div></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3593" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/slowmade-페이지-케이블니트-4-color/3593/category/1/display/3/"
									name="anchorBoxName_3593"><img
									src="//slowand.com/web/product/medium/201911/f6999330699f104d537ff1debe1b50d4.gif"
									id="eListPrdImage3593_3" alt="#SLOWMADE. 페이지 케이블니트 4 color" />
									<!--img src="//slowand.com/web/product/small/201911/f642df4bbfb7cbb6dd1a957ce8424787.gif" id="" alt="#SLOWMADE. 

페이지 케이블니트 4 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3593,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3593', '1', '3','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3593" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/slowmade-페이지-케이블니트-4-color/3593/category/1/display/3/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">#SLOWMADE. 페이지
											케이블니트 4 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-2 xans-product-colorchip xans-product-2">
										<span style="background-color: #EBE3CA"
											class="chips xans-record-"></span> <span
											style="background-color: #C7B199" class="chips xans-record-"></span><span
											style="background-color: #3F695D" class="chips xans-record-"></span><span
											style="background-color: #394228" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-2 xans-product-listitem xans-product-2 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #999999;">소비자가</span> :</strong> <span
										style="font-size: 12px; color: #999999; text-decoration: line-through;">33,000원</span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold; text-decoration: line-through;">26,900원</span><span
										id="span_product_tax_type_text"
										style="text-decoration: line-through;"> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">made by
											slowand! 빈티지샵에서 <br>발견한 것 처럼 낡은 매력의 케이블니트 <br>도톰한
													중량감으로 한겨울까지 거뜬하게 *.* <br>까슬거림 없는 소재라 더 추천드려요 :) ♥ 
									</span></li>
									<li class=" xans-record-"><strong class="title "><span
											style="font-size: 12px; color: #555555;">할인판매가</span> :</strong> <span
										style="font-size: 12px; color: #555555;">25,600원 <span
											style="font-size: 11px; color: #fa6767; font-weight: bold;">1,300원
												(할인)</span></span></li>
									<li class=" xans-record-"><strong class="title "><span
											style="font-size: 10px; color: #ff99a0; font-weight: bold;">할인
												기간</span> :</strong>
										<div class="discountPeriod">
											<a href="#none"><img
												src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_details.gif"
												alt="자세히" /></a>
											<div class="layerDiscountPeriod ec-base-tooltip">
												<div class="content">
													<strong class="title"><img
														src="//img.echosting.cafe24.com/skin/base_ko_KR/common/ico_tip_title.gif"
														alt="" /> 할인기간</strong>
													<p>
														<strong>남은시간 1일 05:23:02 (1,300원 할인)</strong>
													</p>
													<p>2019-11-07 20:11 ~ 2019-11-10 20:11</p>
												</div>
												<a href="#none" class="close btnClose"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close_tip.gif"
													alt="닫기"></a> <span class="edge"></span>
											</div>
										</div></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3594" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/slowmade-여리핏-컷팅티셔츠tensel-5-color/3594/category/1/display/3/"
									name="anchorBoxName_3594"><img
									src="//slowand.com/web/product/medium/201911/55b452ef04b0175e3f59fbc61209cb8a.gif"
									id="eListPrdImage3594_3"
									alt="#SLOWMADE. 여리핏 컷팅티셔츠(tensel) - 5 color" /> <!--img 

src="//slowand.com/web/product/small/201911/e27718ca523b5da36dd02ab8d6574008.gif" id="" alt="#SLOWMADE. 여리핏 컷팅티셔츠(tensel) - 5 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3594,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3594', '1', '3','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3594" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/slowmade-여리핏-컷팅티셔츠tensel-5-color/3594/category/1/display/3/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">#SLOWMADE. 여리핏
											컷팅티셔츠(tensel) - 5 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-2 xans-product-colorchip xans-product-2">
										<span style="background-color: #FFFFFF"
											class="chips xans-record-"></span> <span
											style="background-color: #F2D9D9" class="chips xans-record-"></span><span
											style="background-color: #472A10" class="chips xans-record-"></span><span
											style="background-color: #595B61" class="chips xans-record-"></span><span
											style="background-color: #000000" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-2 xans-product-listitem xans-product-2 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #999999;">소비자가</span> :</strong> <span
										style="font-size: 12px; color: #999999; text-decoration: line-through;">19,800원</span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold; text-decoration: line-through;">16,000원</span><span
										id="span_product_tax_type_text"
										style="text-decoration: line-through;"> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">made by
											slowand *.* <br>조금 다른 분위기의 여리여리한 텐셀티셔츠 <br>날컷팅에서
													풍기는 내츄럴한 감성 <br>실루엣에 착 감기는 핏이 인상적이에요 :) 
									</span></li>
									<li class=" xans-record-"><strong class="title "><span
											style="font-size: 12px; color: #555555;">할인판매가</span> :</strong> <span
										style="font-size: 12px; color: #555555;">15,200원 <span
											style="font-size: 11px; color: #fa6767; font-weight: bold;">800원
												(할인)</span></span></li>
									<li class=" xans-record-"><strong class="title "><span
											style="font-size: 10px; color: #ff99a0; font-weight: bold;">할인
												기간</span> :</strong>
										<div class="discountPeriod">
											<a href="#none"><img
												src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_details.gif"
												alt="자세히" /></a>
											<div class="layerDiscountPeriod ec-base-tooltip">
												<div class="content">
													<strong class="title"><img
														src="//img.echosting.cafe24.com/skin/base_ko_KR/common/ico_tip_title.gif"
														alt="" /> 할인기간</strong>
													<p>
														<strong>남은시간 1일 05:28:02 (800원 할인)</strong>
													</p>
													<p>2019-11-07 20:16 ~ 2019-11-10 20:16</p>
												</div>
												<a href="#none" class="close btnClose"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close_tip.gif"
													alt="닫기"></a> <span class="edge"></span>
											</div>
										</div></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3590" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/cookie-warm-socks-wool-5-color/3590/category/1/display/3/"
									name="anchorBoxName_3590"><img
									src="//slowand.com/web/product/medium/201911/e26382daec91e5591e7f09fda509dd8e.gif"
									id="eListPrdImage3590_3"
									alt="Cookie warm socks (Wool) - 5 color" /> <!--img 

src="//slowand.com/web/product/small/201911/9ad69c201d10286f1adf1141889ef943.gif" id="" alt="Cookie warm socks (Wool) - 5 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3590,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3590', '1', '3','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3590" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/cookie-warm-socks-wool-5-color/3590/category/1/display/3/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">Cookie warm
											socks (Wool) - 5 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-2 xans-product-colorchip xans-product-2">
										<span style="background-color: #BDA174"
											class="chips xans-record-"></span> <span
											style="background-color: #4A413A" class="chips xans-record-"></span><span
											style="background-color: #423F3F" class="chips xans-record-"></span><span
											style="background-color: #760016" class="chips xans-record-"></span><span
											style="background-color: #02013B" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-2 xans-product-listitem xans-product-2 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold; text-decoration: line-through;">3,500원</span><span
										id="span_product_tax_type_text"
										style="text-decoration: line-through;"> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">잡사 콕콕 박힌듯 빈티지한
											감성의 양말 <br>일반양말보다 두세배 도톰한 두께감으로 <br>한겨울까지도 따뜻하게 신어질
													제품이에요 :) 
									</span></li>
									<li class=" xans-record-"><strong class="title "><span
											style="font-size: 12px; color: #555555;">할인판매가</span> :</strong> <span
										style="font-size: 12px; color: #555555;">3,400원 <span
											style="font-size: 11px; color: #fa6767; font-weight: bold;">100원
												(할인)</span></span></li>
									<li class=" xans-record-"><strong class="title "><span
											style="font-size: 10px; color: #ff99a0; font-weight: bold;">할인
												기간</span> :</strong>
										<div class="discountPeriod">
											<a href="#none"><img
												src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_details.gif"
												alt="자세히" /></a>
											<div class="layerDiscountPeriod ec-base-tooltip">
												<div class="content">
													<strong class="title"><img
														src="//img.echosting.cafe24.com/skin/base_ko_KR/common/ico_tip_title.gif"
														alt="" /> 할인기간</strong>
													<p>
														<strong>남은시간 1일 05:18:02 (100원 할인)</strong>
													</p>
													<p>2019-11-07 20:06 ~ 2019-11-10 20:06</p>
												</div>
												<a href="#none" class="close btnClose"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/common/btn_close_tip.gif"
													alt="닫기"></a> <span class="edge"></span>
											</div>
										</div></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3581" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/주문폭주-slowmade-우디-프리미엄-더플코트-3-color/3581/category/1/display/3/"
									name="anchorBoxName_3581"><img
									src="//slowand.com/web/product/medium/201911/2a7af36d178ba86adb20c7b16c412b46.gif"
									id="eListPrdImage3581_3"
									alt="[주문폭주] #SLOWMADE. 우디 프리미엄 더플코트 - 3 color" /> <!--img 

src="//slowand.com/web/product/small/201911/191e09a362ff64f0401a883130381a63.gif" id="" alt="[주문폭주] #SLOWMADE. 우디 프리미엄 더플코트 - 3 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3581,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3581', '1', '3','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3581" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/주문폭주-slowmade-우디-프리미엄-더플코트-3-color/3581/category/1/display/3/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">[주문폭주]
											#SLOWMADE. 우디 프리미엄 더플코트 - 3 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-2 xans-product-colorchip xans-product-2">
										<span style="background-color: #9BADA9"
											class="chips xans-record-"></span> <span
											style="background-color: #594A3C" class="chips xans-record-"></span><span
											style="background-color: #020514" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-2 xans-product-listitem xans-product-2 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #999999;">소비자가</span> :</strong> <span
										style="font-size: 12px; color: #999999; text-decoration: line-through;">129,000원</span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">103,000원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">made by
											slowand, 업데이트 문의폭주 <br>어려보이지 않는 퀄리티의 떡볶이코트 <br>탄탄한
													원단, 실날림 없는 부자재 단추까지 <br>수차례의 핏 수정을 통해 완성된 코트 <br>한

겨울까지
															거뜬히 코디할 수 있어요! 
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3582" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/slowmade-홀가먼트-터틀넥니트-wool-80-5-color/3582/category/1/display/3/"
									name="anchorBoxName_3582"><img
									src="//slowand.com/web/product/medium/201911/583cf08cd562277c2efa6e6563fd9480.gif"
									id="eListPrdImage3582_3"
									alt="#SLOWMADE. 홀가먼트 터틀넥니트 (wool 80%)  - 5 color" /> <!--img 

src="//slowand.com/web/product/small/201911/cfaf4ea49584b3550e9a1dd5de5b4692.gif" id="" alt="#SLOWMADE. 홀가먼트 터틀넥니트 (wool 80%)  - 5 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3582,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3582', '1', '3','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3582" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/slowmade-홀가먼트-터틀넥니트-wool-80-5-color/3582/category/1/display/3/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">#SLOWMADE.
											홀가먼트 터틀넥니트 (wool 80%) - 5 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-2 xans-product-colorchip xans-product-2">
										<span style="background-color: #FEFFEF"
											class="chips xans-record-"></span> <span
											style="background-color: #ABA293" class="chips xans-record-"></span><span
											style="background-color: #54422C" class="chips xans-record-"></span><span
											style="background-color: #787878" class="chips xans-record-"></span><span
											style="background-color: #000000" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-2 xans-product-listitem xans-product-2 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #999999;">소비자가</span> :</strong> <span
										style="font-size: 12px; color: #999999; text-decoration: line-through;">52,000원</span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">37,900원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">simple is
											best! 겨울하면 생각나는 *.* <br>포근+폭닥한 루즈핏 울 터틀넥니트 <br>홀가먼트
													봉제 덕분에 가능한 내츄럴핏 <br>코트와 센스있게 입어주세요 :) ♥ 
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<!-- //MD choice -->


				<div
					class="xans-element- xans-product xans-product-listmain-3 xans-product-listmain xans-product-3 ec-base-product">
					<!--
        $count = 48
            ※ 노출시킬 상품의 갯수를 숫자로 설정할 수 있으며, 설정하지 않을경우, 최대 200개로 자동제한됩니다.
            ※ 상품 노출갯수가 많으면 쇼핑몰에 부하가 발생할 수 있습니다.
    -->
					<div class="title">
						<h2>
							<span>BEST 20</span>
						</h2><br></br>
					</div>
					<ul class="prdList grid4">
						<li id="anchorBoxId_2065" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/1만장돌파-slowmade-여리핏-터틀넥티셔츠-7-color/2065/category/1/display/4/"
									name="anchorBoxName_2065"><img
									src="//slowand.com/web/product/medium/201910/913e50865da450b88843111db22798d5.gif"
									id="eListPrdImage2065_4"
									alt="[1만장돌파] #SLOWMADE. 여리핏 터틀넥티셔츠 - 7 color" /> <!--img 

src="//slowand.com/web/product/small/201910/2bf65f0ea5d2a89f74245443752eefd6.gif" id="" alt="[1만장돌파] #SLOWMADE. 여리핏 터틀넥티셔츠 - 7 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(2065,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('2065', '1', '4','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="2065" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/1만장돌파-slowmade-여리핏-터틀넥티셔츠-7-color/2065/category/1/display/4/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">[1만장돌파]
											#SLOWMADE. 여리핏 터틀넥티셔츠 - 7 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">
										<span style="background-color: #FFFFFF"
											class="chips xans-record-"></span> <span
											style="background-color: #E0B9AF" class="chips xans-record-"></span><span
											style="background-color: #603417" class="chips xans-record-"></span><span
											style="background-color: #000000" class="chips xans-record-"></span><span
											style="background-color: #AAD4D0" class="chips xans-record-"></span><span
											style="background-color: #4F6B55" class="chips xans-record-"></span><span
											style="background-color: #8C6F65" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">16,000원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">업데이트 문의폭주!
											기본템은 슬로우앤드 :) <br>가을부터 겨울까지 꼭 필요할 폴라티셔츠, <br>여리여리한
													핏에 텐셀혼방으로 부드러워요 *.* 
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_4.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3572" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/2천장돌파문의폭주-slowmade-윈터즈-양기모맨투맨-8-color/3572/category/1/display/4/"
									name="anchorBoxName_3572"><img
									src="//slowand.com/web/product/medium/201910/9cde6a180c11aee24faf923ac5b68992.gif"
									id="eListPrdImage3572_4"
									alt="[2천장돌파/문의폭주] #SLOWMADE. 윈터즈 양기모맨투맨 - 8 color" /> <!--img 

src="//slowand.com/web/product/small/201910/00f889adf1676c8a61c7499ff5d3dafe.gif" id="" alt="[2천장돌파/문의폭주] #SLOWMADE. 윈터즈 양기모맨투맨 - 8 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3572,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3572', '1', '4','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3572" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/2천장돌파문의폭주-slowmade-윈터즈-양기모맨투맨-8-color/3572/category/1/display/4/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">[2천장돌파/문의폭주]
											#SLOWMADE. 윈터즈 양기모맨투맨 - 8 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">
										<span style="background-color: #F7F4E8"
											class="chips xans-record-"></span> <span
											style="background-color: #EDE8DA" class="chips xans-record-"></span><span
											style="background-color: #B3A396" class="chips xans-record-"></span><span
											style="background-color: #7F9979" class="chips xans-record-"></span><span
											style="background-color: #879FC2" class="chips xans-record-"></span><span
											style="background-color: #A8AAB3" class="chips xans-record-"></span><span
											style="background-color: #752209" class="chips xans-record-"></span><span
											style="background-color: #030642" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #999999;">소비자가</span> :</strong> <span
										style="font-size: 12px; color: #999999; text-decoration: line-through;">32,000원</span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">22,000원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">양기모로 한겨울 미리미리
											준비하기 :) <br>도톰하고 따뜻한 특양기모원단에 <br>슬로우앤드만의 여덟가지 색감, <br>작은
														퀄리티까지 챙긴 기모맨투맨 *.* 
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3578" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/1천장-돌파주문폭주-lento-렌토-양기모후디-5-color/3578/category/1/display/4/"
									name="anchorBoxName_3578"><img
									src="//slowand.com/web/product/medium/201911/bf1c6dc344da5af12832d661bb577dfe.gif"
									id="eListPrdImage3578_4"
									alt="[1천장 돌파/주문폭주] #LENTO. 렌토 양기모후디 - 5 color" /> <!--img 

src="//slowand.com/web/product/small/201911/ed850790e6e5538511df09e3d66073de.gif" id="" alt="[1천장 돌파/주문폭주] #LENTO. 렌토 양기모후디 - 5 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3578,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3578', '1', '4','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3578" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/1천장-돌파주문폭주-lento-렌토-양기모후디-5-color/3578/category/1/display/4/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">[1천장 돌파/주문폭주]
											#LENTO. 렌토 양기모후디 - 5 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">
										<span style="background-color: #EBE9E2"
											class="chips xans-record-"></span> <span
											style="background-color: #D9D7C8" class="chips xans-record-"></span><span
											style="background-color: #A8A8A8" class="chips xans-record-"></span><span
											style="background-color: #760016" class="chips xans-record-"></span><span
											style="background-color: #474747" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">28,000원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">made by
											slowand, LENTO ! <br>업데이트 문의폭주 렌토의 세미크롭후드 <br>작은
													디테일들이 만나 완성된 섬세한 핏감 <br>흔한 후드티가 싫었다면 눈여겨봐주세요! 

<br>(스트링없음/시보리짧음/소매자수/특양기모)

													
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_2319" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/6천장-돌파-slowmade-탄탄핏-윈터스커트-3-color/2319/category/1/display/4/"
									name="anchorBoxName_2319"><img
									src="//slowand.com/web/product/medium/201811/1ef36cfd630e3891e77dc3c829a9637f.gif"
									id="eListPrdImage2319_4"
									alt="[6천장 돌파] #SLOWMADE. 탄탄핏 윈터스커트 - 3 color" /> <!--img 

src="//slowand.com/web/product/small/201811/bdf0dabf9bf05a2730350987cc2b774f.gif" id="" alt="[6천장 돌파] #SLOWMADE. 탄탄핏 윈터스커트 - 3 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(2319,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('2319', '1', '4','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="2319" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/6천장-돌파-slowmade-탄탄핏-윈터스커트-3-color/2319/category/1/display/4/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">[6천장 돌파]
											#SLOWMADE. 탄탄핏 윈터스커트 - 3 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">
										<span style="background-color: #858779"
											class="chips xans-record-"></span> <span
											style="background-color: #5C5757" class="chips xans-record-"></span><span
											style="background-color: #000000" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">29,000원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">made by
											slowand! 시즌베스트 재입고되었습니다 :) <br>겨울내내 입을 데일리용 롱스커트 - <br>세로골지로
													더욱 깔끔한 핏을 만들어줘요 :) 
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_4.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3575" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/1천장돌파문의폭주-아워-소프트-체크머플러-5-color/3575/category/1/display/4/"
									name="anchorBoxName_3575"><img
									src="//slowand.com/web/product/medium/201910/04d49acc648d0e18e9c853cfc8525df8.gif"
									id="eListPrdImage3575_4"
									alt="[1천장돌파/문의폭주] 아워 소프트 체크머플러 - 5 color" /> <!--img 

src="//slowand.com/web/product/small/201910/6992d072c890e0bb9e2b4f9818b7eb13.gif" id="" alt="[1천장돌파/문의폭주] 아워 소프트 체크머플러 - 5 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3575,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3575', '1', '4','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3575" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/1천장돌파문의폭주-아워-소프트-체크머플러-5-color/3575/category/1/display/4/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">[1천장돌파/문의폭주]
											아워 소프트 체크머플러 - 5 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">
										<span style="background-color: #ABC5CC"
											class="chips xans-record-"></span> <span
											style="background-color: #A6605D" class="chips xans-record-"></span><span
											style="background-color: #806E4A" class="chips xans-record-"></span><span
											style="background-color: #4A4A52" class="chips xans-record-"></span><span
											style="background-color: #171616" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">15,000원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">Coming soon,
											winter ! ♥.♥ <br>무지보다 포인트주기 좋은 체크머플러 <br>얼굴에 닿았을때
													정말 부드러운 소재감에 <br>감성적인 색감들로 구성했어요 *.* 
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_1284" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/3만장돌파-앤드-라운드니트-9-color/1284/category/1/display/4/"
									name="anchorBoxName_1284"><img
									src="//slowand.com/web/product/medium/201904/ab875c146d5fc9a6898ee80b2dedc78d.gif"
									id="eListPrdImage1284_4" alt="[3만장돌파!] 앤드 라운드니트 - 9 color" />
									<!--img src="//slowand.com/web/product/small/201904/e3122cb3ec553c7f06a592f822411698.gif" id="" alt="[3만장돌파!] 앤

드 라운드니트 - 9 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(1284,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('1284', '1', '4','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="1284" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/3만장돌파-앤드-라운드니트-9-color/1284/category/1/display/4/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">[3만장돌파!] 앤드
											라운드니트 - 9 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">
										<span style="background-color: #F0F0F0"
											class="chips xans-record-"></span> <span
											style="background-color: #A9A9A9" class="chips xans-record-"></span><span
											style="background-color: #000000" class="chips xans-record-"></span><span
											style="background-color: #D9D2BF" class="chips xans-record-"></span><span
											style="background-color: #501704" class="chips xans-record-"></span><span
											style="background-color: #216317" class="chips xans-record-"></span><span
											style="background-color: #61CDE7" class="chips xans-record-"></span><span
											style="background-color: #1943A6" class="chips xans-record-"></span><span
											style="background-color: #C20F0A" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">22,000원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">극찬후기 최고였던 그
											혼용율의, 찾아헤맸던 니트 보여드려요 :) 베이직한 디자인 + 아홉가지 컬러+ 여릿한 핏 + 부드러운 촉감,
											모든걸 갖춘 기본 중 기본템입니다 !</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_4.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3585" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/slowmade-네프-윈터생지-데님팬츠-기모-숏롱/3585/category/1/display/4/"
									name="anchorBoxName_3585"><img
									src="//slowand.com/web/product/medium/201911/3048a4f63f64b0974823446c5b8a737e.gif"
									id="eListPrdImage3585_4"
									alt="#SLOWMADE. 네프 윈터생지 데님팬츠 (기모) - 숏/롱" /> <!--img 

src="//slowand.com/web/product/small/201911/ab8d6b6a506a277a548be823c85e95b7.gif" id="" alt="#SLOWMADE. 네프 윈터생지 데님팬츠 (기모) - 숏/롱" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3585,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3585', '1', '4','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3585" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/slowmade-네프-윈터생지-데님팬츠-기모-숏롱/3585/category/1/display/4/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">#SLOWMADE. 네프
											윈터생지 데님팬츠 (기모) - 숏/롱</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">
										<span style="background-color: #051838"
											class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">27,900원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">made by
											slowand! 한바지로 돌려입기 <br>겨울에도 식지 않는 생지데님의 매력♥ <br>포근한
													기모로 더욱 따뜻하게, <br>매력적인 nep원단으로 제작했어요! <br>슬앤의
															#커버데님 핏으로 만나보세요 :) 
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_2127" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/4천장돌파-slowmade-도톰-양기모후드-warm/2127/category/1/display/4/"
									name="anchorBoxName_2127"><img
									src="//slowand.com/web/product/medium/201910/5321a9d3d761481c38cecebe368033c6.gif"
									id="eListPrdImage2127_4"
									alt="[4천장돌파] #SLOWMADE. 도톰 양기모후드 (warm)" /> <!--img 

src="//slowand.com/web/product/small/201910/d443dcf407101ad5be35694ab79fb67a.gif" id="" alt="[4천장돌파] #SLOWMADE. 도톰 양기모후드 (warm)" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(2127,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('2127', '1', '4','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="2127" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/4천장돌파-slowmade-도톰-양기모후드-warm/2127/category/1/display/4/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">[4천장돌파]
											#SLOWMADE. 도톰 양기모후드 (warm)</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">
										<span style="background-color: #FFF9F0"
											class="chips xans-record-"></span> <span
											style="background-color: #E0B382" class="chips xans-record-"></span><span
											style="background-color: #999999" class="chips xans-record-"></span><span
											style="background-color: #000000" class="chips xans-record-"></span><span
											style="background-color: #5C5C5C" class="chips xans-record-"></span><span
											style="background-color: #995F32" class="chips xans-record-"></span><span
											style="background-color: #172059" class="chips xans-record-"></span><span
											style="background-color: #687A50" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #999999;">소비자가</span> :</strong> <span
										style="font-size: 12px; color: #999999; text-decoration: line-through;">36,000원</span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">28,000원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">[1+1 구매시
											무료배송이벤트]재입고완료 <br>브랜드에 사용되는 특양기모로 두툼하게, <br>가을부터
													겨울까지 매일 입을 후드티 
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_2271" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/고객요청재입고-slowmade-앤드-터틀넥-니트-6-color/2271/category/1/display/4/"
									name="anchorBoxName_2271"><img
									src="//slowand.com/web/product/medium/201904/5747270451124fd126e190e8d533bf01.gif"
									id="eListPrdImage2271_4"
									alt="[고객요청재입고] #SLOWMADE. 앤드 터틀넥 니트 - 6 color" /> <!--img 

src="//slowand.com/web/product/small/201904/13344dca179926f2e4ef536f09f1a531.gif" id="" alt="[고객요청재입고] #SLOWMADE. 앤드 터틀넥 니트 - 6 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(2271,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('2271', '1', '4','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="2271" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/고객요청재입고-slowmade-앤드-터틀넥-니트-6-color/2271/category/1/display/4/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">[고객요청재입고]
											#SLOWMADE. 앤드 터틀넥 니트 - 6 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">
										<span style="background-color: #FEFFEF"
											class="chips xans-record-"></span> <span
											style="background-color: #E0C2A6" class="chips xans-record-"></span><span
											style="background-color: #4A3322" class="chips xans-record-"></span><span
											style="background-color: #949494" class="chips xans-record-"></span><span
											style="background-color: #000000" class="chips xans-record-"></span><span
											style="background-color: #FFA51F" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #999999;">소비자가</span> :</strong> <span
										style="font-size: 12px; color: #999999; text-decoration: line-through;">29,800원</span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">19,800원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">고객요청 재입고 완료!
											감사합니다 :) <br>겨울이면 늘 BEST, 후기만족도 최고 <br>여리여리한 핏에 정말
													부드러운 터틀넥니트 
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3508" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/당일발송-slowmade-뮤트-브이넥-앙고라니트-3-color/3508/category/1/display/4/"
									name="anchorBoxName_3508"><img
									src="//slowand.com/web/product/medium/201910/50716cdb0237517a7ffc729cf713c768.gif"
									id="eListPrdImage3508_4"
									alt="[당일발송] #SLOWMADE. 뮤트 브이넥 앙고라니트 - 3 color" /> <!--img 

src="//slowand.com/web/product/small/201910/0140f40f09b7e4583f133cc8a1f83f5e.gif" id="" alt="[당일발송] #SLOWMADE. 뮤트 브이넥 앙고라니트 - 3 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3508,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3508', '1', '4','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3508" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/당일발송-slowmade-뮤트-브이넥-앙고라니트-3-color/3508/category/1/display/4/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">[당일발송]
											#SLOWMADE. 뮤트 브이넥 앙고라니트 - 3 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">
										<span style="background-color: #D1D1D1"
											class="chips xans-record-"></span> <span
											style="background-color: #AFCCB1" class="chips xans-record-"></span><span
											style="background-color: #AB9D93" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #999999;">소비자가</span> :</strong> <span
										style="font-size: 12px; color: #999999; text-decoration: line-through;">43,000원</span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">32,000원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">made by
											slowand. 핏 예쁜 앙고라니트 <br>슬앤에서만 볼 수 있는 뮤트톤의 색감들에 <br>여리여리한
													V넥으로 제작했어요 ! 
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img src="https://www.slowand.com/web/upload/custom_2.gif"
											alt="" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_6.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3567" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/slowmade-모어슬림-기모스키니-기본롱-3-size/3567/category/1/display/4/"
									name="anchorBoxName_3567"><img
									src="//slowand.com/web/product/medium/201910/c366e946ea839317bfb77560ac84d1e8.gif"
									id="eListPrdImage3567_4"
									alt="#SLOWMADE. 모어슬림 기모스키니 (기본/롱) - 3 size" /> <!--img 

src="//slowand.com/web/product/small/201910/5ee0840308f2ef809e1e623f65a72636.gif" id="" alt="#SLOWMADE. 모어슬림 기모스키니 (기본/롱) - 3 size" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3567,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3567', '1', '4','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3567" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/slowmade-모어슬림-기모스키니-기본롱-3-size/3567/category/1/display/4/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">#SLOWMADE.
											모어슬림 기모스키니 (기본/롱) - 3 size</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">
										<span style="background-color: #000000"
											class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">24,900원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">made by
											slowand, 누적판매량 2만장 <br>누적후기로 인정받은 모어슬림스키니 시리즈 <br>기모인데도
													날씬해보이고, <br>잡아주는데도 편안한, 데일리용 블랙스키니 :) 
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3418" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/당일발송slowmade-커버-데님팬츠-칙칙청-long-ver/3418/category/1/display/4/"
									name="anchorBoxName_3418"><img
									src="//slowand.com/web/product/medium/201908/329922c7d0013473a946ac4f062fbb92.gif"
									id="eListPrdImage3418_4"
									alt="[당일발송]#SLOWMADE. 커버 데님팬츠 - 칙칙청 (+long ver)" /> <!--img 

src="//slowand.com/web/product/small/201908/33db57ea6215db13b8b784dfa5313d1d.gif" id="" alt="[당일발송]#SLOWMADE. 커버 데님팬츠 - 칙칙청 (+long ver)" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3418,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3418', '1', '4','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3418" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/당일발송slowmade-커버-데님팬츠-칙칙청-long-ver/3418/category/1/display/4/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">[당일발송]#SLOWMADE.
											커버 데님팬츠 - 칙칙청 (+long ver)</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">
										<span style="background-color: #122833"
											class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">27,900원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">made by
											slowand! <br>드디어 보여드리는 커버데님 마지막 #칙칙청 <br>가을과 어울리는
													톤다운된 색감에 <br>체형 싹 커버해주는 핏으로 만나보세요 :) 
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_6.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_2382" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/2천장-돌파-slowmade-윈터-바버패딩-2-color2-size/2382/category/1/display/4/"
									name="anchorBoxName_2382"><img
									src="//slowand.com/web/product/medium/201811/22301fba9e3881c9799508430dedaaf7.gif"
									id="eListPrdImage2382_4"
									alt="[2천장 돌파] #SLOWMADE. 윈터 바버패딩 - (2 color/2 size)" /> <!--img 

src="//slowand.com/web/product/small/201811/5b77c0a86108caca9e1720caad275174.gif" id="" alt="[2천장 돌파] #SLOWMADE. 윈터 바버패딩 - (2 color/2 size)" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(2382,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('2382', '1', '4','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="2382" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/2천장-돌파-slowmade-윈터-바버패딩-2-color2-size/2382/category/1/display/4/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">[2천장 돌파]
											#SLOWMADE. 윈터 바버패딩 - (2 color/2 size)</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">
										<span style="background-color: #FFFBED"
											class="chips xans-record-"></span> <span
											style="background-color: #272152" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #999999;">소비자가</span> :</strong> <span
										style="font-size: 12px; color: #999999; text-decoration: line-through;">79,000원</span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">68,000원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">작년 베스트상품 재입고
											문의폭주 *.* <br>캐쥬얼하고 멋스러운 영국 바버자켓 감성에 <br>안감 플리스내피로
													따뜻한 패딩이 될거에요 :) 
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_2253" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/6천장돌파뉴컬러추가-브런치-컬러울니트-9-color/2253/category/1/display/4/"
									name="anchorBoxName_2253"><img
									src="//slowand.com/web/product/medium/201909/367fa3168876cfdc6c8a78a553881a32.gif"
									id="eListPrdImage2253_4"
									alt="[6천장돌파/뉴컬러추가!] 브런치 컬러울니트 - 9 color" /> <!--img 

src="//slowand.com/web/product/small/201909/876a75b8936d8e11a94a8a61bb418140.gif" id="" alt="[6천장돌파/뉴컬러추가!] 브런치 컬러울니트 - 9 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(2253,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('2253', '1', '4','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="2253" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/6천장돌파뉴컬러추가-브런치-컬러울니트-9-color/2253/category/1/display/4/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">[6천장돌파/뉴컬러추가!]
											브런치 컬러울니트 - 9 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">
										<span style="background-color: #BD925A"
											class="chips xans-record-"></span> <span
											style="background-color: #578CB5" class="chips xans-record-"></span><span
											style="background-color: #E69C9C" class="chips xans-record-"></span><span
											style="background-color: #8A8A8A" class="chips xans-record-"></span><span
											style="background-color: #B28BB5" class="chips xans-record-"></span><span
											style="background-color: #2E296B" class="chips xans-record-"></span><span
											style="background-color: #84C4C9" class="chips xans-record-"></span><span
											style="background-color: #E8CA54" class="chips xans-record-"></span><span
											style="background-color: #E0D9CC" class="chips xans-record-"></span><span
											style="background-color: #F79036" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #999999;">소비자가</span> :</strong> <span
										style="font-size: 12px; color: #999999; text-decoration: line-through;">35,000원</span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">29,800원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">모든 색감이 하나 하나 다
											예쁘게 나온, <br>탄탄한 짜임의 사랑스러운 울니트 <br>자주 입게 될 니트 중 하나에요
													*.* 
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_4.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3520" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/2천장돌파slowmade-시그널-롱스커트-탄탄일자핏-3-color/3520/category/1/display/4/"
									name="anchorBoxName_3520"><img
									src="//slowand.com/web/product/medium/201910/a4dfc4bdf4c54da8eca30b2e4d8609d8.gif"
									id="eListPrdImage3520_4"
									alt="[2천장돌파]#SLOWMADE. 시그널 롱스커트 (탄탄일자핏) - 3 color" /> <!--img 

src="//slowand.com/web/product/small/201910/ef6c87213db7ba4f4e8a7450909d1f44.gif" id="" alt="[2천장돌파]#SLOWMADE. 시그널 롱스커트 (탄탄일자핏) - 3 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3520,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3520', '1', '4','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3520" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/2천장돌파slowmade-시그널-롱스커트-탄탄일자핏-3-color/3520/category/1/display/4/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">[2천장돌파]#SLOWMADE.
											시그널 롱스커트 (탄탄일자핏) - 3 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">
										<span style="background-color: #C2A867"
											class="chips xans-record-"></span> <span
											style="background-color: #949AA8" class="chips xans-record-"></span><span
											style="background-color: #000000" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">28,000원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">#M.B.S! 봄가을겨울
											세계절 내내 <br>교복처럼 입어질 깔끔한 핏의 롱스커트 *.* <br>후기로 이미 인정받은
													자켓용 원단으로, <br>도톰하고 탄탄하게 제작했어요! 
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3580" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/slowmade-클로드-앙고라니트-4-color/3580/category/1/display/4/"
									name="anchorBoxName_3580"><img
									src="//slowand.com/web/product/medium/201911/b32d715b2a436818fe3d661d719814b0.gif"
									id="eListPrdImage3580_4" alt="#SLOWMADE. 클로드 앙고라니트 - 4 color" />
									<!--img src="//slowand.com/web/product/small/201911/ad2a2eb37a1ec83b0ec8361a2708f8c9.gif" id="" alt="#SLOWMADE. 

클로드 앙고라니트 - 4 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3580,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3580', '1', '4','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3580" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/slowmade-클로드-앙고라니트-4-color/3580/category/1/display/4/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">#SLOWMADE. 클로드
											앙고라니트 - 4 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">
										<span style="background-color: #A9A9A9"
											class="chips xans-record-"></span> <span
											style="background-color: #A8947D" class="chips xans-record-"></span><span
											style="background-color: #6C948C" class="chips xans-record-"></span><span
											style="background-color: #344235" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">33,000원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">made by
											slowand, 색감이 다했어요 ♥ <br>여리여리한 핏의 래글런짜임 앙고라니트 <br>고급스러운
													소재감으로 연말룩까지 쭉- <br>자신있게 추천드릴 파스텔톤 니트에요. 
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_953" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/7천장-돌파-made-by-slowand-탄탄기모-셔츠원피스-겨울버전4color/953/category/1/display/4/"
									name="anchorBoxName_953"><img
									src="//slowand.com/web/product/medium/201810/ba94778199033cb724d9162051dd7856.gif"
									id="eListPrdImage953_4"
									alt="[7천장 돌파] #made by slowand. 탄탄기모 셔츠원피스 [겨울버전/4color]" /> <!--img 

src="//slowand.com/web/product/small/201710/953_shop1_693691.gif" id="" alt="[7천장 돌파] #made by slowand. 탄탄기모 셔츠원피스 [겨울버전/4color]" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(953,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('953', '1', '4','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="953" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/7천장-돌파-made-by-slowand-탄탄기모-셔츠원피스-겨울버전4color/953/category/1/display/4/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">[7천장 돌파] #made
											by slowand. 탄탄기모 셔츠원피스 [겨울버전/4color]</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">
										<span style="background-color: #E2CCA5"
											class="chips xans-record-"></span> <span
											style="background-color: #AB813E" class="chips xans-record-"></span><span
											style="background-color: #070645" class="chips xans-record-"></span><span
											style="background-color: #000000" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #999999;">소비자가</span> :</strong> <span
										style="font-size: 12px; color: #999999; text-decoration: line-through;">42,000원</span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">29,900원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">재입고 문의 폭주!
											시즌베스트 재입고 :) <br>슬로우앤드 자체제작 셔츠원피스 ver.겨울! <br>도톰하고
													탄탄하면서 부드러운 최고의 원단으로 제작했어요. <br>'폭닥'하다는 느낌이 어울리는 

겨울
														셔츠원피스로 매일 매일 입어주세요 :) 
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3577" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/slowmade-바이데이-니트스커트-3-color/3577/category/1/display/4/"
									name="anchorBoxName_3577"><img
									src="//slowand.com/web/product/medium/201911/bc28d86fd75c7b0cab92370923ae96de.gif"
									id="eListPrdImage3577_4" alt="#SLOWMADE. 바이데이 니트스커트 - 3 color" />
									<!--img src="//slowand.com/web/product/small/201911/4c012c84143e59d9021bd42236708f7e.gif" id="" alt="#SLOWMADE. 

바이데이 니트스커트 - 3 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3577,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3577', '1', '4','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3577" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/slowmade-바이데이-니트스커트-3-color/3577/category/1/display/4/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">#SLOWMADE.
											바이데이 니트스커트 - 3 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">
										<span style="background-color: #8F8F8F"
											class="chips xans-record-"></span> <span
											style="background-color: #695A56" class="chips xans-record-"></span><span
											style="background-color: #000000" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #999999;">소비자가</span> :</strong> <span
										style="font-size: 12px; color: #999999; text-decoration: line-through;">32,000원</span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">26,000원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">꼭 하나쯤 필요하셨을거에요
											*.* <br>겨울하면 생각나는 롱기장 니트스커트 <br>보풀 적은 실로 제작했어요 :) <br>편안한
														신축성으로 44-66까지 추천드려요! 
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" /><img
											src="https://www.slowand.com/web/upload/custom_2.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_3561" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/마틴-스티치-삭스부츠-4-color/3561/category/1/display/4/"
									name="anchorBoxName_3561"><img
									src="//slowand.com/web/product/medium/201910/86bbe42fdce0089b24d81f28436d565c.gif"
									id="eListPrdImage3561_4" alt="마틴 스티치 삭스부츠 - 4 color" /> <!--img 

src="//slowand.com/web/product/small/201910/c7789e9e214815d5a8c6b6df9bdd6e41.gif" id="" alt="마틴 스티치 삭스부츠 - 4 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(3561,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('3561', '1', '4','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="3561" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/마틴-스티치-삭스부츠-4-color/3561/category/1/display/4/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">마틴 스티치 삭스부츠 -
											4 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">
										<span style="background-color: #E8DFD6"
											class="chips xans-record-"></span> <span
											style="background-color: #501704" class="chips xans-record-"></span><span
											style="background-color: #050505" class="chips xans-record-"></span><span
											style="background-color: #171717" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">37,000원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;">md강력추천:) 저도
											소장했어요! <br>매력적이고 날렵한 쉐잎의 삭스부츠 <br>질감부터 색감까지 고급스러웠던
													제품이에요 :) 
									</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/icon_201707201607164100.png"
											class="icon_img" alt="New" />
									</div>
								</div>
							</div>
						</li>
						<li id="anchorBoxId_2510" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/기획특가-앤드-하프넥니트-5-color/2510/category/1/display/4/"
									name="anchorBoxName_2510"><img
									src="//slowand.com/web/product/medium/201904/001d0cba244e8eb78525ee063d9dc95a.gif"
									id="eListPrdImage2510_4" alt="[기획특가] 앤드 하프넥니트 - 5 color" /> <!--img 

src="//slowand.com/web/product/small/201904/11612780ee64ead8dc52af7f370391bb.gif" id="" alt="[기획특가] 앤드 하프넥니트 - 5 color" class="hover"/--></a>
								<ul class="button">
									<li class="option"></li>
									<li><img
										src="https://www.slowand.com/web/upload/icon_201807111557294900.png"
										onClick="CAPP_SHOP_NEW_PRODUCT_OPTIONSELECT.selectOptionCommon(2510,  1, 'basket', '')"
										alt="장바구니 담기" class="ec-admin-icon cart" /></li>
									<li class="zoom"><img
										src="https://www.slowand.com/web/upload/icon_201807111557223600.png"
										onClick="zoom('2510', '1', '4','', '');"
										style="cursor: pointer" alt="상품 큰 이미지 보기" /></li>
									<li class="wish"><img
										src="https://www.slowand.com/web/upload/icon_201807111557384700.png"
										class="icon_img ec-product-listwishicon" alt="관심상품 등록 전"
										productno="2510" categoryno="1" icon_status="off"
										login_status="T" individual-set="F" /></li>
								</ul>
								<div class="likeButton displaynone">
									<button type="button"></button>
								</div>
							</div>
							<div class="description">
								<strong class="name"><a
									href="/product/기획특가-앤드-하프넥니트-5-color/2510/category/1/display/4/"
									class=""><span class="title displaynone"></span> <span
										style="font-size: 12px; color: #555555;">[기획특가] 앤드
											하프넥니트 - 5 color</span></a></strong>

								<div class="colorchip ">
									<div
										class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">
										<span style="background-color: #FEFFEF"
											class="chips xans-record-"></span> <span
											style="background-color: #141414" class="chips xans-record-"></span><span
											style="background-color: #3B506B" class="chips xans-record-"></span><span
											style="background-color: #760016" class="chips xans-record-"></span><span
											style="background-color: #8F874B" class="chips xans-record-"></span>
									</div>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #999999;">소비자가</span> :</strong> <span
										style="font-size: 12px; color: #999999; text-decoration: line-through;">22,000원</span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
											:</strong> <span
										style="font-size: 12px; color: #555555; font-weight: bold;">15,000원</span><span
										id="span_product_tax_type_text" style=""> </span></li>
									<li class=" xans-record-"><strong
										class="title displaynone"><span
											style="font-size: 12px; color: #555555;">상품간략설명</span> :</strong> <span
										style="font-size: 12px; color: #555555;"><br>최고로
												부드러운 #앤드니트시리즈 <br>new디자인 하프넥 보여드려요 *.*</span></li>
								</ul>
								<div class="icon">
									<div class="promotion">
										<img
											src="https://www.slowand.com/web/upload/icon_201707201539045000.jpg"
											class="icon_img" alt="추천" /><img
											src="https://www.slowand.com/web/upload/custom_3.gif" alt="" />
									</div>
								</div>
							</div>
						</li>
						

							</div>
						</li>
					</ul>
				</div>
				<!-- //NEW ITEM -->


				<script>
					$('.ec-base-product .prdList > li').each(
							function() {
								var sub = $(this).find('.description .name a')
										.text().length;
								var sub_count = 31;
								if (sub >= sub_count) {
									var jbExcerpt = $(this).find(
											'.description .name a').text()
											.substring(0, sub_count);
									$(this).find('.description .name a').text(
											jbExcerpt + '...');
								}
							});
				</script>



				<!--div id="photoslide_out2">
    <div module="photoslide2_slide_2" class="photoslide_inner wide_banner">
        
        {$slide_images}
    </div>
</div><!-- // 와이드배너 -->





				<!-- cre.ma / 팝업을 띄우는 코드 / 스크립트를 수정할 경우 연락주세요 (support@cre.ma) -->
				<div class="crema-popup"></div>

				<!-- cre.ma / PC 리뷰 초기화 / 스크립트를 수정할 경우 연락주세요 (support@cre.ma) -->
				<script>
					(function(i, s, o, g, r, a, m) {
						if (s.getElementById(g)) {
							return
						}
						;
						a = s.createElement(o),
								m = s.getElementsByTagName(o)[0];
						a.id = g;
						a.async = 1;
						a.src = r;
						m.parentNode.insertBefore(a, m)
					})(window, document, 'script', 'crema-jssdk',
							'//widgets.cre.ma/slowand.com/init.js');
				</script>
			</div>
			<hr class="layout" />
		</div>
	</div>

</body>
</html>

