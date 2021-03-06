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
						<font color="#555555">REVIEW 답변</font>
					</h2>
					<!--h3>배송문의 Q&A 입니다 :)</h3-->
				</div>
			</div>
			<form id="boardWriteForm" name="frm"
				action="create_reply" method="post" 
				enctype="multipart/form-data">
 				<input type="hidden" name="reviewNo" value="${reviewNo}">
 				
 				

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
										<option>답변합니다 ♡</option>
								</select></td>
							</tr>
							<tr>
								<th scope="row">작성자</th>
								<td> ${dto.id }</td>
							</tr>
							<tr>
								<th scope="row">내용</th>
								<td>${dto.content }</td>
							</tr>
							<tr>
								<td colspan="2"><textarea rows="20" cols="190"
										name="replyContent" id="replyContent">
									
									</textarea></td>
							</tr>
						</tbody>
						<tbody class="">
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
	          elPlaceHolder: "replyContent", //textarea에서 지정한 id와 일치해야 합니다. 
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
	              oEditors.getById["replyContent"].exec("PASTE_HTML", [" "]);
	          },
	          fCreator: "createSEditor2"
	      });
	      
	      //저장버튼 클릭시 form 전송
	      $("#save").click(function(){
	          oEditors.getById["replyContent"].exec("UPDATE_CONTENTS_FIELD", []);
	          $("#frm").submit();
	      });    
	});
	
	function input(f){
		
		if(f.content.value==''){
			alert("내용을 입력하세요");
			f.content.focus();
			return false;
		}

	}

	</script>

</div>

