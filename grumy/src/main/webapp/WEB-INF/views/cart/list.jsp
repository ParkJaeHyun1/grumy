<%@ page contentType="text/html; charset=UTF-8"%>
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

<meta name="google-site-verification"
	content="EFPjfmjiYaukHxgQEmFrlvyllFVJax3Pr1MlHCYhkgU" />
<meta name="naver-site-verification"
	content="cdc66033ac54c3c0175fba92d71c46317e5c78e1" />



<link rel="stylesheet" type="text/css"
	href="https://www.slowand.com/ind-script/optimizer.php?filename=tZTBTsMwDIbv2648h7WBxJ0zBySewElNmzWJS-yI9e0JLYehXVCXHGPZn-PfyQ8DB4LjKcGUuE8YIJFwTpbAisBH4qhgOQSOhxJ4gP_kk90J-6yO487wZWNhVt3a1ONMaVupovF0VUp2n4WSAMZIp-PzI0zZeGf3gwYP0tG-I3F9BBldfFqggbvsCcIsA09gMI6GedzOLNNw1gISZ5cG5b7lQDdjbr8rp47ST4eR9A3tiH1VDb6cDN6JVtTg5k3eC1wDDbaUXQOoMnt1UwPyQL4Ftny_LtsW-k7Yu4hKLVRG04B642zVwH-8tqIIvoW4Jctux84Y-7NbTbx4eBXQ-TNTmg_mIt519zjrFfMVlauA3jFKFU_-Xchi-S-L41vOq4Lf&type=css&k=c0f95a0f58b7cf2f6513da1766995ca0a16ccb94&t=1547093551" />
<link rel="stylesheet" type="text/css"
	href="https://www.slowand.com/ind-script/optimizer.php?filename=rY7LDQIxDEQLWK7UYfGR6AMqCIlJDIkdxQ5ou2dZOoBcRhqN5ulBkoKAfuqKTcEx4353OkDt10x-SlYyaMApoFJk0AfxEbwqFAk9I2Q3SzeobanezuiRbbPsWxgDLj0baZJ6SVQrcRwJ98LP5U_C1f_OnR3HO634hC5gG6roDKO0eYjeTcT-0XO1KhCrudhceVGIaOu0--aH_AY&type=css&k=4fc1b7e0a4b924b7880ecdc4f7582ec0e2727268&t=1566806466" />

</head>
<body id="cmn">
	<div id="skipNavigation">
		<p>
			<a href="#category">전체상품목록 바로가기</a>
		</p>
		<p>
			<a href="#contents">본문 바로가기</a>
		</p>
	</div>

	<div id="wrap">

		<!-- //상단카테고리 -->
		<div id="container">
			<div id="contents">


				<div class="titleArea">
					<h2>CART</h2>
					<h3>장바구니</h3>
				</div>

				<!-- 장바구니 모듈 Package -->
				<div class="xans-element- xans-order xans-order-basketpackage ">
					<!-- 일반상품 -->
					<div class="orderListArea ec-base-table typeList gBorder">
						<div class="xans-element- xans-order xans-order-normtitle title ">
							<h3>상품 (3)</h3>
						</div>

						<!-- 일반상품 (기본배송) -->
						<table border="1" summary=""
							class="xans-element- xans-order xans-order-normnormal xans-record-">
							<caption>기본배송</caption>
							<colgroup>
								<col style="width: 40px" />
								<col style="width: 92px" />
								<col style="width: auto" />
								<col style="width: 98px" />
								<col style="width: 120px" />
								<col style="width: 88px" />
								<col style="width: 88px" />
								<col style="width: 75px" />
								<col style="width: 88px" />
								<col style="width: 110px" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col"><input type="checkbox"
										onclick="Basket.setCheckBasketList('basket_product_normal_type_normal', this);" /></th>
									<th scope="col">IMAGE</th>
									<th scope="col">PRODUCT NAME</th>
									<th scope="col">PRICE</th>
									<th scope="col">QTY</th>
									<th scope="col" class="mileage">POINT<!--적립금-->
									</th>
									<th scope="col">DELIVERY</th>
									<th scope="col">CHARGE</th>
									<th scope="col">TOTAL</th>
									<th scope="col">ORDER</th>
								</tr>
							</thead>
							<tfoot class="right">
								<tr>
									<td colspan="10"><span class="gLeft">[기본배송]</span> 상품구매금액
										182,600 <span class="displaynone">()</span><span
										class="displaynone"> </span><span class="displaynone">
											+ 부가세 <span class="displaynone"> </span>
									</span> + 배송비 0 (무료)<span class="displaynone"> </span> <span class="">
											- 상품할인금액 2,700 </span> = 합계 : <strong class="txtEm gIndent10"><span
											class="txt18">179,900</span>원</strong> <span class="displaynone">
									</span></td>
								</tr>
							</tfoot>
							<tbody class="xans-element- xans-order xans-order-list center">
							<c:forEach var="dto" items="${list}">
								<tr class="xans-record-">
									<td><input type="checkbox" id="basket_chk_id_0"
										name="basket_product_normal_type_normal" /></td>
									<td class="thumb gClearLine"><a
										href="${pageContext.request.contextPath}/item/read?no=${dto.itemNo}"><img
											src="${pageContext.request.contextPath}/images/${dto.itemPicture}"
											onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"
											alt="#SLOWMADE. 윈터라이트 슬림핏 데님팬츠 - one color" /></a></td>
									<td class="left gClearLine"><a
										href="${pageContext.request.contextPath}/item/read?no=${dto.itemNo}">${dto.itemTitle}
									<img src="https://www.slowand.com//web/upload/custom_3.gif" alt="" />
									</a><span class="displaynone"><br />(영문명 : )</span>
										<ul
											class="xans-element- xans-order xans-order-optionall option">
									 		<li class="xans-record-"><strong class="displaynone">${dto.itemTitle}</strong>[옵션:${dto.itemColor}/${dto.itemSize}] <span
												class="displaynone">(2개)</span> <span class=""><a
													href="#none"
													onclick="Basket.showOptionChangeLayer('option_modify_layer_0', $(this))"
													class="displaynone yg_btn_80 yg_btn3" alt="옵션변경">옵션변경</a></span> <!-- 참고 : 옵션변경 레이어 -->
												<div class="optionModify ec-base-layer"
													id="option_modify_layer_0">
													<div class="content">
														<div class="prdModify">
															<ul
																class="xans-element- xans-order xans-order-optionlist">
																<li class="xans-record-"><span>COLOR</span> <select
																	option_product_no="3607"
																	option_select_element="ec-option-select-finder"
																	option_sort_no="1" option_type="T"
																	item_listing_type="S" option_title="COLOR"
																	product_type="product_option"
																	product_option_area="product_option_3607_0"
																	name="option1" id="product_option_id1"
																	class="ProductOption0" option_style="select"
																	required="true"><option value="*"
																			link_image="">- [필수] 옵션을 선택해 주세요 -</option>
																		<option value="**" link_image="">-------------------</option>
																		<option value="중청" link_image="">중청</option></select></li>
																<li class="xans-record-"><span>SIZE</span> <select
																	option_product_no="3607"
																	option_select_element="ec-option-select-finder"
																	option_sort_no="2" option_type="T"
																	item_listing_type="S" option_title="SIZE"
																	product_type="product_option"
																	product_option_area="product_option_3607_0"
																	name="option2" id="product_option_id2"
																	class="ProductOption0" option_style="select"
																	required="true"><option value="*"
																			link_image="">- [필수] 옵션을 선택해 주세요 -</option>
																		<option value="**" link_image="">-------------------</option>
																		<option value="S" disabled="disabled" link_image="">S</option>
																		<option value="M" disabled="disabled" link_image="">M</option>
																		<option value="L" disabled="disabled" link_image="">L</option></select></li>
															</ul>
														</div>
													</div>
													<div class="ec-base-button">
														<a href="#none" class=" yg_btn_30"
															onclick="BasketNew.modify('0', 'add');" alt="추가">추가</a> <a
															href="#none" class="yg_btn_30 yg_btn3"
															onclick="BasketNew.modify('0', 'modify');" alt="변경">변경</a>
													</div>
													<a href="#none" class="close"
														onclick="$('.optionModify').hide();"><img
														src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif"
														alt="닫기" /></a>
												</div> <!-- //참고 --></li>
										</ul></td>
									<td>
										<div class="discount">
											27,900원
											<p class="displaynone"></p>
										</div>
										<div class="">
											26,600원
											<p class=""></p>
										</div>
									</td>
									<td><span class=""> <span class="ec-base-qty"><input
												id="quantity_id_0" name="quantity_name_0" size="2" value="2"
												type="text" /><a href="javascript:;"
												onclick="Basket.addQuantityShortcut('quantity_id_0', 0);"><img
													src="//img.echosting.cafe24.com/skin/base/common/btn_quantity_up.gif"
													alt="수량증가" class="up" /></a><a href="javascript:;"
												onclick="Basket.outQuantityShortcut('quantity_id_0', 0);"><img
													src="//img.echosting.cafe24.com/skin/base/common/btn_quantity_down.gif"
													alt="수량감소" class="down" /></a></span> <a href="javascript:;"
											class="yg_btn_24 yg_btn3" onclick="Basket.modifyQuantity()"
											alt="변경">변경</a>
									</span> <span class="displaynone">2</span></td>
									<td><span class="txtInfo">-</span></td>
									<td><div class="txtInfo">
											기본배송<br />
										</div></td>
									<td rowspan="1" class="">
										<p class="displaynone">
											0원<span class="displaynone"><br /></span><br />
										</p>무료
									</td>
									<td>53,100원
										<div class="displaynone"></div>
									</td>
									<td class="button"><a href="javascript:;"
										class="yg_btn_100" onclick="Basket.orderBasketItem(0);"
										alt="주문하기">BUY IT NOW</a> <a href="javascript:;"
										class="yg_btn_100 yg_btn3" onclick="BasketNew.moveWish(0);"
										alt="관심상품등록">WISH LIST</a> <a href="javascript:;"
										class="yg_btn_100 yg_btn3"
										onclick="Basket.deleteBasketItem(0);" alt="삭제">DELETE</a></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
						<!-- 일반상품 (업체기본배송) -->
						<!-- 일반상품 (개별배송) -->
						<!-- 일반상품 (해외배송) -->
					</div>

					<!-- 선택상품 제어 버튼 -->
					<div
						class="xans-element- xans-order xans-order-selectorder ec-base-button ">
						<span class="gLeft"><a href="#none"
							class="yg_btn_24 yg_btn5" onclick="Basket.deleteBasket()"
							alt="삭제하기">삭제하기</a> </span> <span class="gRight"> <a href="#none"
							class="yg_btn_24 yg_btn3" onclick="Basket.emptyBasket()"
							alt="장바구니비우기">장바구니 비우기</a>
						</span>
					</div>
					<!-- 총 주문금액 : 국내배송상품 -->
					<div
						class="xans-element- xans-order xans-order-totalsummary ec-base-table typeList gBorder total  ">
						<table border="1" summary="">
							<caption>총 주문금액</caption>
							<colgroup>
								<col style="width: 17%;" />
								<col style="width: 17%;" class="displaynone" />
								<col style="width: 19%;" />
								<col style="width: 17%;" class="" />
								<col style="width: auto;" />
							</colgroup>

							<tbody class="center">
								<tr>
									<td><div class="box txt16">
											<strong><span class="txt23">182,600</span>원</strong> <span
												class="txt14 displaynone"></span>
										</div></td>
									<td class="displaynone"><div class="box txt16">
											<strong><span class="txt23">0</span>원</strong> <span
												class="txt14 displaynone"></span>
										</div></td>
									<td>
										<div class="box shipping txt16">
											<strong class="txt23">+ </strong><strong><span
												class="txt23">0</span>원</strong>
										</div>
									</td>
									<td class=""><div class="box txt16">
											<strong class="txt23">- </strong><strong><span
												class="txt23">2,700</span>원</strong> <span class="txt14 displaynone"></span>
										</div></td>
									<td><div class="box txtEm txt16">
											<strong class="txt23">= </strong><strong><span
												class="txt23">179,900</span>원</strong> <span
												class="txt14 displaynone"></span>
										</div></td>
								</tr>
							</tbody>
						</table>
						<!-- 총 할인금액 내역보기 레이어 -->
						<div id="order_layer_benefit" class="totalDetail ec-base-layer">
							<div class="header">
								<h3>총 할인금액 상세내역</h3>
							</div>
							<div class="content">
								<p id="mTotalBenefitPrice" class="txtEm txt16">
									<strong>2,700원</strong>
								</p>
								<ul class="ec-base-desc typeDot gLarge rightDD">
									<li class="displaynone"><strong class="term">기간할인</strong><span
										id="" class="desc">0원</span></li>
									<li class="displaynone"><strong class="term">회원할인</strong><span
										id="" class="desc">0원</span></li>
									<li class="displaynone"><strong class="term">재구매할인</strong><span
										id="" class="desc">0원</span></li>
									<li class="displaynone"><strong class="term">대량구매할인</strong><span
										id="" class="desc">0원</span></li>
									<li class="displaynone"><strong class="term">바로가기(링콘)할인</strong><span
										id="" class="desc">원</span></li>
									<li class="displaynone"><strong class="term">어바웃pbp할인</strong><span
										id="" class="desc">원</span></li>
									<li class=""><strong class="term">신규상품할인</strong><span
										id="" class="desc">2,700원</span></li>
									<li class="displaynone"><strong class="term">결제수단할인</strong><span
										id="" class="desc">원</span></li>
									<li class="displaynone"><strong class="term">회원등급할인</strong><span
										id="mBenefitMembergroupSale" class="desc">0원</span></li>
									<li class="displaynone"><strong class="term">배송비할인</strong><span
										id="" class="desc">0원</span></li>
								</ul>
							</div>
							<a href="#none" class="close"
								onclick="OrderLayer.offDiv('order_layer_benefit');"><img
								src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif"
								alt="닫기" /></a>
						</div>
					</div>
					<!-- 총 주문금액 : 해외배송상품 -->
					<div
						class="xans-element- xans-order xans-order-totaloversea ec-base-table typeList gBorder total displaynone ">
						<table border="1" summary="">
							<caption>총 주문금액</caption>
							<colgroup>
								<col style="width: 23%;" />
								<col style="width: 21%;" class="displaynone" />
								<col style="width: 21%;" class="" />
								<col style="width: auto" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col"><span>총 상품금액</span></th>
									<th scope="col" class="displaynone"><strong>총 부가세</strong></th>
									<th scope="col" class="">총 할인금액 <a href="#none"
										class="yg_btn_24 yg_btn3"
										onclick="OrderLayer.onDiv('order_layer_benefit', event);"
										alt="내역보기">내역보기</a>
									</th>
									<th scope="col">총 합계</th>
								</tr>
							</thead>
							<tbody class="center">
								<tr>
									<td><div class="box txt16">
											<strong><span class="txt23">182,600</span>원</strong> <span
												class="txt14 displaynone"></span>
										</div></td>
									<td class="displaynone"><div class="box txt16">
											<strong><span class="txt23">0</span>원</strong> <span
												class="txt14 displaynone"></span>
										</div></td>
									<td class=""><div class="box txt16">
											<strong>- <span class="txt23">2,700</span>원
											</strong> <span class="txt14 displaynone"></span>
										</div></td>
									<td><div class="box txtEm txt16">
											<strong class="txt23">= </strong><strong><span
												class="txt23">179,900</span>원</strong> <span
												class="txt14 displaynone"></span>
										</div></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- 주문 버튼 -->
					<div
						class="xans-element- xans-order xans-order-totalorder ec-base-button justify">
						<a href="#none" onclick="Basket.orderAll(this)"
							link-order="/order/orderform.html?basket_type=all_buy"
							link-login="/member/login.html" alt="전체상품주문" class=" yg_btn_140 ">전체상품주문</a>
						<a href="#none" onclick="Basket.orderSelectBasket(this)"
							link-order="/order/orderform.html?basket_type=all_buy"
							link-login="/member/login.html" alt="선택상품주문"
							class="yg_btn_140 yg_btn5 ">선택상품주문</a> </span>
						<!-- 네이버 체크아웃 구매 버튼  -->
						<div id="NaverChk_Button"></div>
					</div>
				</div>
				<!-- //장바구니 모듈 Package -->

			</div>
			<hr class="layout" />
		</div>
		<hr class="layout" />
		<!-- 하단 -->
	</div>
</body>
</html>


