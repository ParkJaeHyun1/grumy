<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>슬로우앤드</title>
<link rel="stylesheet" type="text/css"
	href="https://www.slowand.com//ind-script/optimizer.php?filename=tZXBbsMgDIbvSa97DqvdpN133ml9AkK8hBYww0Zq3n40raZ1uUwJHLHsz_CDf2Akh7A_RAiRhqgcRGRKUSNoZviM5AU0OUd-lwNP8J981A2TTWLINx1dVhYmkbVNrZowrisV1Vn8VYq6TYyRQXmPh_3rM4TUWaPbUZwF7rHtkc3ggc_Gv8xQR32yCG7ikQJQ7DEeRckGaj4PJYFOsdFzi8WNbAXeAgWBWdO8wCaZClAhsmJCBfKItgY2P74-6Rr6BjUYX_Zx_aisugrUxVwXAz84TUERbA1xc5Zej52UH07mZmHZwYqATl8J47TrLmxN_2Cf65nvSqgI6Kg8F3Hl-4XMrvym-IyiKW1RcMm-D_sHavQ1Rv7v77Z5wy5lN71-VsfRhGD8cIV_Aw&type=css&k=1f61d62c8789295c816097742733fafb47f1b9da&t=1547093551" />
<link rel="stylesheet" type="text/css"
	href="https://www.slowand.com//ind-script/optimizer.php?filename=rY9BDsIwDAQfUK68wyog8R43MYlpYkdxCsrvKeXKCXrZy2pHsxA1E5AbFqNqgCJ0Gq9nKMuU2A2x5QTmafBkHARsZrmAM4OsfkkECbsuDZzKY92zSnGHtT7CL9yOEu684SOhp_o76osiNgpa-y56N9X2jx6WYsBiDUPF_GQfqG3V-MldjuduUQtMKPOkOu_JzMjy5r0A&type=css&k=73263e05083d6bf49dd063c0dd9c81dd389a26c9&t=1566806466" />


</head>
<body>
	<div id="container">
		<div id="contents">
			<div class="titleArea">
				<h2>ORDER DETAIL</h2>
				<h3>주문상세조회</h3>
			</div>

			<form id="detailForm" name="detailForm"
				action="/exec/front/MyShop/OrderCancel/" method="POST"
				enctype="multipart/form-data">
				<input id="order_id" name="order_id" fw-filter="isFill"
					fw-label="주문번호" fw-msg="" value="20191121-0030184" type="hidden">
				<div
					class="xans-element- xans-myshop xans-myshop-orderhistorydetail xans-record-">
					<!--
        $print_spec_url = /myshop/order/print/spec.html
        $print_pg_card_url = /myshop/order/print/pg.html
        $print_tax_url = /myshop/order/print/tax.html
        $issue_tax_url = /myshop/order/issue/tax.html
        $issue_cash_url = /myshop/order/issue/cash.html
        $select_gift_url = /order/gift_select.html
     -->
					<!-- 주문정보 -->
					<div class="orderArea">
						<div class="title">
							<h3>주문정보</h3>
						</div>

						<div class="ec-base-table">
							<table border="1" summary="">
								<caption>주문정보</caption>
								<colgroup>
									<col style="width: 160px">
									<col style="width: auto">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">주문번호</th>
										<td>${readPList.orderNo} </td>
									</tr>
									<tr>
										<th scope="row">주문일자</th>
										<td>${readPList.odate}</td>
									</tr>
									<tr>
										<th scope="row">주문자</th>
										<td><span>${readPList.name} </span></td>
									</tr>
									<tr>
										<th scope="row">주문처리상태</th>
										<td>${readPList.state }
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- 결제정보 -->
					<div class="orderArea">
						<div class="title">
							<h3>결제정보</h3>
						</div>
						<div class="ec-base-table">
							<table border="1" summary="">
								<caption>결제정보</caption>
								<colgroup>
									<col style="width: 160px">
									<col style="width: auto">
								</colgroup>
								<tbody>
									<tr class="sum">
										<th scope="row">총 주문금액</th>
										<td><span class="gSpace20"> <strong class="txt14">${readPList.totalPrice} </strong>원
												<span class="displaynone"></span>
										</span> <a href="#none"
											onclick="OrderLayer.onDiv('order_layer_detail', event);"
											class="more yg_btn_24 yg_btn3" alt="내역보기">내역보기</a></td>
									</tr>
								</tbody>
								<tbody class="">
									<tr class="sum">
										<th scope="row">총 할인금액</th>
										<td><strong class="txt14">00</strong>원</td>
									</tr>
									<tr class="displaynone">
										<th scope="row">쿠폰할인</th>
										<td><span class="gSpace20">0원</span> <a href="#none"
											class="eUsedCouponDetail yg_btn_24 yg_btn3" alt="내역보기">내역보기</a>
										</td>
									</tr>
									<tr class="">
										<th scope="row">추가할인금액</th>
										<td><span class="gSpace20">00원</span> <a href="#none"
											onclick="OrderLayer.onDiv('order_layer_addsale', event);"
											class="yg_btn_24 yg_btn3" alt="내역보기">내역보기</a></td>
									</tr>
								</tbody>
								<tbody class="">
									<tr class="sum">
										<th scope="row">총 부가결제금액</th>
										<td><strong>00</strong>원</td>
									</tr>
									<tr class="">
										<th scope="row">적립금</th>
										<td>00원</td>
									</tr>
									<tr class="displaynone">
										<th scope="row">네이버 마일리지/캐쉬</th>
										<td>0% 적립 / 0원 (마일리지 <strong>0</strong>원 + 캐쉬 <strong>0</strong>원)
										</td>
									</tr>
									<tr class="displaynone">
										<th scope="row">예치금</th>
										<td>0원</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="ec-base-table total">
							<table border="1" summary="">
								<caption>결제정보</caption>
								<colgroup>
									<col style="width: 160px">
									<col style="width: auto">
								</colgroup>
								<tbody>
									<tr class="sum">
										<th scope="row">총 결제금액</th>
										<td><span class="txtEm"> <strong class="txt18">00</strong>원
												<span class="displaynone"></span>
										</span></td>
									</tr>
									<tr class="">
										<th scope="row">결제수단</th>
										<td><strong><span>${readPList.paymentType} </span></strong>
											<p>
												<span>명세서에 올더게이트(으)로 표기됩니다</span> <a target="_blank" href=""
													class="yg_btn_24 yg_btn3 displaynone" alt="인터넷뱅킹 바로가기">인터넷뱅킹
													바로가기</a> <a target="_blank" href="" class="displaynone"><img
													src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_order_payment.gif"
													id="" alt="결제사이트 바로가기"></a>
											</p></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">전자보증보험<br>서비스정보
										</th>
										<td></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- 주문 상품 정보 -->
					<div class="orderArea">
						<div class="title">
							<h3>주문 상품 정보</h3>
						</div>

						<!-- 기본배송 -->
						<div class="ec-base-table typeList">
							<table border="1" summary="" class="">
								<caption>기본배송</caption>
								<colgroup>
									<col style="width: 92px">
									<col style="width: auto">
									<col style="width: 60px">
									<col style="width: 100px">
									<col style="width: 95px">
									<col style="width: 110px">
									<col style="width: 110px">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">이미지</th>
										<th scope="col">상품정보</th>
										<th scope="col">수량</th>
										<th scope="col">판매가</th>
										<th scope="col">배송구분</th>
										<th scope="col">주문처리상태</th>
										<th scope="col">취소/교환/반품</th>
									</tr>
								</thead>
								<tfoot class="right">
									<tr>
										<td colspan="7"><span class="gLeft">[기본배송]</span> 상품구매금액
											<strong>89,900</strong><span class="displaynone"> +
												부가세 0</span> + 배송비 0 + 지역별배송비 0<span class=""> - 상품할인금액
												1,600</span> = 합계 : <strong class="txtEm gIndent10"><span
												class="txt18">88,300원</span></strong> <span class="displaynone"></span>
										</td>
									</tr>
								</tfoot>
								<tbody
									class="xans-element- xans-myshop xans-myshop-orderhistorydetailbasic center">
									<tr class="xans-record-">
										<td class="thumb"><a
											href="/product/detail.html?product_no=3643&amp;cate_no=26"><img
												style="width:80px; height:106px;"
												src="//www.slowand.com/web/product/tiny/20191126/80f67cff2dcdbd9ff5580851c855e538.jpg"
												alt=""
												onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"></a></td>
										<td class="left"><a
											href="/product/detail.html?product_no=3643&amp;cate_no=26"><strong>#SLOWMADE.
													모먼트 윈터 밍크슬랙스 (슬림일자핏) - 2 size</strong></a>
											<div class="option ">[옵션: 블랙/M]</div>
											<p class="gBlank5 displaynone">무이자할부 상품</p></td>
										<td>1</td>
										<td class="right">
											<div class="discount">
												<strong>33,000원</strong>
												<div class="displaynone"></div>
											</div>
											<div class="">
												<strong>31,400원</strong>
												<div class="displaynone"></div>
											</div>
										</td>
										<td><div class="txtInfo">
												기본배송
												<div class="displaynone">(해외배송가능)</div>
											</div></td>
										<td>
											<p class="txtEm">배송완료</p>
											<p class="">
												<a
													href="/common/delivery_trace.php?is12RFront=T&amp;order_id=20191121-0030184&amp;invoice_no=6066250534047&amp;product_no=3643&amp;opt_id=000B&amp;is_second_delivery=F"
													target="_blank">우체국택배</a>
											</p>
											<p class="">
												<a href="#none" class="line"
													onclick="window.open('/common/delivery_trace.php?is12RFront=T&amp;order_id=20191121-0030184&amp;invoice_no=6066250534047&amp;product_no=3643&amp;opt_id=000B&amp;is_second_delivery=F', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;">[6066250534047]</a>
											</p> <a href="#none"
											class="displaynone yg_btn_100 yg_btn3 yg_btn_hover_333"
											onclick="OrderHistory.withdraw('C','20191121-0030184|3643|000B|2824514','', 'F')"
											alt="취소철회">취소철회</a> <a href="#none"
											class="displaynone yg_btn_100 yg_btn3 yg_btn_hover_333"
											onclick="OrderHistory.withdraw('E','20191121-0030184|3643|000B|2824514','', 'F')"
											alt="교환철회">교환철회</a> <a href="#none"
											class="displaynone yg_btn_100 yg_btn3 yg_btn_hover_333"
											onclick="OrderHistory.withdraw('R','20191121-0030184|3643|000B|2824514','', 'F')"
											alt="반품철회">반품철회</a>
										</td>
										<td>
											<p class="displaynone">
												<a href="#none" class="line"
													onclick="OrderLayer.getDetailInfo('?product_no=3643&amp;order_id=20191121-0030184&amp;ord_item_code=20191121-0030184-01');">[상세정보]</a>
											</p>
											<p class="">-</p>
										</td>
									</tr>
									
								</tbody>
							</table>
						</div>

					</div>
					
					<!-- 최종 결제 정보 -->
					<div class="orderArea displaynone">
						<div class="title">
							<h3>최종 결제 정보</h3>
						</div>
						<div class="ec-base-table total">
							<table border="1" summary="">
								<caption>최종 결제 정보</caption>
								<colgroup>
									<col style="width: 160px">
									<col style="width: auto">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">총 결제금액</th>
										<td><span class="txtEm"><strong class="txt18">0</strong>원</span>
											<span class="displaynone"></span></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="ec-base-table">
							<table border="1" summary="">
								<caption>최종 결제 정보</caption>
								<colgroup>
									<col style="width: 160px">
									<col style="width: auto">
								</colgroup>
								<tbody
									class="xans-element- xans-myshop xans-myshop-orderhistorydetailpaymentfinal">
									<tr class="xans-record-">
										<th scope="row">상품구매금액</th>
										<td><strong>0원</strong>
											<p></p></td>
									</tr>
									<tr class="xans-record-">
										<th scope="row">배송비</th>
										<td><strong>0원</strong>
											<p></p></td>
									</tr>
									<tr class="xans-record-">
										<th scope="row">결제예정금액</th>
										<td><strong>0원</strong>
											<p></p></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- 취소/교환/반품 신청 정보 -->
					<div class="orderArea displaynone">
						<div class="title">
							<h3>취소/교환/반품 신청 정보</h3>
						</div>
					</div>
					<!-- 환불정보 -->
					<!-- 추가결제 -->
					<!-- 배송지정보 -->
					<div class="orderArea">
						<div class="title">
							<h3>배송지정보</h3>
						</div>
						<div class="ec-base-table">
							<table border="1" summary="">
								<caption>배송지정보</caption>
								<colgroup>
									<col style="width: 160px">
									<col style="width: auto">
								</colgroup>
								<tbody>
									<tr class="displaynone">
										<th scope="row">수령지</th>
										<td><strong></strong>
											<ul class="list">
												<li>- 주소 :</li>
												<li>- 전화번호 :</li>
												<li>- 영업시간 :</li>
												<li>- 수령 가능일 :</li>
												<li>- 수령지 안내 :</li>
											</ul>
											<div class="map displaynone">
												<p>* 약도</p>
											</div></td>
									</tr>
									<tr>
										<th scope="row">받으시는분</th>
										<td><span>${readPList.rname} </span></td>
									</tr>
									<tr class="">
										<th scope="row">우편번호</th>
										<td><span>${readPList.postcode}</span></td>
									</tr>
									<tr class="">
										<th scope="row">주소</th>
										<td><span>${readPList.address} ${readPList.detailaddress}</span></td>
									</tr>
									<tr>
										<th scope="row">일반전화</th>
										<td></td>
									</tr>
									<tr>
										<th scope="row">휴대전화</th>
										<td><span>${readPList.rphone}</span></td>
									</tr>
									<tr>
										<th scope="row">배송메시지</th>
										<td><span>${readPList.rmsg}</span></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">희망 배송일</th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">희망 배송시간</th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">희망배송업체/방식</th>
										<td></td>
									</tr>
									<tr class="displaynone">
										<th scope="row">수령가능일</th>
										<td></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- 추가정보 -->
					<div class="orderArea displaynone">
						<div class="title">
							<h3>추가정보</h3>
						</div>
						<div class="ec-base-table">
							<table border="1" summary="">
								<caption>추가 정보</caption>
								<colgroup>
									<col style="width: 160px">
									<col style="width: auto">
								</colgroup>
								<tbody class="xans-element- xans-myshop xans-myshop-ordadd">
									<tr class="">
										<th scope="row"></th>
										<td></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- 수거신청 정보 -->
					<div class="orderArea displaynone">
						<div class="title">
							<h3>수거신청 정보</h3>
						</div>
					</div>
					<!-- 고객알림 -->
					<div class="orderArea displaynone">
						<div class="title">
							<h3>고객알림</h3>
						</div>
						<p class="customer"></p>
					</div>
					<div class="ec-base-button">
						<span class="gLeft"> <a href="#none"
							onclick="window.open('/myshop/order/issue/tax.html?order_id=20191121-0030184', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;"
							class="displaynone yg_btn_100 yg_btn3 yg_btn_hover_333"
							alt="세금계산서 신청">세금계산서 신청</a> <a href="#none"
							onclick="window.open('/myshop/order/print/tax.html?order_id=20191121-0030184', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;"
							class="displaynone yg_btn_100 yg_btn3 yg_btn_hover_333"
							alt="세금계산서 인쇄">세금계산서 인쇄</a> <a href="#none"
							onclick="window.open('/myshop/order/issue/cash.html?order_id=20191121-0030184', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;"
							class="displaynone yg_btn_100 yg_btn3 yg_btn_hover_333"
							alt="현금영수증 신청">현금영수증 신청</a> <a href="#none"
							onclick="window.open('/exec/front/MyShop/OrderPrintPg/?order_id=20191121-0030184&amp;print_mode=print_pg_cash', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;"
							class="displaynone yg_btn_100 yg_btn3 yg_btn_hover_333"
							alt="현금영수증전표 인쇄">현금영수증전표 인쇄</a> <a href="#none"
							onclick="window.open('/myshop/order/print/spec.html?order_id=20191121-0030184', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;"
							class=" yg_btn_100 yg_btn3 yg_btn_hover_333" alt="거래명세서 인쇄">거래명세서
								인쇄</a> <a href="#none"
							onclick="window.open('/exec/front/MyShop/OrderPrintPg/?order_id=20191121-0030184&amp;print_mode=print_pg_card', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;"
							class=" yg_btn_100 yg_btn3 yg_btn_hover_333" alt="카드매출전표 인쇄">카드매출전표
								인쇄</a> <a href="#none" onclick="createGiftLayer('20191121-0030184')"
							class="displaynone yg_btn_100 yg_btn5" alt="사은품 선택">사은품 선택</a> <a
							href="#none"
							onclick="window.open('/myshop/order/store_pickup.html?order_id=20191121-0030184', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;"
							class="displaynone yg_btn_100 yg_btn3 yg_btn_hover_333"
							alt="수령지정보 인쇄">수령지정보 인쇄</a>
						</span> <span class="gRight"> <a
							href="/myshop/order/list.html?page=1"
							class="yg_btn_140 yg_btn1 yg_btn_border_444" alt="주문목록보기">주문목록보기</a>
						</span>
					</div>
					
					<!-- 이용안내 -->
					<div class="ec-base-help">
						<div class="inner">
							<h4>신용카드매출전표 발행 안내</h4>
							<p>신용카드 결제는 사용하는 PG사 명의로 발행됩니다.</p>
							<h4>세금계산서 발행 안내</h4>
							<ol>
								<li class="item1">부가가치세법 제 54조에 의거하여 세금계산서는 배송완료일로부터 다음달
									10일까지만 요청하실 수 있습니다.</li>
								<li class="item2">세금계산서는 사업자만 신청하실 수 있습니다.</li>
								<li class="item3">배송이 완료된 주문에 한하여 세금계산서 발행신청이 가능합니다.</li>
								<li class="item4">[세금계산서 신청]버튼을 눌러 세금계산서 신청양식을 작성한 후 팩스로
									사업자등록증사본을 보내셔야 세금계산서 발생이 가능합니다.</li>
								<li class="item5">[세금계산서 인쇄]버튼을 누르면 발행된 세금계산서를 인쇄하실 수 있습니다.</li>
								<li class="item6">세금계산서는 실결제금액에 대해서만 발행됩니다.(적립금과 할인금액은
									세금계산서 금액에서 제외됨)</li>
							</ol>
							<h4>부가가치세법 변경에 따른 신용카드매출전표 및 세금계산서 변경 안내</h4>
							<ol>
								<li class="item1">변경된 부가가치세법에 의거, 2004.7.1 이후 신용카드로 결제하신
									주문에 대해서는 세금계산서 발행이 불가하며<br>신용카드매출전표로 부가가치세 신고를 하셔야
									합니다.(부가가치세법 시행령 57조)
								</li>
								<li class="item2">상기 부가가치세법 변경내용에 따라 신용카드 이외의 결제건에 대해서만
									세금계산서 발행이 가능함을 양지하여 주시기 바랍니다.</li>
							</ol>
							<h4>현금영수증 이용안내</h4>
							<ol>
								<li class="item1">현금영수증은 1원 이상의 현금성거래(무통장입금, 실시간계좌이체, 에스크로,
									예치금)에 대해 발행이 됩니다.</li>
								<li class="item2">현금영수증 발행 금액에는 배송비는 포함되고, 적립금사용액은 포함되지
									않습니다.</li>
								<li class="item3">발행신청 기간제한 현금영수증은 입금확인일로 부터 48시간안에 발행을 해야
									합니다.</li>
								<li class="item4">현금영수증 발행 취소의 경우는 시간 제한이 없습니다. (국세청의 정책에
									따라 변경 될 수 있습니다.)</li>
								<li class="item5">현금영수증이나 세금계산서 중 하나만 발행 가능 합니다.</li>
							</ol>
						</div>
					</div>
				</div>
			</form>
		</div>
		<hr class="layout">
	</div>
</body>
</html>