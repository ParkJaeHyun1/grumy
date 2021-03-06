<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="util" uri="/ELFunctions"%>

<link rel="stylesheet" type="text/css"
	href="https://www.slowand.com//ind-script/optimizer.php?filename=tZXBbsMgDIbvSa97DqvdpN133ml9AkK8hBYww0Zq3n40raZ1uUwJHLHsz_CDf2Akh7A_RAiRhqgcRGRKUSNoZviM5AU0OUd-lwNP8J981A2TTWLINx1dVhYmkbVNrZowrisV1Vn8VYq6TYyRQXmPh_3rM4TUWaPbUZwF7rHtkc3ggc_Gv8xQR32yCG7ikQJQ7DEeRckGaj4PJYFOsdFzi8WNbAXeAgWBWdO8wCaZClAhsmJCBfKItgY2P74-6Rr6BjUYX_Zx_aisugrUxVwXAz84TUERbA1xc5Zej52UH07mZmHZwYqATl8J47TrLmxN_2Cf65nvSqgI6Kg8F3Hl-4XMrvym-IyiKW1RcMm-D_sHavQ1Rv7v77Z5wy5lN71-VsfRhGD8cIV_Aw&type=css&k=1f61d62c8789295c816097742733fafb47f1b9da&t=1547093551" />
<link rel="stylesheet" type="text/css"
	href="https://www.slowand.com//ind-script/optimizer.php?filename=rY9BDsIwDAQfUK68wyog8R43MYlpYkdxCsrvKeXKCXrZy2pHsxA1E5AbFqNqgCJ0Gq9nKMuU2A2x5QTmafBkHARsZrmAM4OsfkkECbsuDZzKY92zSnGHtT7CL9yOEu684SOhp_o76osiNgpa-y56N9X2jx6WYsBiDUPF_GQfqG3V-MldjuduUQtMKPOkOu_JzMjy5r0A&type=css&k=73263e05083d6bf49dd063c0dd9c81dd389a26c9&t=1566806466" />


		<div class="mypage_top_outer" style="margin-top: 150px">
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


					<li><strong class="data">POINT
					</strong></li> <li><strong class="data">${dto.point }원
					</strong></li>

				</ul>
			</div>
		</div>
		<div id="myshopMain"
			class="xans-element- xans-myshop xans-myshop-main">
			<div class="shopMain order">
				<a href="${pageContext.request.contextPath }/mypage/order/list">주문내역</a>
			</div>
			<div class="shopMain board">
				<a href="${pageContext.request.contextPath }/mypage/mylist">내가 쓴 게시글</a>
			</div>
			<div class="shopMain profile">
				<a href="${pageContext.request.contextPath}/member/update">회원 정보
					수정</a>
			</div>

		</div>

	