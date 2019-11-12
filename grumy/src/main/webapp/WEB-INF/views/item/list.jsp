<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


				<!-- 카테고리 별 상품 list -->
				<div
					class="xans-element- xans-product xans-product-listmain-3 xans-product-listmain xans-product-3 ec-base-product">
					<!--
        $count = 48
            ※ 노출시킬 상품의 갯수를 숫자로 설정할 수 있으며, 설정하지 않을경우, 최대 200개로 자동제한됩니다.
            ※ 상품 노출갯수가 많으면 쇼핑몰에 부하가 발생할 수 있습니다.
    -->
					<div class="title">
						<h2>
							<span>OUTER</span><BR></BR>
						</h2>
					</div>
					<ul class="prdList grid4">
					<c:forEach var="dto" items="${list}">
						<li id="anchorBoxId_2065" class="xans-record-">
							<div class="thumbnail">
								<a
									href="/product/1만장돌파-slowmade-여리핏-터틀넥티셔츠-7-color/2065/category/1/display/4/"
									name="anchorBoxName_2065"><img
									src="//slowand.com/web/product/medium/201910/913e50865da450b88843111db22798d5.gif"
									id="eListPrdImage2065_4"
									alt="[1만장돌파] #SLOWMADE. 여리핏 터틀넥티셔츠 - 7 color" /> <!--img src="//slowand.com/web/product/small/201910/2bf65f0ea5d2a89f74245443752eefd6.gif" id="" alt="[1만장돌파] #SLOWMADE. 여리핏 터틀넥티셔츠 - 7 color" class="hover"/--></a>
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
						</c:forEach>
						</ul>
						</div>

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


				<div>
					<p class="pageMove">
						<a class="pageTop" href="#header" title="화면 최상단으로 이동하기" alt="맨위로"><i
							class="fa fa-angle-up fa-2x"></i></a> <a class="pageBottom"
							href="#copyright" title="화면 최하단으로 이동하기" alt="맨아래로"><i
							class="fa fa-angle-down fa-2x"></i></a>
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

