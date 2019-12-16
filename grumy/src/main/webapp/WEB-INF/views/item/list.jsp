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
<!-- 얘때문에 로고가 깨짐 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/css/bootstrap.min.css"
	integrity="sha384-SI27wrMjH3ZZ89r4o+fGIJtnzkAnFs3E4qz9DIYioCQ5l9Rd/7UAa8DHcaL8jkWt"
	crossorigin="anonymous">

	<link rel="stylesheet" type="text/css"
		href="https://www.slowand.com/ind-script/optimizer.php?filename=tZXPbsMgDMbv6a57DivtpD0Pf9yEjmCGjdq8_SjtYVUvWwoXJAz-Jf4sf8BMC8K4TxATTUktkJApJ4NgmOGYKAgYWhYKbyXwDn-

5j2Zg8lkchUHTZWNiFtn6Ua9WTNtSRWmPv1LR7DJjYlAh4H78PEDM2juzm2XxwBZ3FtlNAfjLhQ9YVZhOrrJnVPbhL_6JujIWstkjlHoolz4owYnSup2pYmSIMwmxdxb3NXxfmxStrxmpCepIJK-

gaq0usKhr38_OTij1aLytXVQ8bKfem6wVO1MFeBq7V4G3QENgGZyywSG7DlAh8uJiB_KMvge2OIzNpoe-

UU0ulOHvobLSHahP5t0M_PCcNBTB9xC33DKNvDBIE9DpO2N5QPSlOld11x8&type=css&k=dda47177a62c2ed097a4e997d8e506b783c567e7&t=1566806466" />
	<link rel="stylesheet" type="text/css"
		href="https://www.slowand.com/ind-script/optimizer.php?filename=rc49DsIwDAXgvWXlHBY_EjszEz1B6litaWpHcYLU25MiTkC7-

cl6nw2jzgSEbTFKBk6EzqfbBWLpA2M75jmAeWo9GQ8CNrFcYXEyvBjQDB4u66EOR9gIdU7sf2gVZvUlEAS3aMmgyVO6O5sooxbJe9ox1Yj5SUhb4J_WO2P8XiFsaqCmLijt-

fBcQmYbNXYjx8gy7Imjyrv2WSXi6n4A&type=css&k=9cab3c762c992913864605f00b0a184752d883c5&t=1543392667" />
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/js/bootstrap.min.js"
		integrity="sha384-3qaqj0lc6sV/qpzrc1N5DC6i1VRn/HyX4qdPaiEFbn54VjQBEU341pvjz7Dv3n6P"
		crossorigin="anonymous"></script>
	<script src="./jquery-3.4.1.min.js"></script>
	<link rel="stylesheet" href="./bootstrapt/css/bootstrap.min.css" />
	<link rel="stylesheet" href="./bootstrapt/css/bootstrap.css" />
	<script src="./bootstrapt/js/bootstrap.min.js"></script>
<script>
	function itemCountUp(itemOptionNo) {
		updateItemCount(itemOptionNo, count + 1);
	}
	function itemCountDown(itemOptionNo) {
		updateItemCount(itemOptionNo, count - 1);
	}
	function itemCountModify(itemOptionNo, cnt) {
		updateItemCount(itemOptionNo, cnt);
	}
	function updateItemCount(itemOptionNo, cnt) {
		if (!$.isNumeric(cnt) || cnt < 1) {
			alert('품절 표시를 해주세요');
			$('#item_count_' + itemOptionNo).val(count);
			return false;
		} else if (cnt > list['itemOptionNo' + itemOptionNo].itemCount) {
			alert('재고가 부족합니다.');
			$('#item_count_' + itemOptionNo).val(count);
			return false;
		}
		updateItemCountAjax(itemOptionNo, cnt);
		return true;
	}
	function updateItemCountAjax(itemOptionNo, cnt) {
		alert('3333');
		$.ajax({
			type : 'put',
			url : "./update",
			data : JSON.stringify({
				"itemOptionNo" : itemOptionNo,
				"count" : cnt
			}),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				alert('성공');
				count = cnt;
				setView();
			},
			error : function(xhr, status, er) {
				alert('에러:' + status);
			}
		});
	}
</script>
<style type="">           

</style>
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
			<div id="contents">
				<div class="title">
					<h2>
						<span>${parentType}</span><BR></BR>         
					</h2>
					<%-- 				<c:forEach var="dto" items="${list}"> --%>
					<%-- 					<c:forEach var="image" items="${dto.colorList}"> --%>
					<!-- 						<span style="background-color: #FFFFFF" class="chips xans-record-"></span> -->
					<%-- 					</c:forEach> --%>


					<%-- 				</c:forEach> --%>
				</div>


				<ul class="menuCategory">
					<%-- <c:forEach var="subType" items="${dto.typeList}"> --%>
					<!-- <li style="display:;" class="xans-element- xans-product xans-product-displaycategory  xans-record-"> -->
					<%-- <a href=""><span class="count displaynone">${subType}</span></a> --%>
					<!-- </li> -->
					<%-- </c:forEach> --%>

					<!-- //참고 -->
				</ul>
			</div>
			<c:if
				test="${not empty sessionScope.id && sessionScope.grade == 'A' }">
				<p align="right">
					<button class="yg_btn_28 yg_btn3" style="float: rigth"
						onclick="location.href='${pageContext.request.contextPath}/item/create'">상품등록</button>
					&nbsp;
				</p>
				<br></br>
			</c:if>
			<ul class="prdList grid4">

				<c:forEach var="dto" items="${list}">
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

	${paging }
</body>
</html>

