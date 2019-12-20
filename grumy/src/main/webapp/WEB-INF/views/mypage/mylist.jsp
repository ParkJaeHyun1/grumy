<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="util" uri="/ELFunctions"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" media="all"
	href="https://assets5.cre.ma/latte/assets/pc/application-63fd329e35e3773c28e1d8df536aae454ce5b6cd92e4611da41d87d241c8e733.css">
<link rel="stylesheet" type="text/css"
	href="https://www.slowand.com/ind-script/optimizer.php?filename=tZXPbsMgDMbv6a57DivtpD0Pf9yEjmCGjdq8_SjtYVUvWwoXJAz-Jf4sf8BMC8K4TxATTUktkJApJ4NgmOGYKAgYWhYKbyXwDn-5j2Zg8lkchUHTZWNiFtn6Ua9WTNtSRWmPv1LR7DJjYlAh4H78PEDM2juzm2XxwBZ3FtlNAfjLhQ9YVZhOrrJnVPbhL_6JujIWstkjlHoolz4owYnSup2pYmSIMwmxdxb3NXxfmxStrxmpCepIJK-gaq0usKhr38_OTij1aLytXVQ8bKfem6wVO1MFeBq7V4G3QENgGZyywSG7DlAh8uJiB_KMvge2OIzNpoe-UU0ulOHvobLSHahP5t0M_PCcNBTB9xC33DKNvDBIE9DpO2N5QPSlOld11x8&type=css&k=dda47177a62c2ed097a4e997d8e506b783c567e7&t=1566806466" />
<style type="text/css">
span.star, span.camera, .sprite_comment {
	background-image:
		url(https://assets5.cre.ma/p/slowand-com/brand_settings/00/00/00/00/01/sprite/1988520c3d2f19ba.png);
}

.mall-link-color {
	color: #7a582f;
}

.review_comment_color {
	color: #6db67e;
}
</style>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/plugins/ua/ecommerce.js"></script>
<script src="//www.google-analytics.com/analytics.js"></script>
<script type="text/javascript">
	function readc(no) {
		var url = "${pageContext.request.contextPath}/community/read";
		url += "?board_no=" + no;
		location.href = url;
	}
	function readd(no) {
		var url = "${pageContext.request.contextPath}/delivery/read";
		url += "?board_no=" + no;
		location.href = url;
	}
	function read_replyd(no) {
		var url = "${pageContext.request.contextPath}/delivery/read_reply";
		url += "?board_no=" + no;
		location.href = url;
	}
</script>

<div id="container">
	<div id="contents">
		<div
			class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002 ">
			<div
				class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
				<div class="title" style="text-align: center">
					<h2>
						<font color="#555555">BOARD LIST</font>
					</h2>
					<br> <br>

				</div>
				<p class="imgArea"></p>
			</div>
			<div class="boardSort">
				<span
					class="xans-element- xans-board xans-board-replysort-1002 xans-board-replysort xans-board-1002 "></span>
			</div>
			<div class="ec-base-table typeList gBorder">
				<table border="1" summary="">
					<thead
						class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
						<tr style="">
							<th style="width: 70px;">NO</th>
							<th style="width: 150px;">CATEGORY</th>
							<th style="width: auto;">SUBJECT</th>
							<th style="width: 134px;">WRITER</th>
							<th style="width: 84px;">DATE</th>
						</tr>
					</thead>
					<tbody
						class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
						<c:choose>
							<c:when test="${empty list}">
								<tr>
									<td></td>
									<td></td>
									<td>등록된 글이 없습니다.</td>
									<td></td>
									<td></td>
							</c:when>
							<c:otherwise>
								<c:forEach var="list" items="${list}" varStatus="status">
									<tr style="background-color: #FFFFFF; color: #555555;"
										class="xans-record-">
										<td>${total-status.index-((nowPage-1)*10)}</td>
										<td>${list.category }</td>
										<td class="subject left txtBreak"><strong> <c:choose>

													<c:when test="${list.indent==0 }">

														<c:choose>
															<c:when test="${list.type=='상품' }">
																<a href="javascript:readc(${list.board_no })"
																	style="color: #555555;">
															</c:when>
															<c:otherwise>
																<a href="javascript:readd(${list.board_no })"
																	style="color: #555555;">
															</c:otherwise>
														</c:choose>
														<img
															src="${pageContext.request.contextPath }/images/secret.png" />${list.subject }</a>
														<c:if
															test="${util:newImg(fn:substring(list.wdate,0,10)) }">
															<img alt=""
																src="${pageContext.request.contextPath }/images/new.gif">

														</c:if>
													</c:when>
													<c:otherwise>
														<c:choose>
															<c:when test="${list.type=='상품' }">
																<a href="javascript:readc(${list.board_no })"
																	style="color: #555555;">
															</c:when>
															<c:otherwise>
																<a href="javascript:read_replyd(${list.board_no })"
																	style="color: #555555;">
															</c:otherwise>
														</c:choose> &nbsp;<img
															src="${pageContext.request.contextPath }/images/re.gif" />
														<img
															src="${pageContext.request.contextPath }/images/secret.png" />${list.subject }</a>
														<c:if
															test="${util:newImg(fn:substring(list.wdate,0,10)) }">
															<img alt=""
																src="${pageContext.request.contextPath }/images/new.gif">
														</c:if>
													</c:otherwise>

												</c:choose> <span class="txtEm"></span></strong></td>
										<td><script type="text/javascript">
										var len = ('${list.writer}'.length);
										var name = '${list.writer}'.replace(
												'${list.writer}'.substr(1,
														len), "****");
										if(${list.indent==1}){
											name = '${list.writer}'
										}
											document.write(name);
										</script></td>
										<td class=""><span class="txtNum">${list.wdate }</span></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>



					</tbody>
				</table>
				<p
					class="xans-element- xans-board xans-board-empty-1002 xans-board-empty xans-board-1002 message displaynone "></p>
			</div>
			<form action="mylist">
				<div
					class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 ">
					<fieldset class="boardSearch">
						<p>
							<select id="col" name="col" fw-filter="" fw-label="" fw-msg="">
								<option value="subject"
									<c:if test="${col == 'subject' }">selected</c:if>>제목</option>
								<option value="content"
									<c:if test="${col == 'content' }">selected</c:if>>내용</option>
								<option value="writer"
									<c:if test="${col == 'writer' }">selected</c:if>>글쓴이</option>
							</select> <input id="word" name="word" type="text">
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


	<div id="content">
		<div class="reviews_index reviews_index--list js-pagination-list ">
			<div class="reviews_index__head">
				<div class="reviews_index__title_bar">
					<div class="reviews_index__title">
						<strong>REVIEW</strong><span class="divider">|</span>전체 리뷰
					</div>
				</div>
				<script
					src="//assets.cre.ma/m/widgets/javascripts/tui-editor.min.js"></script>
				<link rel="stylesheet" media="all"
					href="//assets.cre.ma/m/widgets/css/tui-editor.min.css">
				<div id="google-translate-button" class="hidden"></div>
				<div class="reviews_index__body">
					<div class="page">
						<div class="reviews_index__no_data_message">아직 작성한 리뷰가 없습니다.</div>
						<ul class="reviews_index__reviews reviews">
							<c:forEach var="dto" items="${rlist}">
							<c:if test="${sessionScope.id== dto.id }">
							</c:if>
								<li id="review_${dto.reviewNo}"
									class="review reviews_index_list_review "><a
									class="reviews_index_list_review__product_image  js-link-iframe"
									href="${pageContext.request.contextPath}/item/read?itemNo=${dto.itemNo}">
										<!-- 여기야 --> <img
										src="${pageContext.request.contextPath}/images/${dto.itemPicture}"
										style="background-image: url(&quot;//${pageContext.request.contextPath}/item/read?itemNo=${dto.itemNo}&quot;); background-size: cover; background-position: center center; opacity: 1;"
										class="" width="90" height="90">
								</a>
									<div class="reviews_index_list_review__lcontents">
										<div class="reviews_index_list_review__score">
											<div class="reviews_index_list_review__title">
												<div class="reviews_index_list_review__tags">
													<span
														class="reviews_index_list_review__tag reviews_index_list_review__tag--new"
														title="3일 이내 작성된 후기입니다">NEW</span>
												</div>
												<a
													class="reviews_index_list_review__title_text js-link-iframe"
													href="${pageContext.request.contextPath}/item/read?itemNo=${dto.itemNo}">
													${dto.itemTitle} </a>
											</div>
										</div>
										<div class="reviews_index_list_review__content review_content">
											<a
												class="reviews_index_list_review__content_inner review_content__collapsed link-expand">
												<div class="reviews_index_list_review__message">
													<span> ${dto.content}<span
														class="mall-link-color see_more">... 더보기</span> <br>
													</span>
												</div>
												<div class="reviews_index_list_review__foot">
													<div class="reviews_index_list_review__actions">
														<span
															class="reviews_index_list_review__comments_link mall-link-color">
															<span class="comments-count"> <c:if
																	test="${not empty dto.replyContent }">1</c:if> <c:if
																	test="${empty dto.replyContent }">0</c:if>
														</span> 개의 댓글이 있습니다
														</span>
													</div>
												</div>
											</a>
											<div
												class="reviews_index_list_review__content_inner review_content__expanded">
												<div class="reviews_index_list_review__message">
													<div class="review_options">
														<div class="review_option">
															<div class="review_option__title">키</div>
															<div class="review_option__content">${dto.height }</div>
														</div>
														<div class="review_option">
															<div class="review_option__title">몸무게</div>
															<div class="review_option__content">${dto.weight }</div>
														</div>
														<div class="review_option">
															<div class="review_option__title">평소사이즈</div>
															<div class="review_option__content">${dto.mySize }</div>
														</div>
														<div class="review_option">
															<div class="review_option__title">선택한 옵션</div>
															<div class="review_option__content">
																<c:if test="${not empty dto.itemColor}">
																	<span class="review_option__product_option"> <span
																		class="review_option__product_option_key">COLOR:</span>
																		<span class="review_option__product_option_value">${dto.itemColor}</span>
																	</span>
																</c:if>
																<c:if test="${not empty dto.itemSize}">
																	<span class="review_option__product_option"> <span
																		class="review_option__product_option_key">SIZE:</span>
																		<span class="review_option__product_option_value">${dto.itemSize}</span>
																	</span>
																</c:if>
															</div>
														</div>
														<div class="review_option__title">별점</div>
														<div class="review_option__content">${dto.star }</div>
													</div>
													<div class="reviews_index_list_review__message_expanded">
														${dto.content}</div>
												</div>
												<div class="reviews_index_list_review__foot">
													<div class="reviews_index_list_review__actions">
														<a
															class="reviews_index_list_review__comments_link mall-link-color js-link-collapse">리뷰
															접기</a>
														<div class="review_edit_action">
															<c:if
																test="${sessionScope.id== dto.id || sessionScope.grade=='A' }">
																<a onclick="javascript:delete1(${dto.reviewNo})"
																	class="review_edit_action__button review_edit_action__button--delete">삭제</a>
																<a onclick="javascript:update(${dto.reviewNo})"
																	class="review_edit_action__button review_edit_action__button--edit">수정</a>
															</c:if>
															<c:if test="${sessionScope.grade=='A' }">
																<a onclick="javascript:create_reply(${dto.reviewNo})"
																	class="review_edit_action__button review_edit_action__button--edit">답변</a>
															</c:if>
															<div class="review_edit_action__divider"></div>
														</div>
													</div>
													<c:if test="${not empty dto.replyContent }">
														<div
															class="comments js-comments-container js-ie-opacity-fix">
															<div class="comments__arrow_top"></div>
															<ul class="comments__list">
																<li class="comment">
																	<div class="comment__inner">
																		<div class="comment__lpane">slowand</div>
																		<div class="comment__rpane">
																			<div class="comment__error_message"></div>
																			<div class="comment__message">
																				<span class="comment__message_text">${dto.id}님!
																					${dto.replyContent} </span>
																			</div>
																		</div>
																	</div>
																</li>
															</ul>
														</div>
													</c:if>
												</div>
											</div>
										</div>
										<div class="reviews_index_list_review__rcontents">
											<div class="reviews_index_list_review__info_container">
												<span class="reviews_index_list_review__name">${dto.id }</span>
												<c:choose>
													<c:when test="${empty dto.picture}">
													</c:when>
													<c:otherwise>
														<img onclick="popup('${dto.reviewNo}')"
															src="${pageContext.request.contextPath}/storage/${dto.picture}"
															class="js-review-image" width="90px" height="90px"
															style="opacity: 1;">
													</c:otherwise>

												</c:choose>
											</div>
										</div></li>
								<!-- 이미지팝업 -->
						<div
									class="show_photo_review fullscreen_popup review fullscreen_popup--loaded"
									style="display: none; position: absolute; z-index: 1; overflow: auto;"
									tabindex="-1" id="myDIV">
									<div class="fullscreen_popup__background ie_png_fix"></div>
									<div id="photo-popup-container"
										class="show_photo_review__photo_popup_container fullscreen_popup__content_container">
										<div id="photo-popup-content"
											class="js-ie-opacity-fix show_photo_review__photo_popup_content fullscreen_popup__content"
											style="width: 724px; margin-top: 70px;">
											<div class="show_photo_review__photos_container">
												<div data-width="1024" data-height="1024" data-index="1"
													data-count="2" id="photo-container-1"
													class="show_photo_review__photo_container selected js-ie-opacity-fix"
													style="padding: 0px; max-height: 762px; overflow: hidden;">

													<img id="reviewPicture"
														src="${pageContext.request.contextPath}/storage/${dto.picture}"
														class="js-photo-container-review-image-zoom show_photo_review__photo_container_image"
														data-width="1024" data-height="1024" id="yke"
														style="max-width: 1024px; height: 724px; weight: 724px;">
												</div>
											</div>
											<div id="review-contents-container"
												class="show_photo_review__review_contents_container js-ie-opacity-fix">
												<div id="info-container"
													class="show_photo_review__info_container">
													<div class="show_photo_review__info ">
														<div class="show_photo_review__product">
															<div class="show_photo_review__product_thumbnail">
																<a id="reviewItemNo"
																	class="show_photo_review__link_to_product js-link-iframe"
																	href="${pageContext.request.contextPath}/item/read?itemNo=${dto.itemNo}">
																	<img id="reviewItemPicture"
																	src="${pageContext.request.contextPath}/images/${dto.itemPicture}"
																	width="70" height="70"
																	class="show_photo_review__link_to_product">
																</a>
															</div>
															<div class="show_photo_review__product_info">

																<div class="show_photo_review__product_name">
																	<a id="reviewItemTitle"
																		class="show_photo_review__link_to_product js-link-iframe"
																		href="${pageContext.request.contextPath}/item/read?itemNo=${dto.itemNo}">${dto.itemTitle}</a>
																</div>
																<div class="show_photo_review__product_score"></div>
																<div class="show_photo_review__user_name" id="reviewID">${dto.id }</div>
															</div>
														</div>
													</div>
												</div>
												<div id="message-container"
													class="js-ie-opacity-fix show_photo_review__message"
													style="height: 556px;">
													<div class="show_photo_review__message_contents">
														<div class="review_options">

															<div class="review_option">
																<div class="review_option__title">키</div>
																<div class="review_option__content" id="reviewHeight">${dto.height }</div>
															</div>

															<div class="review_option">
																<div class="review_option__title">몸무게</div>
																<div class="review_option__content" id="reviewWeight">${dto.weight }</div>
															</div>

															<div class="review_option">
																<div class="review_option__title">평소사이즈</div>
																<div class="review_option__content" id="reviewMySize">${dto.mySize }</div>
															</div>
															<div class="review_option">
																<div class="review_option__title">선택한 옵션</div>
																<div class="review_option__content">

																	<span class="review_option__product_option"> <span
																		class="review_option__product_option_key">COLOR:</span>
																		<span class="review_option__product_option_value"
																		id="reviewItemColor"></span>
																	</span> <span class="review_option__product_option"> <span
																		class="review_option__product_option_key">SIZE:</span>
																		<span class="review_option__product_option_value"
																		id="reviewItemSize"></span>
																	</span>
																</div>
															</div>
														</div>
														<div
															class="show_photo_review__all_messages js-ie-opacity-fix">
															<div class="show_photo_review__review_message"
																id="reviewContent">${dto.content }</div>
														</div>
														<div class="show_photo_review__feedback_container"
															id="reviewReply">
															<div
																class="comments js-comments-container js-ie-opacity-fix">
																<div class="comments__arrow_top"></div>
																<ul class="comments__list">
																	<li class="comment" id="comment_95269">
																		<div class="comment__inner">
																			<div class="comment__lpane">슬로우앤드</div>
																			<div class="comment__rpane">
																				<div class="comment__message">
																					<span class="comment__message_text"
																						id="reviewReplyContent">${dto.id }님!
																						${dto.replyContent}</span>
																				</div>
																			</div>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="js-ie-opacity-fix fullscreen_popup__close"
										style="top: 55px; right: 290px;" onclick="javascript:popup2()">
										<div class="sprites-circle-close-button ie_png_fix"></div>
									</div>
								</div>
							</c:forEach>
						</ul>
					</div>
				</div>
				<!--             푸터 -->
			</div>
		</div>
	</div>