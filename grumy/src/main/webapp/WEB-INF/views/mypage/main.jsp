<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="util" uri="/ELFunctions"%>

<div>
	<div>
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
	</div>
</div>