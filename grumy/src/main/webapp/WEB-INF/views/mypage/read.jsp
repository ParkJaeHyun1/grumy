<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>슬로우앤드</title>
<link rel="stylesheet" type="text/css"
	href="https://www.slowand.com//ind-script/optimizer.php?filename=tZXBbsMgDIbvSa97DqvdpN133ml9AkK8hBYww0Zq3n40raZ1uUwJHLHsz_CDf2Akh7A_RAiRhqgcRGRKUSNoZviM5AU0OUd-lwNP8J981A2TTWLINx1dVhYmkbVNrZowrisV1Vn8VYq6TYyRQXmPh_3rM4TUWaPbUZwF7rHtkc3ggc_Gv8xQR32yCG7ikQJQ7DEeRckGaj4PJYFOsdFzi8WNbAXeAgWBWdO8wCaZClAhsmJCBfKItgY2P74-6Rr6BjUYX_Zx_aisugrUxVwXAz84TUERbA1xc5Zej52UH07mZmHZwYqATl8J47TrLmxN_2Cf65nvSqgI6Kg8F3Hl-4XMrvym-IyiKW1RcMm-D_sHavQ1Rv7v77Z5wy5lN71-VsfRhGD8cIV_Aw&type=css&k=1f61d62c8789295c816097742733fafb47f1b9da&t=1547093551" />
<link rel="stylesheet" type="text/css"
	href="https://www.slowand.com//ind-script/optimizer.php?filename=rY9BDsIwDAQfUK68wyog8R43MYlpYkdxCsrvKeXKCXrZy2pHsxA1E5AbFqNqgCJ0Gq9nKMuU2A2x5QTmafBkHARsZrmAM4OsfkkECbsuDZzKY92zSnGHtT7CL9yOEu684SOhp_o76osiNgpa-y56N9X2jx6WYsBiDUPF_GQfqG3V-MldjuduUQtMKPOkOu_JzMjy5r0A&type=css&k=73263e05083d6bf49dd063c0dd9c81dd389a26c9&t=1566806466" />
<script>
function read_update(){
	location.href="${root }/admin/order/update?orderno=${readP.orderNo}";
}
</script>

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
										<td id="orderno">${readP.orderNo}</td>
									</tr>
									<tr>
										<th scope="row">주문일자</th>
										<td>${readP.odate}</td>
									</tr>
									<tr>
										<th scope="row">주문자</th>
										<td><span>${readP.name} </span></td>
									</tr>
									<tr>
										<th scope="row">주문처리상태</th>
										<td id="ostate">${readP.state }</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<br>
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
										<td><span class="gSpace20"> <strong class="txt14">${readP.totalPrice} </strong>원
												<span class="displaynone"></span>
										</span> </td>
									</tr>
								</tbody>
								<tbody class="">
									<tr class="">
										<th scope="row">할인금액</th>
										<td><span class="gSpace20">${readP.salePrice }원</span></td>
									</tr>
								</tbody>
								<tbody class="">
									<tr class="">
										<th scope="row">적립금</th>
										<td>${readP.point }원</td>
									</tr>
									
									<tr class="sum">
										<th scope="row">총 결제금액</th>
										<td><span class="txtEm"> <strong class="txt14">${readP.totalPrice - readP.salePrice}</strong>원
												<span class="displaynone"></span>
										</span></td>
									</tr>
									<tr class="">
										<th scope="row">결제수단</th>
										<td><strong><span>${readP.paymentType} </span></strong></td>
									</tr>
									<c:if test="${readP.paymentType == '가상계좌' }">
										<tr class="">
											<th scope="row">입금은행</th>
											<td><strong><span>${readP.imagineBank} </span></strong></td>
										</tr>
										<tr class="">
											<th scope="row">입금계좌</th>
											<td><strong><span>${readP.imagineAccount} </span></strong></td>
										</tr>
										<tr class="">
											<th scope="row">유효기간</th>
											<td><strong><span>${readP.imagineDate} </span></strong></td>
										</tr>
									</c:if>
								</tbody>
							</table>
						</div>
						
						
					</div>
					<br>
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
									<col style="width: 152px">
									<col style="width: auto">
									<col style="width: 70px">
									<col style="width: 110px">
									<col style="width: 115px">
									<col style="width: 120px">
									<col style="width: 120px">   
								</colgroup>
								<thead>
									<tr>
										<th scope="col">이미지</th>
										<th scope="col">상품정보</th>
										<th scope="col">수량</th>
										<th scope="col">판매가</th>
										<th scope="col">배송구분</th>
										<th scope="col">주문처리상태</th>
										<th scope="col">송장 번호</th>
									</tr>
								</thead>
								<tfoot class="right">
									<tr>
										<td colspan="7"><span class="gLeft">[기본배송]</span> 상품구매금액
											<strong>${readP.totalPrice}</strong> + 배송비 ${readP.deliveryCharge } <span class=""> - 상품할인금액
												${readP.salePrice}</span> = 합계 : <strong class="txtEm gIndent10"><span
												class="txt18">${readP.totalPrice - readP.deliveryCharge }원</span></strong> <span class="displaynone"></span>
										</td>
									</tr>
								</tfoot>
								<tbody
									class="xans-element- xans-myshop xans-myshop-orderhistorydetailbasic center">
									
									<!-- 상품리스트 -->
									<c:forEach var="dto" items="${readPList}">
									<tr class="xans-record-">
										<td class="thumb">
											<a
											href="${pageContext.request.contextPath }/item/read?itemNo=${dto.itemNo}">
											<img
												style="width: 80px; height: 106px;"
												src="${pageContext.request.contextPath}/images/${dto.itemImage }"></a>
										</td>
										<td class="left"><a
											href="${pageContext.request.contextPath }/item/read?itemNo=${dto.itemNo}"><strong>${dto.itemTitle} </strong></a>
											<div class="option ">[옵션: ${dto.itemColor }/${dto.itemSize }]</div>
										</td>
										<td>${dto.count}</td>
										<td>  
											<div >      
												<strong>${dto.itemPrice}원 </strong>
												<div class="displaynone"></div>
											</div>
										</td>
										<td><div class="txtInfo">
												기본배송
											</div></td>
										<td>
											<p class="txtEm">${dto.state }</p>
											<p class="">  
												
											</p>
										</td>
										<td>
										<div class="txtInfo">                 
								   
												<c:if test="${ not empty dto.deliveryNo}">                                 
												<a href="#none" class="line"
													onclick="window.open('${pageContext.request.contextPath}/order/delivery?deliveryNo=${dto.deliveryNo }', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;">[${dto.deliveryNo }]</a></c:if>
											</div>
										</td>
									</tr>  
									</c:forEach>
									<!-- 리스트 -->
									
								</tbody>
							</table>
						</div>

					</div>
					
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
									<tr>
										<th scope="row">받으시는분</th>
										<td><span>${readP.rname} </span></td>
									</tr>
									<tr class="">
										<th scope="row">우편번호</th>
										<td><span>${readP.postcode}</span></td>
									</tr>
									<tr class="">
										<th scope="row">주소</th>
										<td><span>${readP.address} ${readP.detailaddress}</span></td>
									</tr>
									<tr>
										<th scope="row">일반전화</th>
										<td></td>
									</tr>
									<tr>
										<th scope="row">휴대전화</th>
										<td><span>${readP.rphone}</span></td>
									</tr>
									<tr>
										<th scope="row">배송메시지</th>
										<td><span>${readP.rmsg}</span></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>

					
					<div class="ec-base-button" style="float:right;">
						 <span class="gRight"> 
						 <c:if test="${id == 'admin' }">
						 	<a
							href="#" onClick="read_update()"
							class="yg_btn_140 yg_btn1 yg_btn_border_444" alt="주문목록보기">주문정보수정</a>
						</c:if>
							<a
							href="#" onClick="history.go(-1)"
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