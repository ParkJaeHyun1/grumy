<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="naver-site-verification"
	content="cdc66033ac54c3c0175fba92d71c46317e5c78e1" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />


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
					<span>${type}</span><BR></BR>
				</h2>
				<%-- 				<c:forEach var="dto" items="${list}"> --%>
				<%-- 					<c:forEach var="image" items="${dto.colorList}"> --%>
				<!-- 						<span style="background-color: #FFFFFF" class="chips xans-record-"></span> -->
				<%-- 					</c:forEach> --%>


				<%-- 				</c:forEach> --%>
			</div>

			<ul class="prdList grid4">
				<c:forEach var="dto" items="${list}">
					<li id="anchorBoxId_2065" class="xans-record-">
						<div class="thumbnail">
							<a
								href="${pageContext.request.contextPath}/item/read?no=${dto.no}"
								name="anchorBoxName_2065"><img
								src="${pageContext.request.contextPath}/images/${dto.image}"
								id="eListPrdImage2065_4"
								alt="[1만장돌파] #SLOWMADE. 여리핏 터틀넥티셔츠 - 7 color" /></a>
						</div>
						<div class="description">
							<strong class="name"><a
								href="${pageContext.request.contextPath}/item/read?no=${dto.no}"
								class=""><span class="title displaynone"></span> <span
									style="font-size: 12px; color: #555555;">${dto.title}</span></a></strong>

							<div class="colorchip ">
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

								<li class=" xans-record-"><strong class="title displaynone"><span
										style="font-size: 12px; color: #555555;"></span> :</strong> <span
									style="font-size: 12px; color: #555555;">${dto.description}</span></li>
							</ul>
						</div>
					</li>


				</c:forEach>
			</ul>
		</div>
	</div>

	<script>
		$('.ec-base-product .prdList > li')
				.each(
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
</body>
</html>

