<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			
			
			function delete1(itemNo) {

				if (confirm("해당 상품을 삭제하시겠습니까?") == true) { //확인

					var url = "${pageContext.request.contextPath}/item/delete";
					url += "?itemNo=" + itemNo;
					location.href = url;

				}
	                       	
			}
			
			
		</script>
		<!-- //상단카테고리 -->

		<!-- 메인슬라이드 -->
		<div id="photoslide_out">
			<div
				class="xans-element- xans-photoslide2 xans-photoslide2-slide-1 xans-photoslide2-slide xans-photoslide2-1 photoslide_inner main_slider ">

				<div class="slider-wrapper theme-default">
					<div class="ribbon"></div>
					<div id="nivoSlider1" rel="1" class="nivoSlider"
						style="background: url(//app-storage-edge-008.cafe24.com/photoslide2/anne2173/2019/12/09/2f13eda322d570c0d5fb69934438fbda.jpg) no-repeat; position: relative; overflow: hidden; width: 2000px; height: 800px;">
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

					<div class="title">
						<h2>
							<span>NEW!</span>
						</h2>
						<br></br>
					</div>
					<ul class="prdList grid4">
						<c:forEach var="dto" items="${listnew}">
							<li id="anchorBoxId_2065" class="xans-record-">
								<div class="thumbnail">
									<a
										href="${pageContext.request.contextPath}/item/read?itemNo=${dto.itemNo}"
										name="anchorBoxName_2065"><img
										src="${pageContext.request.contextPath}/images/${dto.image}"
										id="eListPrdImage2065_4"
										alt="[1만장돌파] #SLOWMADE. 여리핏 터틀넥티셔츠 - 7 color" /></a>
								</div>
								<div class="description">
									<strong class="name"> <a
										href="${pageContext.request.contextPath}/item/read?itemNo=${dto.itemNo}"
										class=""><span class="title displaynone"></span> <span
											style="font-size: 12px; color: #555555;">${dto.title}</span></a>
									</strong>
									<c:if
										test="${not empty sessionScope.id && sessionScope.grade == 'A' }">
										<p align="center">

											<button class="yg_btn_28 yg_btn3"
												onclick="location.href='${pageContext.request.contextPath}/item/updateForm?itemNo=${dto.itemNo}'">상품수정</button>
											&nbsp;
											<button class="yg_btn_28 yg_btn3"
												onclick="javascript:delete1('${dto.itemNo}')">상품삭제</button>

										</p>
									</c:if>



									<div class="colorchip">
										<div
											class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">

										</div>
									</div>
									<ul
										class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">


										<c:if test="${dto.salePrice > 0}">
											<li class=" xans-record-"><strong
												class="title displaynone"><span
													style="font-size: 12px; color: #999999;">소비자가</span> :</strong> <span
												style="font-size: 12px; color: #999999; text-decoration: line-through;">${dto.price}</span></li>
										</c:if>
										<c:if test="${dto.salePrice > 0}">
											<li class=" xans-record-"><strong
												class="title displaynone"><span
													style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
													:</strong> <span
												style="font-size: 12px; color: #555555; font-weight: bold;">

													${dto.price-dto.salePrice}</span><span
												id="span_product_tax_type_text" style=""> </span></li>
										</c:if>

										<c:if test="${dto.salePrice == 0}">
											<li class=" xans-record-"><strong
												class="title displaynone"><span
													style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
													:</strong> <span
												style="font-size: 12px; color: #555555; font-weight: bold;">

													${dto.price}</span><span id="span_product_tax_type_text" style="">
											</span></li>
										</c:if>

										<li class=" xans-record-"><strong
											class="title displaynone"><span
												style="font-size: 12px; color: #555555;"></span> :</strong> <span
											style="font-size: 12px; color: #555555;">${dto.description}</span></li>
									</ul>
								</div>
							</li>


						</c:forEach>

					</ul>
				</div>
				<!-- //MD choice -->


				<div
					class="xans-element- xans-product xans-product-listmain-3 xans-product-listmain xans-product-3 ec-base-product">

					<div class="title">
						<h2>
							<span>BEST 20</span>
						</h2>
						<br></br>
					</div>
					<ul class="prdList grid4">

						<c:forEach var="dto" items="${listbest}">
							<li id="anchorBoxId_2065" class="xans-record-">
								<div class="thumbnail">
									<a
										href="${pageContext.request.contextPath}/item/read?itemNo=${dto.itemNo}"
										name="anchorBoxName_2065"><img
										src="${pageContext.request.contextPath}/images/${dto.image}"
										id="eListPrdImage2065_4"
										alt="[1만장돌파] #SLOWMADE. 여리핏 터틀넥티셔츠 - 7 color" /></a>
								</div>
								<div class="description">
									<strong class="name"> <a
										href="${pageContext.request.contextPath}/item/read?itemNo=${dto.itemNo}"
										class=""><span class="title displaynone"></span> <span
											style="font-size: 12px; color: #555555;">${dto.title}</span></a>
									</strong>
									<c:if
										test="${not empty sessionScope.id && sessionScope.grade == 'A' }">
										<p align="center">

											<button class="yg_btn_28 yg_btn3"
												onclick="location.href='${pageContext.request.contextPath}/item/updateForm?itemNo=${dto.itemNo}'">상품수정</button>
											&nbsp;
											<button class="yg_btn_28 yg_btn3"
												onclick="javascript:delete1('${dto.itemNo}')">상품삭제</button>

										</p>
									</c:if>



									<div class="colorchip">
										<div
											class="xans-element- xans-product xans-product-colorchip-3 xans-product-colorchip xans-product-3">

										</div>
									</div>
									<ul
										class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec">


										<c:if test="${dto.salePrice > 0}">
											<li class=" xans-record-"><strong
												class="title displaynone"><span
													style="font-size: 12px; color: #999999;">소비자가</span> :</strong> <span
												style="font-size: 12px; color: #999999; text-decoration: line-through;">${dto.price}</span></li>
										</c:if>
										<c:if test="${dto.salePrice > 0}">
											<li class=" xans-record-"><strong
												class="title displaynone"><span
													style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
													:</strong> <span
												style="font-size: 12px; color: #555555; font-weight: bold;">

													${dto.price-dto.salePrice}</span><span
												id="span_product_tax_type_text" style=""> </span></li>
										</c:if>

										<c:if test="${dto.salePrice == 0}">
											<li class=" xans-record-"><strong
												class="title displaynone"><span
													style="font-size: 12px; color: #555555; font-weight: bold;">판매가</span>
													:</strong> <span
												style="font-size: 12px; color: #555555; font-weight: bold;">

													${dto.price}</span><span id="span_product_tax_type_text" style="">
											</span></li>
										</c:if>

										<li class=" xans-record-"><strong
											class="title displaynone"><span
												style="font-size: 12px; color: #555555;"></span> :</strong> <span
											style="font-size: 12px; color: #555555;">${dto.description}</span></li>
									</ul>
								</div>
							</li>


						</c:forEach>


					</ul>
				</div>
				<!-- //NEW ITEM -->

			</div>
			<hr class="layout" />
		</div>
	</div>

</body>
</html>

