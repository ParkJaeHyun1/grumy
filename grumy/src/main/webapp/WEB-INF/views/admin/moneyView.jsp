<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

</head>
<body>
	<div id="container">
		<div id="contents">	
			<div
				class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002 ">
				<div
					class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
					<div class="title" style="text-align: center;">
						<h2>
							<font color="#555555">결제금액</font>                  
						</h2>
						<br>
						<br>
					</div>
					<p class="imgArea"></p>
				</div>
				<div class="boardSort">
					<span
						class="xans-element- xans-board xans-board-replysort-1002 xans-board-replysort xans-board-1002 "></span>
				</div>
				
				<div class="ec-base-table typeList gBorder">
					<table border="1" summary="">
						<colgroup
							class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
							<col style="width: 200px;">
							<col style="width: 200px;">
							<col style="width: 120px;">
							<col style="width: 200px;">
							<col style="width: 120px;">
							<col style="width: 100px;">
							<col style="width: 100px;">
						</colgroup>
						<thead
							class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
							<tr style="">
								<th scope="col">주문번호</th>
								<th scope="col">주문일</th>
								<th scope="col">결제수단</th>
								<th scope="col">결제일</th>
								<th scope="col">아아디</th>
								<th scope="col">입금상태</th>
								<th scope="col">결제금액</th>
							</tr>
						</thead>
						<tbody
							class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
							<!--
	                    $count = 
	                    $login_page_url = /member/login.html
	                    $deny_access_url = /index.html
	                -->
							<c:choose>
								<c:when test="${empty moneyl }">
									<tr>
										<td></td>
										<td></td>
										<td>입금대기 건이 없습니다.</td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
								</c:when>
								<c:otherwise>
									<c:set var="aa"/>
									<c:forEach var="dto" items="${moneyl}" varStatus="status">
										<tr style="background-color: #FFFFFF; color: #555555;"
											class="xans-record-">
											<c:choose>										
												<c:when test="${aa != dto.orderNo }">
												<td>
													<a class="text-number"
													href="${root }/mypage/order/read?orderno=${dto.orderNo}">
													<u>[${dto.orderNo}]</u></a>
													</td>
													<c:set var="aa" value="${dto.orderNo }"/>
												</c:when>
											</c:choose>
											<td>${dto.odate}</td>
											<td>${dto.paymentType}</td>
											<td>${dto.pdate}</td>
											<td>${dto.id}</td>
											<td>${dto.state}</td>
											<td>${dto.totalPrice}</td>				
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
	
						</tbody>
					</table>
					<p class="xans-element- xans-board xans-board-empty-1002 xans-board-empty xans-board-1002 message displaynone "></p>
				</div>
				
				<form action="list" >
					<div
						class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 ">
						<fieldset class="boardSearch">
							<p>
								<select id="col" name="col" fw-filter="" fw-label="" fw-msg="">
									<option value="onum"
										<c:if test="${col == 'onum' }">selected</c:if>>주문번호</option>
									<option value="odate"
										<c:if test="${col == 'odate' }">selected</c:if>>주문일시</option>
									<option value="otitle"
										<c:if test="${col == 'otitle' }">selected</c:if>>아이템명</option>
									<option value="buyer"
										<c:if test="${col == 'buyer' }">selected</c:if>>구매자</option>
								</select> 
								<input id="word" name="word" type="text">
								<input id="datec" name="datec" type="hidden" value="${datec }">
								<button class="yg_btn_28 yg_btn3">SEARCH</button>
							</p>
						</fieldset>
					</div>
				</form>	
				${paging}	
			</div>	
		</div>
		<hr class="layout">
	</div>
</body>
</html>