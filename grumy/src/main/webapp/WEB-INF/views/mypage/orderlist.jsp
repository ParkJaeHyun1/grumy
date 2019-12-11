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

		<div class="mypage_top_outer">
			<p
				class="xans-element- xans-myshop xans-myshop-asyncbenefit mypage_top ">
				<strong> <span><span class="xans-member-var-name">${dto.name }</span></span>
				</strong> 님은 현재
				<c:choose>
					<c:when test="${dto.grade == 'H' }">
						<strong> <span class="xans-member-var-group_name">일반
								회원</span> <span class="myshop_benefit_ship_free_message"></span>
						</strong>
					</c:when>
					<c:when test="${dto.grade == 'A' }">
						<strong> <span class="xans-member-var-group_name">관리자</span>
							<span class="myshop_benefit_ship_free_message"></span>
						</strong>
					</c:when>
					<c:when test="${dto.grade == 'S' }">
						<strong> <span class="xans-member-var-group_name">VIP</span>
							<span class="myshop_benefit_ship_free_message"></span>
						</strong>
					</c:when>
				</c:choose>
				입니다.
			</p>

			<div class="xans-element- xans-myshop xans-myshop-bankbook ">
				<ul>


					<li><strong class="title"> <a
							href="/myshop/mileage/historyList.html">POINT</a>
					</strong> <strong class="data"> <a
							href="/myshop/mileage/historyList.html">${dto.point }원</a>
					</strong></li>

					<li class="etc "><strong class="title"> <a
							href="/myshop/coupon/coupon.html">COUPON</a></strong> <strong class="data">
							<a href="/myshop/coupon/coupon.html">5<span>개</span></a>
					</strong> <a
						href="${pageContext.request.contextPath}/myshop/coupon/coupon.html"></a>
					</li>
				</ul>
			</div>
		</div>

		<div id="myshopMain"
			class="xans-element- xans-myshop xans-myshop-main">
			<div class="shopMain order">
				<a href="/myshop/order/list.html">주문내역</a>
			</div>
			<div class="shopMain wishlist">
				<a href="/myshop/wish_list.html">관심상품</a>
			</div>
			<div class="shopMain likeIt displaynone">
				<a href="">좋아요</a>
			</div>
			<div class="shopMain mileage">
				<a href="/myshop/mileage/historyList.html">적립금</a>
			</div>
			<div class="shopMain coupon  ">
				<a href="/myshop/coupon/coupon.html">쿠폰</a>
			</div>
			<div class="shopMain view">
				<a href="/product/recent_view_product.html">최근 본 상품</a>
			</div>
			<div class="shopMain deposits displaynone ">
				<a href="/myshop/deposits/historyList.html">예치금</a>
			</div>
			<div class="shopMain board">
				<a href="/myshop/board_list.html">내가 쓴 게시글</a>
			</div>
			<div class="shopMain address">
				<a href="/myshop/addr/list.html">배송 주소록 관리</a>
			</div>
			<div class="shopMain profile">
				<a href="${pageContext.request.contextPath}/member/update">회원 정보
					수정</a>
			</div>

		</div>


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
						<th style=width:135px>ORDER DATE<br>[ORDER NO]</th>
						<th style=width:93px>IMAGE</th>
						<th style=width:auto>PRODUCT NAME</th>
						<th style=width:61px>QTY</th>
						<th style=width:130px>PRICE</th>
						<th style=width:130px>ORDER STATE</th>
					</tr>
				</thead>
				
			
			</table>

		</div>
	</div>
</div>