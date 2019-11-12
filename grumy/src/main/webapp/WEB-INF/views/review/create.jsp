<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
	
</script>

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

</head>
<body>
	<div class="w3-container">
		<div class="w3-bar w3-green">
			<a href="#" class="w3-bar-item w3-button">slowand</a> <a href="#"
				class="w3-bar-item w3-button">outer</a> <a href="#"
				class="w3-bar-item w3-button">top</a> <a href="#"
				class="w3-bar-item w3-button w3-right">logout</a>
		</div>
	</div>
	<div class="container">
		<h1 class="col-sm-offset-4 col-sm-10">REVIEW</h1><br>
		<h6 class="col-sm-offset-2">REVIEW | 문의글 혹은 악의적인 비방글은 무통보 삭제된다는 점 유의해주세요^^</h6>
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