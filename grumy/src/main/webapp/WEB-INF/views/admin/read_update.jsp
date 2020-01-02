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
$(document).ready(function(){
	var buttonId = "col1";
	var sel = document.getElementById(buttonId).value;
	var listSize = "${readPList.size()}";
	for(var i = 1; i<=listSize; i++){
		var sel = $("#col"+i).val();
		if(sel == "wait" || sel == "ready" || sel == "going" || sel == "finish"){
			$("#cancelno"+i).hide();
			$("#cancelno"+i).val("0");
		}
	}	
});
function changeS(no){
	var sel = $("#col"+no).val();

	if(no == '0'){
		var listSize = "${readPList.size()}";
		for(var i = 1; i<=listSize; i++){
			$("#col"+i).val(sel);
		}
	}
	if(sel == "wait" || sel == "ready" || sel == "going" || sel == "finish"){
		$("#cancelno"+no).hide();
		$("#cancelno"+no).val("0");
	}else{
		var tprice = $("#tPrice").val();
		$("#cancelno"+no).val(tprice);
		$("#cancelno"+no).show();		
	}
};
function keyevent(){
	var keyval = $("#dno0").val();
	var listSize = "${readPList.size()}";
	for(var i = 1; i<=listSize; i++){
		$("#dno"+i).val(keyval);
	}
};

function update(orderno){
	var state = new Array;
	var deliveryno = new Array;	
	var orderItemNo = new Array;
	var cancelno = new Array;
	var listSize = "${readPList.size()}";
	var orderid = $("#orderid").val();
	for(var i = 0; i<=listSize; i++){
		var stateId = "col"+i;
		var sel = document.getElementById(stateId);
		var selT = sel.options[sel.selectedIndex].text;
		if(i != 0){
			deliveryno.push($("#dno"+i).val());		
			orderItemNo.push($("#orderItemNo"+i).val());	
			cancelno.push($("#cancelno"+i).val());		
		}
		state.push(selT);	
		
	}	
	var aa = { "orderno" : orderno, "listSize" : listSize, "state" : state, "deliveryno" : deliveryno, 
				"orderItemNo" :orderItemNo, "orderid" : orderid, "cancelno" : cancelno};
	$.ajax({
		url         :   "${pageContext.request.contextPath}/admin/update",
        contentType :   "application/json; charset=utf-8",
        type        :   "post",
		data: JSON.stringify(aa),
		success : function(retVal){
			console.log("성공:"+retVal);
			location.reload();
		}, 
		error : function(request, status, error){
			console.log("에러1:"+request);
			console.log("에러2:"+status);
			console.log("에러3:"+error);
		}
	}); 
}
</script>

</head>
<body>
	<div id="container">
		<div id="contents">
			<div class="titleArea">
				<h2>ORDER DETAIL 업데이트 페이지</h2>
				<h3>주문상세조회</h3>
			</div>

			<form id="detailForm" name="detailForm"
				action="/exec/front/MyShop/OrderCancel/" method="POST"
				enctype="multipart/form-data">
				<input id="order_id" name="order_id" fw-filter="isFill"
					fw-label="주문번호" fw-msg="" value="20191121-0030184" type="hidden">
				<input type="hidden" id="orderid" value="${readP.orderID }"/>
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
										<th scope="row">주문처리일괄변경</th>
										<td id="ostate">
											<input type="text" id="dno0" placeholder="송장번호를 입력하세요" onkeyup="keyevent(this);"/>
											<select id="col0" name="col0" onchange="changeS(0)">
												<option value="wait"
													<c:if test="${col == 'wait' }">selected</c:if>
													<c:if test="${readP.state == '입금대기' }">selected</c:if>>입금대기</option>
												<option value="ready"
													<c:if test="${col == 'ready' }">selected</c:if>
													<c:if test="${readP.state == '배송준비' }">selected</c:if>>배송준비</option>
												<option value="going"
													<c:if test="${col == 'going' }">selected</c:if>
													<c:if test="${readP.state == '배송중' }">selected</c:if>>배송중</option>
												<option value="finish"
													<c:if test="${col == 'finish' }">selected</c:if>
													<c:if test="${readP.state == '배송완료' }">selected</c:if>>배송완료</option>
												<option value="cancel"
													<c:if test="${col == 'cancel' }">selected</c:if>
													<c:if test="${readP.state == '주문취소' }">selected</c:if>>주문취소</option>
												<option value="modify"
													<c:if test="${col == 'modify' }">selected</c:if>
													<c:if test="${readP.state == '주문변경' }">selected</c:if>>주문변경</option>
												<option value="return"
													<c:if test="${col == 'return' }">selected</c:if>
													<c:if test="${readP.state == '반품요청' }">selected</c:if>>반품요청</option>
												<option value="change"
													<c:if test="${col == 'change' }">selected</c:if>
													<c:if test="${readP.state == '교환요청' }">selected</c:if>>교환요청</option>
											</select> 
											
										</td>
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
									<col style="width: 150px">   
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
										<th scope="col">송장번호</th>										
									</tr>
								</thead>
								<tfoot class="right">
									<tr>
										<td colspan="7"><span class="gLeft">[기본배송]</span> 상품구매금액
											<strong>${readP.totalPrice}</strong> + 배송비 ${deliveryPay } <span class=""> - 상품할인금액
												${readP.salePrice}</span> = 합계 : <strong class="txtEm gIndent10"><span
												class="txt18">${totalPay }원</span></strong> <span class="displaynone"></span>
										</td>
									</tr>
								</tfoot>
								<tbody
									class="xans-element- xans-myshop xans-myshop-orderhistorydetailbasic center">
									
									<!-- 상품리스트 -->
									<c:forEach var="dto" items="${readPList}" varStatus="fno">
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
										<td class="right">
											<div class="">
												<strong>${dto.itemPrice}원 </strong>
												<div class="displaynone"></div>
											</div>
										</td>
										<td><div class="txtInfo">기본배송</div>
										</td>
										<td><div>
											<select id="col${fno.count }" name="col${fno.count }" onchange="changeS(${fno.count })">
												<option value="wait"
													<c:if test="${col == 'wait' }">selected</c:if>
													<c:if test="${dto.state == '입금대기' }">selected</c:if>>입금대기</option>
												<option value="ready"
													<c:if test="${col == 'ready' }">selected</c:if>
													<c:if test="${dto.state == '배송준비' }">selected</c:if>>배송준비</option>
												<option value="going"
													<c:if test="${col == 'going' }">selected</c:if>
													<c:if test="${dto.state == '배송중' }">selected</c:if>>배송중</option>
												<option value="finish"
													<c:if test="${col == 'finish' }">selected</c:if>
													<c:if test="${dto.state == '배송완료' }">selected</c:if>>배송완료</option>
												<option value="cancel"
													<c:if test="${col == 'cancel' }">selected</c:if>
													<c:if test="${dto.state == '주문취소' }">selected</c:if>>주문취소</option>
												<option value="modify"
													<c:if test="${col == 'modify' }">selected</c:if>
													<c:if test="${dto.state == '주문변경' }">selected</c:if>>주문변경</option>
												<option value="return"
													<c:if test="${col == 'return' }">selected</c:if>
													<c:if test="${dto.state == '반품요청' }">selected</c:if>>반품요청</option>
												<option value="change"
													<c:if test="${col == 'change' }">selected</c:if>
													<c:if test="${dto.state == '교환요청' }">selected</c:if>>교환요청</option>
											</select></div>
											<div>
											<input type="text" id="cancelno${fno.count }" value="${dto.itemPrice * dto.count }"/>
											<input type="hidden" id="tPrice" value="${dto.itemPrice * dto.count }"/>
											</div>
										</td>
										<td>
											<div class="">
												<input type="text" id="dno${fno.count }" value="${dto.deliveryNo }"/>
												<input type="hidden" id="orderItemNo${fno.count }" value="${dto.orderItemNo }"/>
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
							href="#" onClick="history.go(-1)"
							class="yg_btn_140 yg_btn1 yg_btn_border_444" alt="주문목록보기">뒤로가기</a>
						</c:if>
							<a
							href="#" onClick="update('${readP.orderNo}')"
							class="yg_btn_140 yg_btn1 yg_btn_border_444" alt="주문목록보기">수정하기</a>     
						</span>
					</div>     
				</div>
			</form>
		</div>
		<hr class="layout">
	</div>
</body>
</html>