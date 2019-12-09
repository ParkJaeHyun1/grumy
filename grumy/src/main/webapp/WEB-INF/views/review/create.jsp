<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/se2/js/service/HuskyEZCreator.js"
	charset="utf-8"></script>
<div id="container">
	<div id="contents">

		<div
			class="xans-element- xans-board xans-board-readpackage-1002 xans-board-readpackage xans-board-1002 ">
			<div
				class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
				<div class="title" style="text-align: center">
					<h2>
						<font color="#555555">REVIEW 등록</font>
					</h2>

					<!--h3>공지사항입니다.</h3-->
				</div>
			</div>
			<br>
			<br>
			<!-- 글 내용-->
			<form action="create" method="post" id="frm"
				enctype="multipart/form-data" onsubmit="return input(this)">
				<input type="hidden" name="id" value="${sessionScope.id }">
				<div class="ec-base-table typeWrite ">
					<table border="1" summary="">
						<colgroup>
							<col style="width: 150px;">
							<col style="width: auto;">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">상품명itemOptionNo</th>

								<td><input type="text" id="itemOptionNo"
									name="itemOptionNo" value=""></td>
							</tr>
							
							<th scope="row">키</th>

							<td><input type="text" id="height" name="height" value=""></td>
							</tr>
							<th scope="row">몸무게</th>

							<td><select name="weight" name="weight" class="form-control">

									<option value="">-몸무게 선택-</option>
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
									<option value="90~">90~</option>
							</select></td>
							</tr>
							<th scope="row">평소사이즈</th>

							<td><select name="mySize" name="mySize" class="form-control">
									<option value="XS">XS</option>
									<option value="S">S</option>
									<option value="M">M</option>
									<option value="L">L</option>
									<option value="XL">XL</option>
									<option value="2XL">2XL</option>
							</select></td>
							</tr>
							</tr>
							<th scope="row">별점</th>

							<td><select name="star" class="form-control">
									<option value="★★★★★아주좋아요" selected="selected">★★★★★아주좋아요</option>
									<option value="★★★★맘에들어요">★★★★맘에들어요</option>
									<option value="★★★보통이에요">★★★보통이에요</option>
									<option value="★★그냥그래요">★★그냥그래요</option>
									<option value="★별로에요">★별로에요</option>

							</select></td>
							</tr>
							<tr>                 
										<td colspan="2"><textarea rows="20" cols="193"
										name="content" id="content">
										</textarea> <script type="text/javascript">                 
											CKEDITOR.replace('content', {
												height : 500
											});
										</script></td>
							
							</tr>
							<th scope="row">사진첨부</th>

							<td><input type="file" class="form-control" id="picture"
								name="filenameMF" accept=".jpg,.gif,.png"></td>
							</tr>

						</tbody>
					</table>
					<p align="right">
						<button type="submit" class="yg_btn_30 yg_btn4" id="save">저장</button>
						<button type="button" class="yg_btn_30 yg_btn4"
							onclick="history.back()">취소</button>
					</p>
				</div>
			</form>

		</div>
	</div>


</div>

<script type="text/javascript">
	var oEditors = [];
	$(function() {
		nhn.husky.EZCreator
				.createInIFrame({
					oAppRef : oEditors,
					elPlaceHolder : "content", //textarea에서 지정한 id와 일치해야 합니다. 
					//SmartEditor2Skin.html 파일이 존재하는 경로
					sSkinURI : "${pageContext.request.contextPath}/se2/SmartEditor2Skin.html",
					htParams : {
						// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
						bUseToolbar : true,
						// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
						bUseVerticalResizer : true,
						// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
						bUseModeChanger : false,
						fOnBeforeUnload : function() {

						}
					},
					fOnAppLoad : function() {
						//기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
						oEditors.getById["content"].exec("PASTE_HTML", [ " " ]);
					},
					fCreator : "createSEditor2"
				});

		//저장버튼 클릭시 form 전송
		$("#save").click(function() {
			oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
			$("#frm").submit();
		});
	});

	function input(f) {
		if (f.subject.value == '') {
			alert("제목을 입력하세요");
			f.subject.focus();
			return false;
		}
		if (f.content.value == '') {
			alert("내용을 입력하세요");
			f.content.focus();
			return false;
		}
		if (f.passwd.value == '') {
			alert("비밀번호를 입력하세요");
			f.passwd.focus();
			return false;
		}
	}
</script>