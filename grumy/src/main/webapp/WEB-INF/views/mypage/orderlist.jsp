<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="util" uri="/ELFunctions"%>

<link rel="stylesheet" type="text/css"
	href="//slowand.com//ind-script/optimizer.php?filename=tZSxbgMhDIb3XNY-h5WkUvfOndonMODekQC-YlMlb1-UZEh0S3V3jCD8IX_gHwaOBLt9hjFznzFCJuGSLYEVge_MScFyjJy2deMF_nOe7EY4FPWcNobPMwuL6txLA14ozytVNIEeSsl2RSgLYEq0370dYCwmeNsNGgOIo86R-D6BnHx6vUIjuxIIIkVDGcroUIl-KWng_qmjxWxyXufzqiUuCgbF2yu8eqgLmuhbyp38n6XA20aDzotvAFXmoH5sQB4otMDWUXHFtvA7Yu9THYcWltE0oE5SaDXwUy6uKCG0kFtP2fnYC6b-6G-BW_N2FdDxp1C-bM1ZgndL0uqB-YHKq4C-MMkqOX9_EM61xXeUE6nlssTglH0f9k-ydAP_AQ&amp;type=css&amp;k=d10885102131af326f4b320a0f26c1908e505ea4&amp;t=1547093551">
<link rel="stylesheet" type="text/css"
	href="//slowand.com//ind-script/optimizer.php?filename=rZHbDcIwDEUHKL_MYfGQGIQJ3MQkpokd1Qmo29OWDSA__vH10bkyRM0E5IZmNBugCJ1PtwuUNiZ2Q6w5gXkaPBkHAZtYruDMIKtviSDhoq1CbqmyRS33yKWwhMOaOUIfuFN5rfesUtzv3AUlPHnHR0JPc1dFrBR0XrroPVTrP3pYigGLVQwz5jf7QHVfnb6zS_G8bO-GEWUaVaeezIwsG-8D&amp;type=css&amp;k=f53659961fbe6a5f77148b697e8faa567b7da93b&amp;t=1566806466">


<div id="container">

	<div id="contents">

		<div class="titleArea">
			<h2>ORDER LIST</h2>
			<h3>주문내역</h3>
		</div>

		<div
			class="xans-element- xans-myshop xans-myshop-orderhistorylistitem ec-base-table typeList">

			<div class="title">
				<h3>주문 상품 정보</h3>
			</div>

			<table border="1" summary>
				<thead>
					<tr>
						<th style="width: 135px">ORDER DATE<br>[ORDER NO]
						</th>
						<th style="width: 93px">IMAGE</th>
						<th style="width: auto">PRODUCT NAME</th>
						<th style="width: 61px">QTY</th>
						<th style="width: 130px">PRICE</th>
						<th style="width: 130px">ORDER STATE</th>
					</tr>
				</thead>
				<tbody class="center">
					<c:choose>
						<c:when test="${empty list }">
							<tr style="align-content: center">
								<td colspan="6"><p class="message">주문 내역이 없습니다.</p></td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="list" items="${list}">
								<c:forEach var="list2" items="${list.orderItemList }">
									<tr class="xans-record-">
										<td class="number">${list.odate}<div>${list.orderNo }</div></td>
										<td class="thumb"><a
											href="${pageContext.request.contextPath }/item/read?itemNo=${list2.itemNo}"><img
												style="width: 80px; height: 106px;"
												src="${pageContext.request.contextPath}/images/${list2.itemImage }"></a></td>
										<td class="product left top"><a
											href="${pageContext.request.contextPath }/item/read?itemNo=${list2.itemNo}">${list2.itemTitle }</a>
											<div>[옵션:${list2.itemColor }/${list2.itemSize }]</div></td>
										<td>${list2.count }</td>
										<td>${list2.itemPrice }</td>
										<td class="state">${list2.state }
											<div>
												<a href="${pageContext.request.contextPath }/review/create?itemNo=${list2.itemNo}"
													class="yg_btn_80 yg_btn1 crema-new-review-link crema-applied"
													
													alt="구매후기">구매후기</a>
											</div>
										</td>
								</c:forEach>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>


			</table>

		</div>
		${paging }
	</div>
</div>