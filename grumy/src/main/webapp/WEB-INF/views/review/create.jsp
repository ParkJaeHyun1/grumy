<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<style id="stndz-style"></style>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>전체 리뷰</title>
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
<style type="text/css">
.reviews_index_list_review__hide_message_container {
	display: none;
}
</style>

<script type="text/javascript" async=""
	src="https://www.google-analytics.com/plugins/ua/ecommerce.js"></script>
<script async="" src="//www.google-analytics.com/analytics.js"></script>
<script>
	function fimg(id, w, h) {
		var img = document.getElementById(id);
		if (img && !img.complete) {
			var width = img.width || img.offsetWidth;
			img.style.height = Math.round(img.width / w * h) + "px";
			img.onload = function() {
				this.style.height = "";
			}
		}
	}
</script>
</head>
<!-- 				review create -->
<div
	class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
	<div class="title" style="text-align: center">
		<h1>
			<font color="#555555">REVIEW</font>
		</h1>
	</div>

</div>
<div class="products_reviews_form ">
	<div class="products_reviews_form__head">
		<div class="products_reviews_form__title">
			<strong>REVIEW</strong><span class="divider">|</span><span
				class="weak">문의글 혹은 악의적인 비방글은 무통보 삭제된다는 점 유의해주세요^^</span>
		</div>
		<div class="products_reviews_form__button js-link-iframe"
			href="${pageContext.request.contextPath}/review/list">후기게시판</div>
	</div>
	<div class="products_reviews_form__body">
		<form class="review_form js-form-review review_form--new_review "
			id="new_review" autocomplete="off" novalidate="novalidate"
			data-login-required="true" data-review-message-default=""
			data-alert-requirement="true" data-disable-save-requirement="false"
			data-client-side-validations="{&quot;html_settings&quot;:{&quot;type&quot;:&quot;ActionView::Helpers::FormBuilder&quot;,&quot;input_tag&quot;:&quot;\u003cspan id=\&quot;input_tag\&quot; /\u003e\u003cdiv class=\&quot;field_with_errors\&quot;\u003e\u003clabel for=\&quot;\&quot; class=\&quot;message\&quot;\u003e\u003c/label\u003e\u003c/div\u003e&quot;,&quot;label_tag&quot;:&quot;\u003clabel id=\&quot;label_tag\&quot; /\u003e\u003cdiv class=\&quot;field_with_errors\&quot;\u003e\u003clabel for=\&quot;\&quot; class=\&quot;message\&quot;\u003e\u003c/label\u003e\u003c/div\u003e&quot;},&quot;number_format&quot;:{&quot;separator&quot;:&quot;.&quot;,&quot;delimiter&quot;:&quot;,&quot;},&quot;validators&quot;:{&quot;review[message]&quot;:{&quot;presence&quot;:[{&quot;message&quot;:&quot;리뷰 메시지를 입력해주세요.&quot;}],&quot;length&quot;:[{&quot;messages&quot;:{&quot;minimum&quot;:&quot;2000자 이하로 작성해주세요.&quot;,&quot;maximum&quot;:&quot;2000자 이하로 작성해주세요.&quot;},&quot;minimum&quot;:1,&quot;maximum&quot;:2000}],&quot;profanity&quot;:[{&quot;message&quot;:true}]},&quot;review[score]&quot;:{&quot;numericality&quot;:[{&quot;messages&quot;:{&quot;numericality&quot;:&quot;평점을 선택해주세요.&quot;,&quot;greater_than_or_equal_to&quot;:&quot;은(는) 1보다 크거야 같아야 합니다&quot;,&quot;less_than_or_equal_to&quot;:&quot;은(는) 5과 작거나 같아야 합니다&quot;},&quot;greater_than_or_equal_to&quot;:1,&quot;less_than_or_equal_to&quot;:5}]}}}"
			enctype="multipart/form-data"
			action="/slowand.com/products/post?secure_username=V2e70545df531ffd1464fc16b6c22db761&amp;widget_env=100&amp;widget_id=2"
			accept-charset="UTF-8" data-remote="true" method="post">
			<input name="utf8" type="hidden" value="✓">
			<div id="data" data-allow-multiple-reviews-per-product="false"></div>
			<input type="hidden" name="thumbnail_summary" id="thumbnail_summary">
			<div class="review_form__message_field js-limit-count-container ">
				<div class="review_form__option_fields anim"
					style="margin-top: 0px; opacity: 1; display: block;">
					<div class="review_option_fields">
						<div class="review_option_field">
							<input type="hidden" value="1"
								name="review[options_attributes][2][review_option_type_id]"
								id="review_options_attributes_2_review_option_type_id">
							<div class="review_option_field__title" title="키">키 (cm)</div>
							<div class="review_option_field__content">
								<input
									class="review_option_field__value review_option_field__value--input js-review-option-field-value-number "
									data-message="키를 숫자로 입력해주세요.
(. , _ - () 등 특수문자 입력 불가)"
									type="text" value="161"
									name="review[options_attributes][2][value]"
									id="review_options_attributes_2_value">
							</div>
						</div>

						<div class="review_option_field">
							<input type="hidden" value="2"
								name="review[options_attributes][3][review_option_type_id]"
								id="review_options_attributes_3_review_option_type_id">
							<div class="review_option_field__title" title="몸무게">몸무게</div>
							<div class="review_option_field__content">
								<div
									class="select2-container review_option_field__value review_option_field__value--select2 select2"
									id="s2id_review_options_attributes_3_value">
									<a href="javascript:void(0)" onclick="return false;"
										class="select2-choice" tabindex="-1">
										<div class="select2-chosen">51~53</div> <abbr
										class="select2-search-choice-close"></abbr> <span
										class="select2-arrow"><b></b></span><span
										class="sprites-icon-drop-down select2__dropdown_icon"></span>
									</a><input class="select2-focusser select2-offscreen" type="text"
										id="s2id_autogen2">
									<div class="select2-drop select2-display-none">
										<div
											class="select2-search select2-search-hidden select2-offscreen">
											<input type="text" autocomplete="off" autocorrect="off"
												autocapitalize="off" spellcheck="false"
												class="select2-input">
										</div>
										<ul class="select2-results">
										</ul>
									</div>
								</div>
								<select
									class="review_option_field__value review_option_field__value--select2 select2  select2-offscreen"
									data-message="몸무게를 입력해주세요."
									name="review[options_attributes][3][value]"
									id="review_options_attributes_3_value" tabindex="-1"><option
										value="">-몸무게 선택-</option>
									<option value="~44">~44</option>
									<option value="45~47">45~47</option>
									<option value="48~50">48~50</option>
									<option selected="selected" value="51~53">51~53</option>
									<option value="54~56">54~56</option>
									<option value="57~59">57~59</option>
									<option value="60~62">60~62</option>
									<option value="63~65">63~65</option>
									<option value="66~68">66~68</option>
									<option value="69~71">69~71</option>
									<option value="72~74">72~74</option>
									<option value="75~77">75~77</option>
									<option value="78~80">78~80</option>
									<option value="81~83">81~83</option>
									<option value="84~86">84~86</option>
									<option value="87~89">87~89</option>
									<option value="90~">90~</option></select>
							</div>
						</div>

						<div class="review_option_field">
							<input type="hidden" value="3"
								name="review[options_attributes][4][review_option_type_id]"
								id="review_options_attributes_4_review_option_type_id">
							<div class="review_option_field__title" title="평소사이즈">
								평소사이즈</div>
							<div class="review_option_field__content">
								<div
									class="select2-container review_option_field__value review_option_field__value--select2 select2"
									id="s2id_review_options_attributes_4_value">
									<a href="javascript:void(0)" onclick="return false;"
										class="select2-choice" tabindex="-1">
										<div class="select2-chosen">M</div> <abbr
										class="select2-search-choice-close"></abbr> <span
										class="select2-arrow"><b></b></span><span
										class="sprites-icon-drop-down select2__dropdown_icon"></span>
									</a><input class="select2-focusser select2-offscreen" type="text"
										id="s2id_autogen3">
									<div class="select2-drop select2-display-none">
										<div
											class="select2-search select2-search-hidden select2-offscreen">
											<input type="text" autocomplete="off" autocorrect="off"
												autocapitalize="off" spellcheck="false"
												class="select2-input">
										</div>
										<ul class="select2-results">
										</ul>
									</div>
								</div>
								<select
									class="review_option_field__value review_option_field__value--select2 select2  select2-offscreen"
									data-message="평소사이즈를 입력해주세요."
									name="review[options_attributes][4][value]"
									id="review_options_attributes_4_value" tabindex="-1"><option
										value="">-평소사이즈 선택-</option>
									<option value="XS">XS</option>
									<option value="S">S</option>
									<option selected="selected" value="M">M</option>
									<option value="L">L</option>
									<option value="XL">XL</option></select>
							</div>
						</div>

					</div>
				</div>
				<textarea
					class="review_form__message js-input-block autogrow js-review-form-count-limit js-new-review-form"
					placeholder="후기를 입력해 주세요" maxlength="2000" cols="5000"
					data-login-required="true" data-up-counter="true"
					data-minimum-message-length="30"
					data-minimum-message-length-warning="글자수를 30자 이상 작성하셔야만 적립금이 지급됩니다. 그래도 작성하시겠습니까?"
					data-minimum-message-length-error="30자 보다 길게 써야 합니다."
					name="review[message]" id="review_message"></textarea>

				<div class="js-limit-counter review_form__limit_counter">0</div>
				<div class="review_form__input_photos js-review-input-photos">
					<div class="review_form__review_photos">
						<ul class="image_fields_container js-image-fields"
							data-max-images-count="4" data-images-count="0"
							data-limit-images-count-warning="사진은 최대 %{max_count}개까지 선택할 수 있으므로 선택한 사진 중 %{count}개만 첨부합니다"
							data-max-images-count-warning="리뷰 사진은 최대 4장까지 첨부가능합니다.">
							<li class="image_field js-image-field">
								<div class="image_field__wrap">
									<img class="image_field__size_support" alt=""
										src="//assets5.cre.ma/m/widgets/transparent.png">
									<div
										class="image_field__input_image_container js-image-field-input-image-container on-list">
										<span
											class="image_field__sprites_icon_camera sprites-icon-camera inline"></span>
										<div class="image_field__add_image_caption">사진 추가</div>
									</div>
									<input type="file" name="review[images][]"
										class="image_field__input_file js-input-file" accept="image/*"
										multiple="multiple"
										data-upload-image-url="https://review5.cre.ma/slowand.com/preview_images/upload?secure_username=V2e70545df531ffd1464fc16b6c22db761&amp;widget_env=100">

									<div
										class="image_field__preview_container js-image-field-preview-container hidden">
										<img class="image_field__preview js-image-field-preview"
											alt="preview"
											src="//assets5.cre.ma/m/widgets/transparent.png">
										<div class="image_field__remove_preview js-remove-preview">
											<div class="image_field__remove_preview_text remove">삭제</div>
										</div>
									</div>
								</div>
							</li>

						</ul>
					</div>
				</div>
			</div>
			<div class="review_form__submit_container">
				<div class="review_form__add_image_container js-add-image-container"
					style="cursor: pointer;">
					<span class="review_form__add_image_icon sprites-icon-camera-black"></span>
					<div class="review_form__add_image_description"
						data-org-text="+ 사진추가">+ 사진추가</div>
				</div>
				<div class="review_form__score">
					<div
						class="select2-container review_form__select_rating select_rating"
						id="s2id_review_score">
						<a href="javascript:void(0)" onclick="return false;"
							class="select2-choice" tabindex="-1">
							<div class="select2-chosen">
								<div class="item">
									<span class="star"></span><span class="star"></span><span
										class="star"></span><span class="star"></span><span
										class="star"></span><span class="text">아주 좋아요</span>
								</div>
							</div> <abbr class="select2-search-choice-close"></abbr> <span
							class="select2-arrow"><b></b></span><span
							class="sprites-icon-drop-down select2__dropdown_icon"></span>
						</a><input class="select2-focusser select2-offscreen" type="text"
							id="s2id_autogen4">
						<div
							class="select2-drop select2-display-none review_form__select_rating_drop">
							<div
								class="select2-search select2-search-hidden select2-offscreen">
								<input type="text" autocomplete="off" autocorrect="off"
									autocapitalize="off" spellcheck="false" class="select2-input">
							</div>
							<ul class="select2-results">
							</ul>
						</div>
					</div>
					<select
						class="review_form__select_rating select_rating select2-offscreen"
						data-dropdown-css-class="review_form__select_rating_drop"
						name="review[score]" id="review_score" tabindex="-1"><option
							selected="selected" value="5">아주 좋아요</option>
						<option value="4">맘에 들어요</option>
						<option value="3">보통이에요</option>
						<option value="2">그냥 그래요</option>
						<option value="1">별로에요</option></select>
				</div>

				<input type="hidden" value="2571" name="review[product_id]"
					id="review_product_id"> <input type="hidden" value="24"
					name="review[review_source]" id="review_review_source"> <input
					type="hidden" value="0" name="review[social_media_type]"
					id="review_social_media_type"> <input type="hidden"
					name="review[sub_order_id]" id="review_sub_order_id"> <input
					type="hidden" name="review[position]" id="review_position">
				<button class="review_form__submit" type="submit"
					data-disable-with="저장 중...">
					<span class="review_form__submit_title_icon fa fa-check-circle-o"></span>
					<span class="review_form__post_review_label">리뷰 등록하기</span>
				</button>
			</div>
			<script type="text/x-jquery-tmpl" id="new-image-field">
 </script>
		</form>
	</div>
</div>
