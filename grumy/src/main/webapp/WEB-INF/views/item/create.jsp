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
				class="xans-element- xans-board  ">                      
				<div class="title" style="text-align: center">
					<h2>
						<font color="#555555">상품 등록</font>                                                                   
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
								<th scope="row">상품명</th>

								<td><input type="text" id="itemOptionNo"
									name="itemOptionNo" value=""></td>
							</tr>
							<th scope="row">상품 이미지</th>

							<td><input type="file" class="form-control" id="image"
								name="filenameMF" accept=".jpg,.gif,.png"></td>
							</tr>
							
							<tr>
							<th scope="row">사이즈</th>

							<td><select name="itmeSize" name="itmeSize" class="form-control">

									<option value="">-사이즈 선택-</option>
									<option selected="selected" value="S">S</option>
									<option value="M">M</option>
									<option value="L">L</option>
									<option value="FREE">FREE</option>
							</select></td>
							</tr>
							<th scope="row">컬러(ex)브라운,검정,화이트..)</th>
								<td><input type="text" id="itemColor" name="itemColor" value=""></td>
						
							<tr>
								<td colspan="2" style="text-align: center"><textarea
										rows="20" cols="150" name="content" id="content"></textarea></td>
							</tr>
							

						</tbody>
					</table>
	
			
				
				<div class="ec-base-button ">
					<span class="gLeft">
						<button type="button" class="yg_btn_30 yg_btn4" alt="목록" onclick="location.href='${pageContext.request.contextPath}/item/list'">LIST</button>
					</span> <span class="gRight">
						<button id="save" type="submit" class="yg_btn_30 yg_btn4" alt="등록">OK</button>
						<button type="button" onclick="history.back()" class="yg_btn_30 yg_btn4" alt="취소">CANCEL</button>
					</span>
				</div>
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