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
							<font color="#555555">배송완료</font>                  
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
							<col style="width: 120px;">
							<col style="width: 120px;">
							<col style="width: auto;">
							<col style="width: 70px;">
							<col style="width: 70px;">
							<col style="width: 60px;">
							<col style="width: 100px;">
							<col style="width: 70px;">
							<col style="width: 120px;">
							<col style="width: 70px;">
						</colgroup>
						<thead
							class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
							<tr style="">
								<th scope="col">주문번호</th>
								<th scope="col">IMAGE</th>
								<th scope="col">아이템명</th>
								<th scope="col">색깔</th>
								<th scope="col">사이즈</th>
								<th scope="col">수량</th>
								<th scope="col">가격</th>
								<th scope="col">주문아이디</th>
								<th scope="col">송장번호</th>
								<th scope="col">입금상태</th>
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
								<c:when test="${empty list }">
									<tr>
										<td></td>
										<td></td>
										<td>배송 완료 건이 없습니다.</td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
								</c:when>
								<c:otherwise>
									<c:set var="aa"/>
									<c:forEach var="dto" items="${list}" varStatus="status">
										<c:forEach var="dto2" items="${dto.orderItemList}" varStatus="status">
										<tr style="background-color: #FFFFFF; color: #555555;"
											class="xans-record-">
											<c:choose>										
												<c:when test="${aa != dto.orderNo }">
												<td rowspan="${dto.getOrderItemList().size() }">
													${dto.odate}<br>
													<a class="text-number"
													href="${root }/admin/read?orderno=${dto.orderNo}">
													<u>[${dto.orderNo}]</u></a>
													</td>
												</c:when>
											</c:choose>
											<td><a
											href="${pageContext.request.contextPath }/item/read?itemNo=${dto2.itemNo}">
											<img
												style="width: 80px; height: 106px;"
												src="${pageContext.request.contextPath}/images/${dto2.itemImage }"></a></td>
											<td>${dto2.itemTitle}</td>
											<td>${dto2.itemColor}</td>
											<td>${dto2.itemSize}</td>
											<td>${dto2.count}</td>
											<td>${dto2.itemPrice }</td>
											<td>${dto.id}</td>
											<td>${dto2.deliveryNo}</td>
											<c:choose>										
												<c:when test="${aa != dto.orderNo }">
													<c:set var="aa" value="${dto.orderNo }"/>
													<td>${dto2.state }</td>
												</c:when>
												<c:otherwise>
													<td></td>
												</c:otherwise>
											</c:choose>							
										</tr>
										</c:forEach>
									</c:forEach>
								</c:otherwise>
							</c:choose>
	
						</tbody>
					</table>
					<p class="xans-element- xans-board xans-board-empty-1002 xans-board-empty xans-board-1002 message displaynone "></p>
				</div>
				
				<form action="list">
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