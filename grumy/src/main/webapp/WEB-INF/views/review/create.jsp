<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	function input(f) {
		if (f.wname.value == '') {
			alert("작성자를 입력하세요.");
			f.wname.focus();
			return false;
		}

		if (f.title.value == '') {
			alert("제목을 입력하세요.");
			f.title.focus();
			return false;
		}

		if (f.content.value == '') {
			alert("내용을 입력하세요.");
			f.content.focus();
			return false;
		}

		if (f.passwd.value == '') {
			alert("비번을 입력하세요.");
			f.passwd.focus();
			return false;
		}
	}
</script>
<style id="stndz-style"></style>
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
<body>

	<div class="container">
		<h1 class="col-sm-offset-4 col-sm-10">상품문의</h1>
		<br>
		<form class="form-horizontal" action="create" method="post"
			enctype="multipart/form-data" onsubmit="return input(this)">

			<div class="form-group">
				<label class="control-label col-sm-2" for="size"><span
					id="need">*</span>사이즈 어때요?</label>
				<div class="col-sm-6">
					<select name="size" class="form-control">
						<option value="0">선택하세요</option>
						<option value="A01">많이작아요</option>
						<option value="A02">조금작아요</option>
						<option value="A03">잘맞아요</option>
						<option value="A04">조금커요</option>
						<option value="A05">많이커요</option>
						<option value="A06">기타</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="content1">사이즈 한줄평</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="content1"
						name="content1">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="cm">키</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="cm" name="cm">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="kg"><span
					id="need">*</span>kg</label>
				<div class="col-sm-6">
					<select name="job" class="form-control">
						<option value="0">-몸무게 선택-</option>
						<option value="A01">~44</option>
						<option value="A02">45~50</option>
						<option value="A03">50~55</option>
						<option value="A04">55~60</option>
						<option value="A05">60~65</option>
						<option value="A06">65~70</option>
						<option value="A07">70~75</option>
						<option value="A08">75~80</option>
						<option value="A09">80~85</option>
						<option value="A10">85~90</option>
						<option value="A11">90~</option>

					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="mysize"><span
					id="need">*</span>평소 사이즈</label>
				<div class="col-sm-6">
					<select name="mysize" class="form-control">
						<option value="0">-평소사이즈 선택-</option>
						<option value="A01">XS</option>
						<option value="A02">S</option>
						<option value="A03">M</option>
						<option value="A04">L</option>
						<option value="A05">XL</option>
						<option value="A06">기타</option>
					</select>
				</div>
			</div>



			<div class="form-group">
				<label class="control-label col-sm-2" for="content2">내용</label>
				<div class="col-sm-6">
					<textarea rows="12" cols="6" id="content2" name="content2"
						class="form-control"></textarea>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="filename"></label>
				<div class="col-sm-3">
					<input type="file" class="form-control" id="filename"
						name="filenameMF">
				</div>

				<div class="col-sm-3">
					<select name="star" class="form-control">
						<option value="0">★★★★★아주좋아요</option>
						<option value="A01">★★★★맘에들어요</option>
						<option value="A02">★★★보통이에요</option>
						<option value="A03">★★그냥그래요</option>
						<option value="A04">★별로에요</option>

					</select>
				</div>

				<div class="col-sm-3">
					<button type="submit" class="btn btn-default">리뷰 등록하기</button>
				</div>

			</div>
		</form>

	</div>

</body>

</html>