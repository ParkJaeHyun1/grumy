<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="util" uri="/ELFunctions"%>

<link rel="stylesheet" type="text/css" href="https://www.slowand.com//ind-script/optimizer.php?filename=tZXBbsMgDIbvSa97DqvdpN133ml9AkK8hBYww0Zq3n40raZ1uUwJHLHsz_CDf2Akh7A_RAiRhqgcRGRKUSNoZviM5AU0OUd-lwNP8J981A2TTWLINx1dVhYmkbVNrZowrisV1Vn8VYq6TYyRQXmPh_3rM4TUWaPbUZwF7rHtkc3ggc_Gv8xQR32yCG7ikQJQ7DEeRckGaj4PJYFOsdFzi8WNbAXeAgWBWdO8wCaZClAhsmJCBfKItgY2P74-6Rr6BjUYX_Zx_aisugrUxVwXAz84TUERbA1xc5Zej52UH07mZmHZwYqATl8J47TrLmxN_2Cf65nvSqgI6Kg8F3Hl-4XMrvym-IyiKW1RcMm-D_sHavQ1Rv7v77Z5wy5lN71-VsfRhGD8cIV_Aw&type=css&k=1f61d62c8789295c816097742733fafb47f1b9da&t=1547093551" />
<link rel="stylesheet" type="text/css" href="https://www.slowand.com//ind-script/optimizer.php?filename=rY9BDsIwDAQfUK68wyog8R43MYlpYkdxCsrvKeXKCXrZy2pHsxA1E5AbFqNqgCJ0Gq9nKMuU2A2x5QTmafBkHARsZrmAM4OsfkkECbsuDZzKY92zSnGHtT7CL9yOEu684SOhp_o76osiNgpa-y56N9X2jx6WYsBiDUPF_GQfqG3V-MldjuduUQtMKPOkOu_JzMjy5r0A&type=css&k=73263e05083d6bf49dd063c0dd9c81dd389a26c9&t=1566806466" />


<div id="container">
	<div id="contents">
		<div class="titleArea">
			<h2>MY SHOPPING</h2>
			<h3>마이 쇼핑</h3>
		</div>
		<div class="xans-element- xans-myshop xans-myshop-orderstate ">
			<div class="title">
				<h3>
					나의 주문처리 현황 <span class="desc">(최근 <em>3개월</em> 기준)
					</span>
				</h3>
			</div>
			<div class="state">
				<ul class="order">
					<li><strong>입금전</strong> <a
						href="/myshop/order/list.html?order_status=shipped_before"
						class="count"><span
							id="xans_myshop_orderstate_shppied_before_count">0</span></a></li>
					<li><strong>배송준비중</strong> <a
						href="/myshop/order/list.html?order_status=shipped_standby"
						class="count"><span
							id="xans_myshop_orderstate_shppied_standby_count">3</span></a></li>
					<li><strong>배송중</strong> <a
						href="/myshop/order/list.html?order_status=shipped_begin"
						class="count"><span
							id="xans_myshop_orderstate_shppied_begin_count">0</span></a></li>
					<li><strong>배송완료</strong> <a
						href="/mypage/orderlist"
						class="count"><span
							id="xans_myshop_orderstate_shppied_complate_count">31</span></a></li>
				</ul>
				<ul class="cs">
					<li><span class="icoDot"></span> <strong>취소 : </strong> <a
						href="/myshop/order/list.html?order_status=order_cancel"
						class="count"><span
							id="xans_myshop_orderstate_order_cancel_count">1</span></a></li>
					<li><span class="icoDot"></span> <strong>교환 : </strong> <a
						href="/myshop/order/list.html?order_status=order_exchange"
						class="count"><span
							id="xans_myshop_orderstate_order_exchange_count">0</span></a></li>
					<li><span class="icoDot"></span> <strong>반품 : </strong> <a
						href="/myshop/order/list.html?order_status=order_return"
						class="count"><span
							id="xans_myshop_orderstate_order_return_count">1</span></a></li>
				</ul>
			</div>
		</div>
	</div>
</div>