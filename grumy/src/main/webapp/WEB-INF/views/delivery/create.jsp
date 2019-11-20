<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/se2/js/service/HuskyEZCreator.js"
	charset="utf-8"></script>
<div id="container">
	<div id="contents">

		<div
			class="xans-element- xans-board xans-board-writepackage-1002 xans-board-writepackage xans-board-1002 ">
			<div
				class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
				<div class="title" style="text-align: center">
					<h2>
						<font color="#555555">배송 문의</font>
					</h2>
					<!--h3>배송문의 Q&A 입니다 :)</h3-->
				</div>
			</div>
			<form id="boardWriteForm" name="frm"
				action="create" method="post" 
				enctype="multipart/form-data">
				<input type="hidden" name="writer" value="ㅋㅋ">
				<div class="ec-base-table typeWrite ">
					<table border="1" summary="">
						<colgroup>
							<col style="width: 150px;">
							<col style="width: auto;">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">SUBJECT</th>
								<td><select id="subject" name="subject">
										<option value="문의합니다  ♡">문의합니다 ♡</option>
								</select></td>
							</tr>
							<tr>
								<td colspan="2"><textarea rows="20" cols="190"
										name="content" id="content">배송전 상품 변경/취소/환불 처리는 '배송전 변경/취소' 게시판에 꼭 남겨주세요!<br><br>
																	*원단공장&거래처에서 겨울원단 시즌오프로 갑작스러운 지연/품절이 불가피하게<br> 
																	생길 수 있는점 너그럽게 양해부탁드리겠습니다ㅠ.ㅠ!<br>
																	---------------------------------------------<br>
																	주문번호:
										</textarea></td>
							</tr>
						</tbody>
						<tbody class="">
							<tr>
								<th scope="row">FILE 01</th>
								<td><input name="fileMF" type="file"></td>
							</tr>
						</tbody>
						<tbody>
							<tr class="">
								<th scope="row">PASSWORD</th>
								<td><input id="password" name="passwd" fw-filter="isFill"
									fw-label="비밀번호" fw-msg="" value="" type="password"></td>
							</tr>
							<tr class="">
								<th scope="row">SECRET</th>
								<td><input id="secure0" name="secure" fw-filter="isFill"
									fw-label="비밀글설정" fw-msg="" value="" type="radio"><label
									for="secure0">공개글</label> <input id="secure1" name="secure"
									fw-filter="isFill" fw-label="비밀글설정" fw-msg="" value="T"
									type="radio" checked="checked"><label for="secure1">비밀글</label></td>
							</tr>

						</tbody>
					</table>
				</div>
				<div class="ec-base-button ">
					<span class="gLeft">
						<button type="button" class="yg_btn_30 yg_btn4" alt="목록" onclick="location.href='list'">LIST</button>
					</span> <span class="gRight">
						<button id="save" type="submit"
							class="yg_btn_30 yg_btn4" alt="등록">OK</button>
						<button type="button" onclick="history.back()"
							class="yg_btn_30 yg_btn4" alt="취소">CANCEL</button>
					</span>
				</div>
			</form>
		</div>

	</div>
	<script type="text/javascript">
	var oEditors = [];
	$(function(){
	      nhn.husky.EZCreator.createInIFrame({
	          oAppRef: oEditors,
	          elPlaceHolder: "content", //textarea에서 지정한 id와 일치해야 합니다. 
	          //SmartEditor2Skin.html 파일이 존재하는 경로
	          sSkinURI: "${pageContext.request.contextPath}/se2/SmartEditor2Skin.html",  
	          htParams : {
	              // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
	              bUseToolbar : true,             
	              // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
	              bUseVerticalResizer : true,     
	              // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
	              bUseModeChanger : false,         
	              fOnBeforeUnload : function(){
	                   
	              }
	          }, 
	          fOnAppLoad : function(){
	              //기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
	              oEditors.getById["content"].exec("PASTE_HTML", [" "]);
	          },
	          fCreator: "createSEditor2"
	      });
	      
	      //저장버튼 클릭시 form 전송
	      $("#save").click(function(){
	          oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
	          $("#frm").submit();
	      });    
	});
	
	function input(f){
		if(f.subject.value==''){
			alert("제목을 입력하세요");
			f.subject.focus();
			return false;
		}
		if(f.content.value==''){
			alert("내용을 입력하세요");
			f.content.focus();
			return false;
		}
		if(f.passwd.value==''){
			alert("내용을 입력하세요");
			f.passwd.focus();
			return false;
		}
	}

	</script>

</div>
