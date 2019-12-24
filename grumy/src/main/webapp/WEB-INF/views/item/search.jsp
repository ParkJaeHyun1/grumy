<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<!--PG크로스브라우징필수내용 끝-->
<!--해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!--해당 CSS는 쇼핑몰 전체 슬라이드 배너에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. -->
<script type="text/javascript" src="/ec-js/common.js"></script>
<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="/yangji/js/jquery.bxslider.min.js"></script>
<link rel="stylesheet"
	href="//slowand.com////maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />
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
					<link rel="canonical" href="http://slowand.com/product/search.html" />
					<link rel="alternate"
						href="http://m.slowand.com/product/search.html" />
					<meta property="og:url"
						content="http://slowand.com/product/search.html" />
					<meta property="og:title" content="슬로우앤드" />
					<meta property="og:description"
						content="20대 여성의류쇼핑몰, 데일리룩, 캠퍼스룩, 원피스, 스커트, 악세사리 등" />
					<meta property="og:site_name" content="슬로우앤드" />
					<meta property="og:type" content="website" />
					<link rel="shortcut icon"
						href="//slowand.com///web/upload/favicon_20170717165926.ico" />
					<script type="text/javascript"
						src="//slowand.com///app/Eclog/js/cid.generate.js?vs=3d0b473968a0ec4ec41e3bf59df3aa51"></script>
					<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>

					<script type='text/javascript'>
						var EC_FRONT_EXTERNAL_SCRIPT_VARIABLE_DATA = {
							"common_member_id_crypt" : ""
						};
					</script>

					<script type="text/javascript">
						function delete1(itemNo, type) {

							if (confirm("해당 상품을 삭제하시겠습니까?") == true) { //확인

								var url = "${pageContext.request.contextPath}/item/delete";
								url += "?itemNo=" + itemNo;
								url += "&type=" + type;
								location.href = url;

							}

						}
					</script>

					<link rel="stylesheet" type="text/css"
						href="//slowand.com//ind-script/optimizer.php?filename=tZVBbsMgEEX3drY9xyhppe676Kqr5ARjPLFJgHEYkJLbFyVulciqVBFYgua_gQ98YGRLsN54mDwPHi14Eo5eESgR2Ht2ARRby26VJl7gP_WkGmETg2bXdHzOFMYQcpsavJDPkwbsDP0hxWmC3cgTbO8Zn1dGqumjChlKIfRqvBOSaqOQF0DnaLN-f4UpdkardgzWgPTU9iR6cCBH7d6uJJuaG_pZxIxs9-xtPjeZyDFAh6LVtcniGjwLvE0UBKaDTANqoq4ADcwm6KkCeSRTA7u8ksXIOGiHgWq4jF0F6iJMioEf4q2gCaaGualK5WMv6IaDvuVmCq4ioMMpkr-surMY3T9kdj7zCwMXAe3QSZFcng-EfdriB8qRguL4jINL9vzYt6TI1Xjyv1_qNw&type=css&k=b7aa17f270a2c64f536613864c4b4f7c08e8f416&t=1547093551" />
					<link rel="stylesheet" type="text/css"
						href="//slowand.com///ind-script/optimizer.php?filename=rY7BDQIxDAQLOL7UYR0gUQgVmMQkhsSO4gSU7jmODuA--9nd0UDUTEBu6kbVAEXoMJ-PUPo1sZtiywnM0-TJOAjYg-UEzgyy-p4IEg7tDXJPjS1quUQuhSXsls0etoE7lefyZ5XifucOlHDnFR8JPdVNFbFR0Do20buptn_0sBQDFmsYKuYX-0BtreZvfshv&type=css&k=a657dc189b9b8bbc03db761fe930ee0ea776ae32&t=1566806466" />
					<style type="text/css">
</style>
					<title>슬로우앤드</title>
					<meta name="path_role" content="PRODUCT_SEARCH" />
					<meta name="author" content="슬로우앤드" />
					<meta name="description"
						content="20대 여성의류 베이직쇼핑몰, 데일리룩, 캠퍼스룩, 원피스, 스커트, 악세사리, 니트, 가디건, 등" />
					<meta name="keywords"
						content="20대 여성의류 베이직쇼핑몰, 데일리룩, 캠퍼스룩, 원피스, 스커트, 악세사리, 니트, 가디건, 등" />
					<style>
.xans-search-form .searchbox #keyword {
	width: 222px;
}

.xans-search-form .searchbox .button input {
	width: 120px;
	height: 105px;
	border-radius: 3px;
	font-size: 17px;
}

.xans-search-form .searchbox #category_no, .xans-search-form .searchbox #order_by
	{
	width: 365px;
}

.xans-search-form .searchbox #col, .xans-search-form .searchbox #order_by
	{
	width: 365px;
}

.xans-search-form .searchbox #product_price1, .xans-search-form .searchbox #product_price2
	{
	width: 200px;
}

.xans-search-form .searchbox .item input {
	width: 158px;
}
</style>
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

		<div id="container">
			<div id="contents">


				<div class="titleArea">
					<h2>SEARCH</h2>
					<h3>상품검색</h3>
				</div>

				<!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
				<form id="searchForm" name="search"
					action="${pageContext.request.contextPath}/item/search"
					method="get" target="_self" enctype="multipart/form-data">

					<div class="xans-element- xans-search xans-search-form ">
						<div class="ec-base-box searchbox">
							<fieldset>
								<legend>상품 검색</legend>
								<div class="item">
									<strong>상품분류</strong> <select id="type" name="type"
										fw-filter="" fw-label="" fw-msg="" style="width: 364px">
										<option value="SearchTotal"
											<c:if test="${type=='SearchTotal'}">selected</c:if>>전체
											카테고리</option>
										<c:forEach var="dto" items="${AlltypeList}">
											<option value="${dto.parentType}"
												<c:if test="${type == dto.parentType}">
												selected
												</c:if>>
												${dto.parentType}</option>
										</c:forEach>
									</select>
								</div>
								<div class="item">
									<strong>검색조건</strong> <select id="search_type"
										name="search_type" fw-filter="" fw-label="상품검색" fw-msg="">
										<option value="title"
											<c:if test="${search_type =='title'}">selected</c:if>>상품명</option>
										<c:if
											test="${not empty sessionScope.id && sessionScope.grade == 'A' }">
											<option value="itemNo"
												<c:if test="${search_type =='itemNo'}">selected</c:if>>상품
												번호</option>
										</c:if>
									</select> <input id="keyword" name="keyword" fw-filter=""
										fw-label="상품명/제조사" fw-msg="" class="inputTypeText" size="15"
										value="${param.keyword}" type="text" />
								</div>


								<div class="item">
									<strong>판매가격대</strong> <input id="price1" name="price1"
										fw-filter="isNumber" fw-label="최소판매가격" fw-msg=""
										class="input01" size="15" value="${param.price1}" type="text" />
									~ <input id="price2" name="price2" fw-filter="isNumber"
										fw-label="최대판매가격" fw-msg="" class="input01" size="15"
										value="${param.price2}" type="text" />
										 <input type="hidden" name="orderby" id="orderby" />

								</div>

								<p class="button">
									<input type="submit" value="search" alt="검색" />
								</p>
							</fieldset>
						</div>
						<c:if
							test="${not empty sessionScope.id && sessionScope.grade == 'A' }">
							<p align="right">
								<button class="yg_btn_28 yg_btn3" style="float: rigth"
									onclick="location.href='${pageContext.request.contextPath}/item/createForm'">상품등록</button>
							</p> &nbsp;       
			
			</c:if>
						<div class="searchResult">

							<c:choose>
								<c:when test="${empty searchlist}">
							        
							    </c:when>
								<c:otherwise>
								<p class="record">
									TOTAL <strong>${SearchTotal}</strong> ITEMS
								</p>
								  </c:otherwise>
							</c:choose>
	             
							<ul
								class="xans-element- xans-search xans-search-orderby listType">
								<li class="xans-record-" onclick="setOrderBy('itemNo')">신상품</li>
							<li class="xans-record-" onclick="setOrderBy('price')">높은가격</li>
							<li class="xans-record-" onclick="setOrderBy('orderCount')">인기상품</li>
							<li class="xans-record-" onclick="setOrderBy('reviewCount')">리뷰</li>
							</ul>
						</div>        
						<c:if test="${empty searchlist}">                      
							<div class="noData">           
								<strong class="warning">검색결과가 없습니다.</strong> <strong>정확한
									검색어 인지 확인하시고 다시 검색해 주세요.</strong>
								<ul>
									<li>검색어/제외검색어의 입력이 정확한지 확인해 보세요.</li>
									<li>두 단어 이상의 검색어인 경우, 띄어쓰기를 확인해 보세요.</li>
									<li>검색 옵션을 다시 확인해 보세요.</li>
								</ul>
							</div>
						</c:if>
					</div>

				</form>
				<!-- //참고 -->

				<div
					class="xans-element- xans-search xans-search-result ec-base-product">
					<ul class="prdList grid4">
						<c:forEach var="dto" items="${searchlist}">
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
												onclick="Flocation.href='${pageContext.request.contextPath}/item/updateForm?itemNo=${dto.itemNo}'">상품수정</button>
											&nbsp;
											<button class="yg_btn_28 yg_btn3"
												onclick="javascript:delete1('${dto.itemNo}', '${parentType}')">상품삭제</button>

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

				${paging }
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
			</div>
			<hr class="layout" />
		</div>
		<hr class="layout" />
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


	<!-- External Script Start -->

	<!-- fbe -->
	<!-- CMC script -->
	<div id="fbe_common_top_script" style="display: none;">
		<!-- Facebook Pixel Code -->
		<script>
			!function(f, b, e, v, n, t, s) {
				if (f.fbq)
					return;
				n = f.fbq = function() {
					n.callMethod ? n.callMethod.apply(n, arguments) : n.queue
							.push(arguments)
				};
				if (!f._fbq)
					f._fbq = n;
				n.push = n;
				n.loaded = !0;
				n.version = '2.0';
				n.agent = 'plcafe24_kr';
				n.queue = [];
				t = b.createElement(e);
				t.async = !0;
				t.src = v;
				s = b.getElementsByTagName(e)[0];
				s.parentNode.insertBefore(t, s)
			}(window, document, 'script',
					'https://connect.facebook.net/en_US/fbevents.js');
			fbq('init', '183242402324052');
			fbq('track', 'PageView');
		</script>
		<noscript>
			<img height="1" width="1" style="display: none"
				src="https://www.facebook.com/tr?id=183242402324052&ev=PageView&noscript=1" />
		</noscript>
		<!-- End Facebook Pixel Code -->
	</div>
	<!-- CMC script -->
	<!-- CMC script -->
	<div id="fbe_search_script" style="display: none;"></div>
	<!-- CMC script -->
	<!-- External Script End -->

	<script type="text/javascript"
		src="//slowand.com/ind-script/i18n.php?lang=ko_KR&domain=front&v=1912131093"
		charset="utf-8"></script>

	<script type="text/javascript"
		src="/ind-script/optimizer.php?filename=tZXNbtswDMdfwNc9h5Bhh51boKcNAzb0AWiJtplQokpJbbOnH5N1Q7PNSQ0v8EEAwd-fEr_sJonoNu_VDQoRn0R3TrFIU49uWxxtPqZuW965c36NMvid2z401P3Lsek-2HdCZpXR4BP9kpVSHS47BvEtYqp3ovFWUlVhRr3MDWrO7hmSvSVV1KxYF3IVY2ao-G8IcnafpSdG9_UV7yVGSa5V4kVclNDMVJ4oLws4tOQrWUjzC83XLoquVDhzCabe3f8s-2sJhu97FgiLoNgqHOJ-6Qvq41xxZuAsvB-I-a0VDThA43pIQYmg9QZS-jPkxRbHZ-uhBFxeDF0_0hFaq-NFdrRaJZBNSrGMlrVKCIXSuFYlYoUAFea78UZAw0ldzdr1B-s89G2SfMLcHSt8e5y8-7ODN4MWBPXTov6rMAz2Qlq6JTO3kWy5PAKT5Ub0V7J-G1YLHuqQQvlb2BSyNQdeL8KEnPGKL5ggBb5mAFtDZHW9mr6trPof7s_iwbb4Ti6vv5m-estA2b9vFN1_olIN_gE&type=js&k=81cead6b99ffa3a78f6503851e2d2fd76af38afb&t=1576446266"></script>
	<script type="text/javascript"
		src="/ind-script/optimizer.php?filename=rZRNTsMwEIUPULacw4IbkBSkSoVWjWA_dYZkGv8xdgi5PaGNUCvRijpe2PJYfp-fPR6L2moUd_csHNuKQQtwThS1dWKD3rYsUey8eGJrgnjB7qet2ZatDCsXyJoCFcpws_O3Ih61JB-H2H20yP0gtSbWwkqZJkp7OL94_AoMe9A-3oeFVaVtQ2rsmkliauhCQ5UcOifvFPQUUCdELwZcQaZSeHh1FJn1i8Z5AGfgG5yUvl9qbrWeZvMIZXwSUEamTAKaQ4AkoDdQVML5hCraildyIJsTYN4yo5G98MNWM3e-PP6ll2M0e7esIUx1kgrTBlIT_9eH-FpZUoMiY9t55BxkjfGUCaVwpB-PdDVm1Ik5BiAlstaUCodJbaPvZoOfhF0A1YzD3LbmgrNnMMNfewLrcKts9beEj9bVQSs0gQKhv2oD8L2Rhz5ap1FvkQf5Nw&type=js&k=31e59bfbe9edf80708bcfac639f1237cfd2c3914&t=1573420409"></script>
	<script type="text/javascript"
		src="/ind-script/optimizer.php?filename=rZTBTgMhEIYfYHv1OUiriWetiR62sWlNPE9h3J0uMMhAm317t2sPvQpeCAmZj_8f_kH17FAtV1GFyF0EpyAEtQEPHaodCueoUR1FgYxe_66L92gwap8WR7lTJYBnkAFTPSFE0ljJ2EY2WZcrWXMO7Gu8bMjidF5c_4KBhcrv_yTpW5I6gOZc0YKIGivKd3P5Byew6yodc7LLA4Uev6g21C2MFRpeI5jyKD3lxA4S6Rmz7_lcnupsE2055FCOGFsa8DqgdQ_b0gkt-YF9XTbepjnhOJaKCZD6yBabE1gyMKHKHTGYPxWHgo9OzgsN1t7mEXWTBeMkxntcLR_vVcgHS7rpk7NKDDYGhTqvZCD_cIG46V6LysLIOSkNCbuphcXEK-cAQvqCnzc1-jQ7d5uLWoffmfTQnAjP_8d0l2mSnsO-pxDId5WGRexE-AE&type=js&k=e07740b161a7307da8dfa3f8b8d98779b103f95f&t=1573420409"></script>
	<script type="text/javascript">
		function setOrderBy(val){
			$('#orderby').val(val);
			$('#searchForm').submit();
		}
	</script>
</body>
</html>
<!-- Enliple Common Tracker v3.5 [공용] start -->
<script type="text/javascript">
<!--
	function mobRf() {
		var rf = new EN();
		rf.setData("userid", "slowand");
		rf.setSSL(true);
		rf.sendRf();
	}
//-->
</script>
<script
	src="https://cdn.megadata.co.kr/js/en_script/3.5/enliple_min3.5.js"
	defer="defer" onload="mobRf()"></script>
<!-- Enliple Common Tracker v3.5 [공용] end -->