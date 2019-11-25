<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="util" uri="/ELFunctions"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript">
	function read(communityNo) {
		var url = "read";
		url += "?communityNo=" + communityNo;

		location.href = url;
	}
</script>
<div id="container">
	<div id="contents">

		<div
			class="xans-element- xans-board xans-board-listpackage-4 xans-board-listpackage xans-board-4 ">
			<div
				class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
				<div class="title" style="text-align: center">
					<h2>
						<font color="333333">상품 문의</font>
					</h2>
				</div>

			</div>


			<div class="ec-base-table typeList gBorder crema-hide">
				<table border="1" summary="">
					<thead
						class="xans-element- xans-board xans-board-listheader-4 xans-board-listheader xans-board-4 ">
						<tr style="">
							<th scope="col">NO</th>
							<th scope="col">PRODUCT</th>
							<th scope="col">SUBJECT</th>
							<th scope="col">WRITER</th>
							<th scope="col" class="">DATE</th>
						</tr>
					</thead>
					<tbody
						class="xans-element- xans-board xans-board-notice-4 xans-board-notice xans-board-4 center">
						<tr style="background-color: #eee; color: #ddd;"
							class="xans-record-">
							<td></td>
							<td></td>
							<td class="subject left txtBreak"><strong> <a
									href="/article/상품-문의/6/113923/" style="color: #555555;">
										배송전(상품취소,변경, 주소지변경)문의는 "배송전 변경/취소" 게시판에 남겨주세요!! </a> <img
									src="${pageContext.request.contextPath}/images/icon_3.gif"
									class="ec-common-rwd-image"></strong></td>
							<td>슬로우앤드</td>
							<td class=""><span class="txtNum">2017-09-29 12:40:50</span></td>

						</tr>
						<tr style="background-color: #eee; color: #555555;"
							class="xans-record-">
							<td></td>
							<td></td>
							<td class="subject left txtBreak"><strong> <a
									href="/article/상품-문의/6/16787/" style="color: #555555;">(
										문의글작성전 꼭 ! 필 독 해 주 세 요 )</a> <img
									src="${pageContext.request.contextPath}/images/icon_3.gif"
									class="ec-common-rwd-image"></strong></td>
							<td>슬로우앤드</td>
							<td class=""><span class="txtNum">2016-11-28 18:19:12</span></td>

						</tr>
					</tbody>
					<tbody
						class="xans-element- xans-board xans-board-list-4 xans-board-list xans-board-4 center">
						<c:choose>
							<c:when test="${empty list }">
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td>등록된 글이 없습니다.</td>
									<td></td>
									<td></td>
							</c:when>
							<c:otherwise>
								<c:forEach var="dto" items="${list}">
									<tr style="background-color: #FFFFFF; color: #555555;"
										class="xans-record-">
										<td>${dto.communityNo}</td>
										<td class="thumb left"><a><img
												src="${pageContext.request.contextPath}/images/${dto.itemPicture}"
												width="63.75px" height="63.75px" border="0" alt=""></a></td>

										<td class="subject left txtBreak"><span class="prd_name"
											style="color: #aaa;">${dto.itemTitle}</span><br> 
											
												
													<img
														src="${pageContext.request.contextPath}/images/icon_1.png"
														alt="비밀글">
													<a href="javascript:read(${dto.communityNo })" style="color: #aaa;">문의합니다
														♡</a>
												
											 <span class="txtEm"></span> <c:if
												test="${util:newImg(dto.wdate) }">
												<img
													src="${pageContext.request.contextPath}/images/icon_4.gif">
											</c:if></td>
										<td>${dto.id }</td>
										<td class=""><span class="txtNum">${dto.wdate }</span></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>


			</div>


		</div>
		<p align="right">
			<button class="yg_btn_30 yg_btn4" onclick="location.href='create'">WRITE</button>
		</p>
	</div>
	<hr class="layout">
</div>