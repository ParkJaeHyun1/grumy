<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!--PG크로스브라우징필수내용 시작-->
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<!--PG크로스브라우징필수내용 끝-->
<!--해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!--해당 CSS는 쇼핑몰 전체 슬라이드 배너에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. -->
<script type="text/javascript" src="/ec-js/common.js"></script>
<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="/yangji/js/jquery.bxslider.min.js"></script>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />
<link rel="canonical" href="http://www.slowand.com">
	<link rel="alternate" href="http://www.m.slowand.com/">

		<meta name="google-site-verification"
			content="EFPjfmjiYaukHxgQEmFrlvyllFVJax3Pr1MlHCYhkgU" />
		<meta name="naver-site-verification"
			content="cdc66033ac54c3c0175fba92d71c46317e5c78e1" />

		<meta name="author" content="슬로우앤드 - 천천히 그리고,">
			<meta name="keywords"
				content="20대 여성의류 베이직쇼핑몰, 데일리룩, 캠퍼스룩, 원피스, 스커트, 악세사리, 니트, 가디건, 등" />
			<meta name="description"
				content="20대 여성의류 베이직쇼핑몰, 데일리룩, 캠퍼스룩, 원피스, 스커트, 악세사리, 니트, 가디건, 등">

				<meta name="viewport" content="width=device-width">
					<link rel="canonical"
						href="http://slowand.com/order/orderform.html" />
					<link rel="alternate"
						href="http://m.slowand.com/order/orderform.html" />
					<meta property="og:url"
						content="http://slowand.com/order/orderform.html" />
					<meta property="og:title" content="슬로우앤드" />
					<meta property="og:description"
						content="20대 여성의류쇼핑몰, 데일리룩, 캠퍼스룩, 원피스, 스커트, 악세사리 등" />
					<meta property="og:site_name" content="슬로우앤드" />
					<meta property="og:type" content="website" />
					<script type="text/javascript"
						src="/app/Eclog/js/cid.generate.js?vs=3d0b473968a0ec4ec41e3bf59df3aa51"></script>
					<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
					<script type="text/javascript"
						src="//www.slowand.com/ind-script/moment.php?convert=T"></script>
					<link rel="stylesheet" type="text/css"
						href="https://www.slowand.com/ind-script/optimizer.php?filename=tZQ9bsMwDIX3OGvPQSQt0L1zp_YE-mFsxZLokhIQ376CnSGFl0KxRhHkR_JJejBQQDidGSamnlUARqHMBsGIwIUpJjAUAsVjCbzAf_LRHIR8To7iQdOtsjCnVNvUqxm5rjQp7fGhFE2XBVlAxYjn0_srTFl7Z7ohBQ9isbMoro8go4tvCzSQzR4hzDLQBFrFURON9cyyDeVUQOLM0qDMWw64WbN-VmKLDBfisOOYm2fzLHANNBAyuwbQROSTmxqQB_QtsOWH2Gxa6Dup3kWVsIXKSjegbsxnN_AfO9xRBN9C3JJl6rGziv3VrT5bbHYX0PUnI89HfRPv7DPm98D8VIl2AX2rKLvY8f1CFlf-UDJiMpSfUXDLvn_2LzS4gn8B&type=css&k=e22f5c15bc0ccd63d04b603a65ebf1ffb78f13b2&t=1547093551" />

					<title>그루미</title>
					<meta name="path_role" content="ORDER_ORDERFORM" />
					<meta name="author" content="슬로우앤드" />
					<meta name="description"
						content="20대 여성의류 베이직쇼핑몰, 데일리룩, 캠퍼스룩, 원피스, 스커트, 악세사리, 니트, 가디건, 등" />
					<meta name="keywords"
						content="20대 여성의류 베이직쇼핑몰, 데일리룩, 캠퍼스룩, 원피스, 스커트, 악세사리, 니트, 가디건, 등" />
</head>
<body id="cmn">
	<div id="wrap">
		<!-- 상단카테고리 -->



		<!-- //상단카테고리 -->

		<div id="container">
			<div id="contents">


				<div class="titleArea">
					<h2>ORDER</h2>
					<h3>주문서작성</h3>
				</div>

				<form id="frm_order_act" name="frm_order_act" action=""
					method="post" target="_self" enctype="multipart/form-data">
				
					<div class="xans-element- xans-order xans-order-form xans-record-">
						<!-- 이값은 지우면 안되는 값입니다. ($move_order_after 주문완료페이지 주소 / $move_basket 장바구니페이지 주소)
        $move_order_after=/order/order_result.html
        $move_basket=/order/basket.html
    -->
						<!-- 국내배송상품 주문내역 -->
						<div class="orderListArea ">
							<div class="title">
								<h3>상품 주문내역</h3>
							</div>

							<!-- 기본배송 -->
							<div class="ec-base-table typeList gBorder ">
								<table border="1" summary="">
									<caption>기본배송</caption>
									<colgroup>
										<col style="width: 40px" class="" />
										<col style="width: 92px" />
										<col style="width: auto" />
										<col style="width: 98px" />
										<col style="width: 75px" />
										<col style="width: 98px" />
										<col style="width: 98px" />
										<col style="width: 85px" />
										<col style="width: 98px" />
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class=""></th>
											<th scope="col">IMAGE</th>
											<th scope="col">PRODUCT NAME</th>
											<th scope="col">PRICE</th>
											<th scope="col">QTY</th>
											<th scope="col">POINT<!--적립금-->
											</th>
											<th scope="col">DELIVERY</th>
											<th scope="col">CHARGE</th>
											<th scope="col">TOTAL</th>
										</tr>
									</thead>
									<tfoot class="right">
										<tr>
											<td class=""></td>
											<td colspan="8"><span class="gLeft">[기본배송]</span> 상품구매금액
												96,900<span class="displaynone"> (0)</span><span
												class="displaynone"> + 부가세 0</span> + 배송비 <span
												id="domestic_ship_fee">0 (무료)</span> <span
												class="displaynone"> - 상품할인금액 0 </span> = 합계 : <strong
												class="txtEm gIndent10"><span
													id="domestic_ship_fee_sum" class="txt18">96,900</span>원</strong> <span
												class="displaynone"></span></td>
										</tr>
									</tfoot>
									<tbody
										class="xans-element- xans-order xans-order-normallist center">
											<c:forEach var="dto" items="${list}">    
										<tr class="xans-record-">      
											<td class=""></td>      
											<td class="thumb gClearLine"><a
												href="/product/detail.html?product_no=3573&cate_no=24"><img
													src="//www.slowand.com/web/product/tiny/201911/23d4e1113d8d2f213b43cc9e02b415ee.jpg"
													onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"
													alt="" /></a></td>
											<td class="left gClearLine"><a
												href="/product/detail.html?product_no=3573&cate_no=24">#SLOWMADE.
													퍼스널 울 골지가디건 - 5 color</a>
												<div class="option ">[옵션: 그레이]</div>
												<p class="gBlank5 displaynone">무이자할부 상품</p>
												<p class="gBlank5 displaynone">유효기간 :</p></td>
											<td>
												<div class="discount">
													25000원
													<p class="displaynone"></p>
												</div>
											
											<div id="cart_item_price_21">
												22000원</div></td>
											<td>1</td>
											<td><span class="txtInfo"><input
													id='product_mileage_cash_3573_000D'
													name='product_mileage_cash' value='578' type="hidden"><img
														src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_pay_money.gif" />
														578원<br /> <input id='product_mileage_card_3573_000D'
														name='product_mileage_card' value='289' type="hidden"><img
															src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_pay_card.gif" />
															289원<br /> <input id='product_mileage_tcash_3573_000D'
															name='product_mileage_tcash' value='289' type="hidden"><img
																src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_pay_bank.gif" />
																289원<br /> <input id='product_mileage_cell_3573_000D'
																name='product_mileage_cell' value='289' type="hidden"><img
																	src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_pay_mobile.gif" />
																	289원<br /> <input id='product_mileage_icash_3573_000D'
																	name='product_mileage_icash' value='289' type="hidden"><img
																		src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_pay_account.gif" />
																		289원</span></td>
											<td><div class="txtInfo">
													기본배송<br />
												</div></td>
											<td rowspan="1" class="">[무료]</td>
											<td>28,900원
												<div class="displaynone"></div>
											</td>
										</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>

							<!-- 업체기본배송 -->
							<div class="ec-base-table typeList gBorder displaynone">
								<table border="1" summary="">
									<caption>업체기본배송</caption>
									<colgroup>
										<col style="width: 40px" class="" />
										<col style="width: 92px" />
										<col style="width: auto" />
										<col style="width: 98px" />
										<col style="width: 75px" />
										<col style="width: 98px" />
										<col style="width: 98px" />
										<col style="width: 85px" />
										<col style="width: 98px" />
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class=""><input type="checkbox"
												onclick="" /></th>
											<th scope="col">IMAGE</th>
											<th scope="col">PRODUCT NAME</th>
											<th scope="col">PRICE</th>
											<th scope="col">QTY</th>
											<th scope="col">POINT<!--적립금-->
											</th>
											<th scope="col">DELIVERY</th>
											<th scope="col">CHARGE</th>
											<th scope="col">TOTAL</th>
										</tr>
									</thead>
									<tfoot class="right">
										<tr>
											<td class=""></td>
											<td colspan="8"><span class="gLeft">[업체기본배송]</span>
												상품구매금액 <span class="displaynone"> ()</span><span
												class="displaynone"> + 부가세 </span> + 배송비 <span
												class="displaynone"> - 상품할인금액 </span> = 합계 : <strong
												class="txtEm gIndent10"><span class="txt18"></span></strong>
												<span class="displaynone"></span></td>
										</tr>
									</tfoot>
								</table>
							</div>

							<!-- 개별배송 -->
							<div class="ec-base-table typeList gBorder displaynone">
								<table border="1" summary="">
									<caption>개별배송</caption>
									<colgroup>
										<col style="width: 40px" class="" />
										<col style="width: 92px" />
										<col style="width: auto" />
										<col style="width: 98px" />
										<col style="width: 75px" />
										<col style="width: 98px" />
										<col style="width: 98px" />
										<col style="width: 85px" />
										<col style="width: 98px" />
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class=""><input type="checkbox"
												onclick="" /></th>
											<th scope="col">IMAGE</th>
											<th scope="col">PRODUCT NAME</th>
											<th scope="col">PRICE</th>
											<th scope="col">QTY</th>
											<th scope="col">POINT<!--적립금-->
											</th>
											<th scope="col">DELIVERY</th>
											<th scope="col">CHARGE</th>
											<th scope="col">TOTAL</th>
										</tr>
									</thead>
									<tfoot class="right">
										<tr>
											<td class=""></td>
											<td colspan="8"><span class="gLeft">[개별배송]</span> 상품구매금액
												<span class="displaynone"> ()</span><span
												class="displaynone"> + 부가세 </span> + 배송비 <span
												class="displaynone"> - 상품할인금액 </span> = 합계 : <strong
												class="txtEm gIndent10"><span class="txt18"></span></strong>
												<span class="displaynone"></span></td>
										</tr>
									</tfoot>
								</table>
							</div>
						</div>
						<ul class="ec-base-help controlInfo typeBtm">
							<li class="txtWarn txt11">상품의 옵션 및 수량 변경은 상품상세 또는 장바구니에서
								가능합니다.</li>
							<li class="txtWarn txt11 displaynone">할인 적용 금액은 주문서작성의
								결제예정금액에서 확인 가능합니다.</li>
						</ul>
						<div class="orderArea">
							<div class="title">
								<h3>배송 정보</h3>
								<p class="required">
									<img src="https://www.slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수" />
									필수입력사항
								</p>
							</div>
							<div class="ec-base-table typeWrite">
								<table border="1" summary="">
									<caption>배송 정보 입력</caption>
									<colgroup>
										<col style="width: 170px;" />
										<col style="width: auto;" />
									</colgroup>
									<!-- 비회원 결제 -->
									<tbody class="displaynone ec-shop-deliverySimpleNomemberForm">
										<tr class="ec-orderform-NoMemberPasswdRow">
											<th scope="row">주문조회 비밀번호 <img
												src="https://www.slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수" /></th>
											<td>(주문조회시 필요합니다. 4자에서 12자 영문 또는 숫자 대소문자 구분)</td>
										</tr>
										<tr class="ec-orderform-NoMemberPasswdRow">
											<th scope="row">주문조회 비밀번호 확인 <img
												src="https://www.slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수" /></th>
											<td></td>
										</tr>
									</tbody>
									<!-- 국내 배송지 정보 -->
									<tbody class="">
										<tr class="">
											<th scope="row">배송지 선택</th>
											<td>
												<div class="address">
													<input id="sameaddr0" name="sameaddr" fw-filter=""
														fw-label="1" fw-msg="" value="T" type="radio" /><label
														for="sameaddr0">주문자 정보와 동일</label> <input id="sameaddr1"
														name="sameaddr" fw-filter="" fw-label="1" fw-msg=""
														value="F" type="radio" /><label for="sameaddr1">새로운배송지</label>
													
												</div>
											</td>
										</tr>
										<tr>
											<th scope="row">받으시는 분 <img
												src="https://www.slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수" /></th>
											<td><input id="rname" name="rname" fw-filter="isFill"
												fw-label="수취자 성명" fw-msg="" class="inputTypeText"
												placeholder="" size="15" value="" type="text" /></td>
										</tr>
										<tr>
											<th scope="row">주소 <img
												src="https://www.slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수" /></th>
											<td><input id="rzipcode1" name="rzipcode1"
												fw-filter="isFill" fw-label="수취자 우편번호1" fw-msg=""
												class="inputTypeText" placeholder="" size="6" maxlength="6"
												readonly="1" value="" type="text" /> <a href="#none"
												id="btn_search_rzipcode" class="yg_btn_24 yg_btn5"
												alt="우편번호">우편번호</a><br /> <input id="raddr1" name="raddr1"
												fw-filter="isFill" fw-label="수취자 주소1" fw-msg=""
												class="inputTypeText" placeholder="" size="40" readonly="1"
												value="" type="text" /> <span class="grid">기본주소</span><br />
												<input id="raddr2" name="raddr2" fw-filter="isFill"
												fw-label="수취자 주소2" fw-msg="" class="inputTypeText"
												placeholder="" size="40" value="" type="text" /> <span
												class="grid">나머지주소</span><span class="grid displaynone">(선택입력가능)</span>
											</td>
										</tr>
										<tr class="displaynone">
											<th scope="row">일반전화 <span class="displaynone"><img
													src="https://www.slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수" /></span>
											</th>
											<td></td>
										</tr>
										<tr class="">
											<th scope="row">휴대전화 <span class=""><img
													src="https://www.slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수" /></span>
											</th>
											<td><select id="rphone2_1" name="rphone2_[]"
												fw-filter="isNumber&isFill" fw-label="수취자 핸드폰번호"
												fw-alone="N" fw-msg="">
													<option value="010">010</option>
													<option value="011">011</option>
													<option value="016">016</option>
													<option value="017">017</option>
													<option value="018">018</option>
													<option value="019">019</option>
											</select>-<input id="rphone2_2" name="rphone2_[]" maxlength="4"
												fw-filter="isNumber&isFill" fw-label="수취자 핸드폰번호"
												fw-alone="N" fw-msg="" size="4" value="" type="text" />-<input
												id="rphone2_3" name="rphone2_[]" maxlength="4"
												fw-filter="isNumber&isFill" fw-label="수취자 핸드폰번호"
												fw-alone="N" fw-msg="" size="4" value="" type="text" /></td>
										</tr>
										<tr class="displaynone">
											<th scope="row">안심번호</th>
											<td>
												<p>- 안심번호 서비스는 개인정보 보호를 위하여 휴대폰번호 등 실제 연락처 대신에 1회성 임시
													번호를 제공하는 서비스입니다.</p>
											</td>
										</tr>
									</tbody>
									<!-- 해외 배송지 정보 -->
									<tbody class="displaynone">
										<tr class="">
											<th scope="row">배송지 선택</th>
											<td>
												<p class="address">
													<a href="#none" id="btn_address_oversea"
														class=" yg_btn_80 yg_btn3" alt="주소록 보기">주소록 보기</a>
												</p>
											</td>
										</tr>
										<tr>
											<th scope="row">받으시는 분 <img
												src="https://www.slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수" /></th>
											<td><span class="grid">받는분의 이름은 영문으로 작성해 주세요.</span></td>
										</tr>
										<tr class="displaynone">
											<th scope="row">영문이름</th>
											<td></td>
										</tr>
										<tr class="displaynone">
											<th scope="row">이름(발음기호)</th>
											<td></td>
										</tr>
										<tr>
											<th scope="row">국가 <img
												src="https://www.slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수" /></th>
											<td></td>
										</tr>
										<tr>
											<th scope="row">우편번호</th>
											<td><a href="#none" id="btn_search_fzipcode"
												class=" yg_btn_80 yg_btn3" alt="주소검색">주소검색</a></td>
										</tr>
										<tr>
											<th scope="row">주소1 <img
												src="https://www.slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수" /></th>
											<td></td>
										</tr>
										<tr>
											<th scope="row">주소2</th>
											<td></td>
										</tr>
										<tr>
											<th scope="row">도시 <img
												src="https://www.slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수" /></th>
											<td></td>
										</tr>
										<tr>
											<th scope="row">주/지방 <img
												src="https://www.slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수" /></th>
											<td></td>
										</tr>
										<tr class="displaynone">
											<th scope="row">일반전화 <span class="displaynone"><img
													src="https://www.slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수" /></span>
											</th>
											<td>
												<p class="gBlank5">'-' 없이 숫자만 입력해 주세요.</p>
											</td>
										</tr>
										<tr class="">
											<th scope="row">휴대전화 <span class=""><img
													src="https://www.slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수" /></span>
											</th>
											<td>
												<p class="gBlank5">'-' 없이 숫자만 입력해 주세요.</p>
											</td>
										</tr>
										<tr id="ec-shop-receiver_id_card_key" class="displaynone">
											<th scope="row">신분증 ID <img
												src="https://www.slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수" /></th>
											<td>
												<p class="gBlank5">통관을 위해 규정에 따라 신분증 ID를 수집합니다.</p>
											</td>
										</tr>
									</tbody>
									<!-- 이메일 국내/해외 -->
									<tbody
										class="email ec-orderform-emailRow ec-shop-deliverySimpleForm">
										<tr>
											<th scope="row">이메일 <img
												src="https://www.slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수" /></th>
											<td><input id="oemail1" name="oemail1"
												fw-filter="isFill" fw-label="주문자 이메일" fw-alone="N" fw-msg=""
												class="mailId" value="" type="text" />@<input id="oemail2"
												name="oemail2" fw-filter="isFill" fw-label="주문자 이메일"
												fw-alone="N" fw-msg="" class="mailAddress"
												readonly="readonly" value="" type="text" /><select
												id="oemail3" fw-filter="isFill" fw-label="주문자 이메일"
												fw-alone="N" fw-msg="">
													<option value="" selected="selected">- 이메일 선택 -</option>
													<option value="naver.com">naver.com</option>
													<option value="daum.net">daum.net</option>
													<option value="nate.com">nate.com</option>
													<option value="hotmail.com">hotmail.com</option>
													<option value="yahoo.com">yahoo.com</option>
													<option value="empas.com">empas.com</option>
													<option value="korea.com">korea.com</option>
													<option value="dreamwiz.com">dreamwiz.com</option>
													<option value="gmail.com">gmail.com</option>
													<option value="etc">직접입력</option>
											</select>
												<p class="gBlank5">
													이메일을 통해 주문처리과정을 보내드립니다.<br />이메일 주소란에는 반드시 수신가능한 이메일주소를
													입력해 주세요.
												</p></td>
										</tr>
									</tbody>
									<!-- 국내 배송관련 정보 -->
									<tbody class="delivery ">
										<tr class="">
											<th scope="row">배송메시지 <span class="displaynone"><img
													src="https://www.slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수" /></span>
											</th>
											<td><textarea id="omessage" name="omessage" fw-filter=""
													fw-label="배송 메세지" fw-msg="" maxlength="255" cols="70"></textarea>
												<div class="devMessage displaynone">
													<label><input id="omessage_autosave0"
														name="omessage_autosave[]" fw-filter=""
														fw-label="배송 메세지 저장" fw-msg="" value="T" type="checkbox" /><label
														for="omessage_autosave0"></label> 자동저장</label>
													<ul class="gIndent5">
														<li>배송메시지란에는 배송시 참고할 사항이 있으면 적어주십시오.</li>
														<li>게시글은 비밀글로 저장되며 비밀번호는 주문번호 뒷자리로 자동 저장됩니다.</li>
													</ul>
												</div></td>
										</tr>
										<tr class="displaynone">
											<th scope="row">희망배송일</th>
											<td>
												<ul class="grid">
													<li></li>
													<li>이후 날짜를 입력해야 합니다.</li>
													<li>년 월 일 <span id="fhdateW_str"></span>요일
													</li>
												</ul>
											</td>
										</tr>
										<tr class="displaynone">
											<th scope="row">희망배송시간</th>
											<td>
												<ul class="grid">
													<li></li>
													<li></li>
												</ul>
											</td>
										</tr>
									</tbody>
									<!-- 해외 배송관련 정보 -->
									<tbody class="delivery displaynone">
										<tr class="">
											<th scope="row">배송메시지 <span class="displaynone"><img
													src="https://www.slowand.com//web/upload/yangji_pc_crumb/req_check.png" alt="필수" /></span>
											</th>
											<td>
												<div class="devMessage displaynone">
													<label> 자동저장</label>
													<ul>
														<li>배송메시지란에는 배송시 참고할 사항이 있으면 적어주십시오.</li>
														<li>게시글은 비밀글로 저장되며 비밀번호는 주문번호 뒷자리로 자동 저장됩니다.</li>
													</ul>
												</div>
											</td>
										</tr>
										<tr class="displaynone">
											<th scope="row">희망배송일</th>
											<td>
												<ul class="grid">
													<li></li>
													<li>이후 날짜를 입력해야 합니다.</li>
													<li>년 월 일 <span id="fhdateW_str"></span>요일
													</li>
												</ul>
											</td>
										</tr>
										<tr class="displaynone">
											<th scope="row">희망배송시간</th>
											<td>
												<ul class="grid">
													<li></li>
													<li></li>
												</ul>
											</td>
										</tr>
										<tr class="">
											<th scope="row">배송비</th>
											<td>
												<div
													class="ec-shop-shipping_additional_fee_show displaynone">
													<strong><span id="f_addr_total_ship_fee_id"></span>원</strong>
													= 해외배송비 <span id="f_addr_delv_price_id"></span>원 + 보험료 <span
														id="f_addr_insurance_price_id"></span>원 <span
														class="ec-shop-shipping_additional_fee_name_show">
														+ <span id="f_addr_shipping_additional_fee_name_id"></span>
														<span id="f_addr_shipping_additional_fee_id"></span>원
													</span>
													<p class="gBlank5">
														보험료는 배송과정에서 발생하는 분실, 도난, 파손 등으로 인한 손해에 대하여<br />규정에 따라
														배상해 드리는 서비스입니다.
													</p>
												</div>
												<div class="ec-shop-shipping_additional_fee_hide ">
													<strong><span id="f_addr_total_ship_fee_id"></span>원</strong>
													= 해외배송비 <span id="f_addr_delv_price_id"></span>원 + 보험료 <span
														id="f_addr_insurance_price_id"></span>원
													<p class="gBlank5">
														배송비에는 관세 및 세금 등의 각종 비용은 포함되어 있지 않습니다.<br />상품수령 시 고객님이
														추가로 지불하셔야 합니다.<br />보험료는 배송과정에서 발생하는 분실, 도난, 파손 등으로 인한
														손해에 대하여<br />규정에 따라 배상해 드리는 서비스입니다.
													</p>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- 추가 정보 -->
						<div class="orderArea displaynone">
							<div class="title">
								<h3>추가 정보</h3>
							</div>
							<div class="ec-base-table typeWrite">
								<table border="1" summary="">
									<caption>추가 정보 입력</caption>
									<colgroup>
										<col style="width: 170px;" />
										<col style="width: auto;" />
									</colgroup>
									<tbody class="xans-element- xans-order xans-order-ordadd">
										<tr class="">
											<th scope="row"></th>
											<td></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- 기타 문의사항 -->
						<div class="orderArea displaynone">
							<div class="title">
								<h3>기타 문의사항</h3>
							</div>
							<div class="ec-base-table typeWrite">
								<table border="1" summary="">
									<caption>기타 문의사항</caption>
									<colgroup>
										<col style="width: 170px;" />
										<col style="width: auto;" />
									</colgroup>
									<tbody>
										<tr>
											<th scope="row">기타 문의사항</th>
											<td><textarea id="question" name="question" fw-filter=""
													fw-label="기타문의사항" fw-msg="" maxlength="255" cols="70"></textarea></td>
										</tr>
										<tr>
											<th scope="row">비밀번호</th>
											<td><input id="question_passwd" name="question_passwd"
												fw-filter="" fw-label="기타문의사항 비밀번호" fw-msg="" value=""
												type="password" /></td>
										</tr>
									</tbody>
								</table>
							</div>
							<ul class="list">
								<li>해당 문의 사항은 <a href="/board/product/list.html?board_no=6"
									target="_blank"><strong>[상품 문의]</strong></a> 에 자동 등록됩니다.
								</li>
								<li>운영자에 문의할 내용이나 요청할 내용이 있는 경우 기재하여 주세요.</li>
								<li>비밀번호는 작성하신 문의글을 게시판에서 내용 확인 할 때 사용됩니다.</li>
							</ul>
						</div>
						<!-- 결제 예정 금액 -->
						<div class="title">
							<h3>결제 예정 금액</h3>
						</div>
						<div class="totalArea">
							<div class="ec-base-table typeList gBorder total">
								<table border="1" summary="">
									<caption>결제 예정 금액</caption>
									<colgroup>
										<col style="width: 33.33%" />
										<col style="width: 33.33%" class="" />
										<col style="width: 33.33%" />
									</colgroup>
									<thead>
										<tr>
											<th scope="col"><strong>총 주문 금액</strong> <a href="#none"
												onclick="EC_SHOP_FRONT_ORDERFORM_DISPLAY.onDiv('order_layer_detail', event);"
												class="more yg_btn_24 yg_btn3" alt="내역보기">내역보기</a></th>
											<th scope="col" class=""><strong>총 </strong><strong
												id="total_addsale_text" class="">할인</strong><strong
												id="plus_mark" class=""> + </strong><strong
												id="total_addpay_text" class="">부가결제</strong><strong>
													금액</strong></th>
											<th scope="col"><strong>총 결제예정 금액</strong></th>
										</tr>
									</thead>
									<tbody class="center">
										<tr>
											<td class="price"><div class="box txt16">
													<strong><span id="total_order_price_view"
														class="txt23">${totalPrice+deliveryCharge}</span>원</strong> <span class="displaynone"><span
														id="total_order_price_ref_view"></span></span>
												</div></td>
											<td class="option "><div class="box txt16">
													<strong>-</strong> <strong><span
														id="total_sale_price_view" class="txt23">0</span>원</strong> <span
														class="displaynone"><span
														id="total_sale_price_ref_view"></span></span>
												</div></td>
											<td><div class="box txtEm txt16">
													<strong>=</strong> <strong><span
														id="total_order_sale_price_view" class="txt23">96,900</span>원</strong>
													<span class="displaynone"><span
														id="total_order_sale_price_ref_view"></span></span>
												</div></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="detail">
								<div class="ec-base-table gMerge ">
									<table border="1" summary="">
										<caption>할인 내역</caption>
										<colgroup>
											<col style="width: 160px" />
											<col style="width: auto" />
										</colgroup>
										<tbody>
											<tr class="sum txt14">
												<th scope="row"><strong>총 할인금액</strong></th>
												<td><strong id="total_addsale_price_view">0</strong>원</td>
											</tr>
											<tr class=" mCouponSelect">
												<th scope="row">쿠폰할인</th>
												<td><a href="#none" id="btn_coupon_select"
													class="yg_btn_24" alt="쿠폰적용">쿠폰적용</a></td>
											</tr>
											<!-- 참고 : 쿠폰적용 후 -->
											<tr class="mCouponModify">
												<th scope="row">쿠폰할인</th>
												<td><span class="mTotalCouponDiscount">0원</span> <a
													id="eCouponModify" href="#none" class="yg_btn_24" alt="수정">수정</a>
													<div id="divCpnView" style="display: none" class="coupon">
														<span id="txt_cpn_contents"></span> <span
															id="txt_cpn_price"></span> <span id="txt_cpn_attr_D"></span>
														<span id="txt_cpn_attr_M"></span> <span
															id="txt_cpn_attr_C"></span>
													</div>
													<div id="divCpn" style="display: none" class="couponArea"></div>
												</td>
											</tr>
											<!-- //참고 -->
											<tr class="displaynone"
												id="ec-shop-orderfom-total-benefit-view-id">
												<th scope="row">추가할인금액</th>
												<td><span class="gSpace20"><span
														id="total_benefit_price_view">0</span>원</span> <a href="#none"
													class="yg_btn_24 yg_btn3"
													onclick="EC_SHOP_FRONT_ORDERFORM_DISPLAY.onDiv('order_layer_addsale', event);"
													alt="내역보기">내역보기</a></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="ec-base-table gMerge ">
									<table border="1" summary="">
										<caption>부가결제 내역</caption>
										<colgroup>
											<col style="width: 160px" />
											<col style="width: auto" />
										</colgroup>
										<tbody>
											<tr class="sum txt14">
												<th scope="row"><strong>총 부가결제금액</strong></th>
												<td><strong id="total_addpay_price_view">0</strong>원</td>
											</tr>
										</tbody>
										<!-- 적립금 -->
										<tbody class="">
											<tr>
												<th scope="row">적립금</th>
												<td>
													<p>
														<input id="input_mile" name="input_mile" fw-filter=""
															fw-label="적립금" fw-msg="" class="inputTypeText"
															placeholder="" size="10" value="" type="text" /> 원 (총
														사용가능 적립금 : <strong class="txtWarn">38,289</strong>원)
													</p>
													<ul class="info">
														<li>적립금은 최소 2,000 이상일 때 결제가 가능합니다.</li>
														<li id="mileage_max_unlimit" class="">최대 사용금액은 제한이
															없습니다.</li>
														<li id="mileage_max_limit" class="displaynone">1회 구매시
															적립금 최대 사용금액은 입니다.</li>
														<li>적립금으로만 결제할 경우, 결제금액이 0으로 보여지는 것은 정상이며 [결제하기] 버튼을
															누르면 주문이 완료됩니다.</li>
														<li id="mileage_shipfee" class="displaynone">적립금 사용 시
															배송비는 적립금으로 사용 할 수 없습니다.</li>
														<li id="mileage_exception" class="displaynone">적립금 사용
															시 해당 상품에 대한 적립금은 적립되지 않습니다.</li>
													</ul>
												</td>
											</tr>
										</tbody>
										<!-- 예치금 -->
										<tbody class="displaynone">
											<tr>
												<th scope="row">예치금</th>
												<td>
													<p>
														<input id="input_deposit" name="input_deposit"
															fw-filter="" fw-label="예치금" fw-msg=""
															class="inputTypeText" placeholder="" size="10" value=""
															type="text" /> 원 (총 사용가능 예치금 : <strong class="txtWarn"></strong>원)
													</p>
													<ul class="info">
														<li>예치금은 사용제한 없이 언제든 결제가 가능합니다.</li>
														<li>예치금으로만 결제할 경우, 결제금액이 0으로 보여지는 것은 정상이며 [결제하기] 버튼을
															누르면 주문이 완료됩니다.</li>
														<li>현금환불요청 예치금이 있을 경우, 현금환불요청 예치금을 차감한 금액만 사용할 수 있으며,
															예치금 환불요청을 취소하시면 전액 사용 가능합니다.</li>
													</ul>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- 결제수단 -->
						<div class="title"></div>
						<div class="payArea">
							<div class="payment">
								<a
									href="https://www.slowand.com/product/slowmade-히트-터틀넥티셔츠-속기모-8-color/3606/category/1/display/3/"
									rel="109" class="nivohref nivo-imageLink"><img
									src="//app-storage-edge-008.cafe24.com/photoslide2/anne2173/2019/11/13/8bb83821f4f22b52fdfbbdd9c6f4de46.jpg"
									intrinsicsize="897 x 400" alt="" title="" border="0" style="width:897px;height:325px;"></a>
							</div>
							<!-- 최종결제금액 -->
							<div class="total" style="border: 1px solid #ddd">           
								<h4>
									<strong id="current_pay_name">무통장 입금</strong> <span>최종결제
										금액</span>
								</h4>
								<p class="price">
									<span></span><input id="total_price" name="total_price"
										fw-filter="isFill" fw-label="결제금액" fw-msg=""
										class="inputTypeText" placeholder=""
										style="text-align: right; ime-mode: disabled; clear: none; border: 0px; float: none;"
										size="10" readonly="1" value="96900" type="text" /><span>원</span>
								</p>
								<p class="paymentAgree" id="chk_purchase_agreement">
									<input id="chk_purchase_agreement0"
										name="chk_purchase_agreement" fw-filter="" fw-label="구매진행 동의"
										fw-msg="" value="T" type="checkbox" /><label
										for="chk_purchase_agreement0">결제정보를 확인하였으며, 구매진행에 동의합니다.</label>
								</p>     
								<div class="button">
									<a href="#none" class="yg_btn_140" id="btn_payment"
										style="width: 330px;" alt="결제하기">결제하기</a>
								</div>
								<div class="mileage ">
									<dl class="ec-base-desc gLarge right">
										<dt>
											<strong>총 적립예정금액</strong>
										</dt>
										<dd id="mAllMileageSum" class="txtWarn">5,814원</dd>
									</dl>
									<dl class="ec-base-desc gLarge right">
										<dt>상품별 적립금</dt>
										<dd id="mProductMileage">1,938원원</dd>
										<dt>회원 적립금</dt>
										<dd id="mMemberMileage">3,876원</dd>
										<dt>쿠폰 적립금</dt>
										<dd id="mCouponMileage">0원</dd>
									</dl>
								</div>
							</div>
						</div>
						<!-- 무이자 할부 이용안내 -->
						<div class="ec-base-help">       
							<h3>무이자 할부 이용안내</h3>
							<div class="inner">
								<ul>
									<li>무이자할부가 적용되지 않은 상품과 무이자할부가 가능한 상품을 동시에 구매할 경우 전체 주문 상품
										금액에 대해 무이자할부가 적용되지 않습니다.</li>
									<li>무이자할부를 원하시는 경우 장바구니에서 무이자할부 상품만 선택하여 주문하여 주시기 바랍니다.</li>
								</ul>
							</div>
						</div>
						<!-- 이용안내 -->
						<div class="ec-base-help">
							<h3>이용안내</h3>
							<div class="inner">
								<h4>WindowXP 서비스팩2를 설치하신후 결제가 정상적인 단계로 처리되지 않는경우, 아래의 절차에
									따라 해결하시기 바랍니다.</h4>
								<ol>
									<li class="item1"><a href="javascript:;"
										onClick="window.open('https://service-api.echosting.cafe24.com/shop/notice_XP_ActiveX.html','','width=795,height=500,scrollbars=yes',resizable=1);">안심클릭
											결제모듈이 설치되지 않은 경우 ActiveX 수동설치</a></li>
									<li class="item2"><a
										href="http://www.microsoft.com/korea/windowsxp/sp2/default.asp"
										target="_blank">Service Pack 2에 대한 Microsoft사의 상세안내 </a></li>
									<li class="item3"></li>
								</ol>
								<!-- 크로스 브라우징 지원 -->
								<div class="">
									<h4>아래의 쇼핑몰일 경우에는 모든 브라우저 사용이 가능합니다.</h4>
									<ol>
										<li class="item1"><strong>KG이니시스, KCP, LG U+를
												사용하는 쇼핑몰일 경우</strong></li>
										<li class="item2">결제가능브라우저 : 크롬,파이어폭스,사파리,오페라 브라우저에서 결제
											가능<br />(단, window os 사용자에 한하며 리눅스/mac os 사용자는 사용불가)
										</li>
										<li class="item3">최초 결제 시도시에는 플러그인을 추가 설치 후 반드시 브라우저 종료 후
											재시작해야만 결제가 가능합니다.<br />(무통장, 휴대폰결제 포함)
										</li>
									</ol>
								</div>
								<h4>세금계산서 발행 안내</h4>
								<ol>
									<li class="item1">부가가치세법 제 54조에 의거하여 세금계산서는 배송완료일로부터 다음달
										10일까지만 요청하실 수 있습니다.</li>
									<li class="item2">세금계산서는 사업자만 신청하실 수 있습니다.</li>
									<li class="item3">배송이 완료된 주문에 한하여 세금계산서 발행신청이 가능합니다.</li>
									<li class="item4">[세금계산서 신청]버튼을 눌러 세금계산서 신청양식을 작성한 후 팩스로
										사업자등록증사본을 보내셔야 세금계산서 발생이 가능합니다.</li>
									<li class="item5">[세금계산서 인쇄]버튼을 누르면 발행된 세금계산서를 인쇄하실 수
										있습니다.</li>
								</ol>
								<h4>부가가치세법 변경에 따른 신용카드매출전표 및 세금계산서 변경안내</h4>
								<ol>
									<li class="item1">변경된 부가가치세법에 의거, 2004.7.1 이후 신용카드로 결제하신
										주문에 대해서는 세금계산서 발행이 불가하며</li>
									<li class="item2">신용카드매출전표로 부가가치세 신고를 하셔야 합니다.(부가가치세법 시행령
										57조)</li>
									<li class="item3">상기 부가가치세법 변경내용에 따라 신용카드 이외의 결제건에 대해서만
										세금계산서 발행이 가능함을 양지하여 주시기 바랍니다.</li>
								</ol>
								<h4>현금영수증 이용안내</h4>
								<ol>
									<li class="item1">현금영수증은 1원 이상의 현금성거래(무통장입금, 실시간계좌이체,
										에스크로, 예치금)에 대해 발행이 됩니다.</li>
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

						<!-- //결제진행바 -->
					</div>
				</form>
			</div>
			<hr class="layout" />
		</div>
		<hr class="layout" />
		<!-- 하단 -->

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
	</div>
	<hr class="layout" />
	<!-- 참고: 결제를 위한 필수 영역 -->
	<div id="progressPaybar" style="display: none;">
		<div id="progressPaybarBackground" class="layerProgress"></div>
		<div id="progressPaybarView">
			<div class="box">
				<p class="graph">
					<span><img
						src="//img.echosting.cafe24.com/skin/base_ko_KR/layout/txt_progress.gif"
						alt="현재 결제가 진행중입니다." /></span> <span><img
						src="//img.echosting.cafe24.com/skin/base/layout/img_loading.gif"
						alt="" /></span>
				</p>
				<p class="txt">
					본 결제 창은 결제완료 후 자동으로 닫히며,결제 진행 중에 본 결제 창을 닫으시면<br /> 주문이 되지 않으니 결제
					완료 될 때 까지 닫지 마시기 바랍니다.
				</p>
			</div>
		</div>
	</div>
	<!-- //참고 -->



</body>
</html>
<!-- Enliple Common Tracker v3.5 [공용] start -->

<script
	src="https://cdn.megadata.co.kr/js/en_script/3.5/enliple_min3.5.js"
	defer="defer" onload="mobRf()"></script>
<!-- Enliple Common Tracker v3.5 [공용] end -->
