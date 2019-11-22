		<div class="reviews_index reviews_index--list js-pagination-list ">
			<div class="reviews_index__head">
				<script
					src="//assets.cre.ma/m/widgets/javascripts/tui-editor.min.js"></script>
				<link rel="stylesheet" media="all"
					href="//assets.cre.ma/m/widgets/css/tui-editor.min.css">
				<div id="google-translate-button" class="hidden"></div>
				<div class="reviews_index__body">
					<div class="page">
						<div class="reviews_index__no_data_message">아직 작성한 리뷰가 없습니다.</div>
						<ul class="reviews_index__reviews reviews">

							<c:forEach var="dto" items="${list}">
								<li id="review_${dto.reviewNo}"
									class="review reviews_index_list_review "><a
									class="reviews_index_list_review__product_image  js-link-iframe"
									href="javascript:read(${dto.reviewNo})"> <!-- 여기야 --> <img
										src="${pageContext.request.contextPath}/images/${dto.itemPicture}"
										style="background-image: url(&quot;//${pageContext.request.contextPath}/images/${dto.itemPicture}&quot;); background-size: cover; background-position: center center; opacity: 1;"
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
												<!-- 여기야 -->
												<a
													class="reviews_index_list_review__title_text js-link-iframe"
													href="javascript:read(${dto.reviewNo})">
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
															<span class="comments-count">0	</span> 개의 댓글이 있습니다
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
													</div>
													<div class="reviews_index_list_review__message_expanded">
														${dto.content}</div>
												</div>
												<div class="reviews_index_list_review__foot">
													<div class="reviews_index_list_review__actions">
														<a
															class="reviews_index_list_review__comments_link mall-link-color js-link-collapse">리뷰
															접기</a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="reviews_index_list_review__rcontents">
										<div class="reviews_index_list_review__info_container">
											<span class="reviews_index_list_review__name">${dto.id}</span>

											<c:choose>
												<c:when test="${empty dto.picture}">
												</c:when>
												<c:otherwise>
													<img
														src="${pageContext.request.contextPath}/storage/${dto.picture}"
														class="js-review-image" width="90px" height="90px"
														style="opacity: 1;">
												</c:otherwise>

											</c:choose>
										</div>
									</div></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<!-- 				푸터 -->
			</div>
		</div>
