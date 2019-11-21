<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/se2/js/service/HuskyEZCreator.js"
	charset="utf-8">
	 
	</script>
<div id="container">
	<div id="contents">

		<div
			class="xans-element- xans-board xans-board-writepackage-1002 xans-board-writepackage xans-board-1002 ">
			<div
				class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
				<div class="title" style="text-align: center">
					<h2>
						<font color="#555555">상품 문의</font>
					</h2>
					
				</div>
			</div>
			<form id="boardWriteForm" name="frm" action="create" method="post"
				enctype="multipart/form-data">
				<input type="hidden" name="writer" value="tester_yke">
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
							<th scope="row">상품번호</th>
							
							<td><input type="text" id="itemNo" name="itemNo" value=""></td>
						</tr>
						<th scope="row">아이디</th>
							
							<td><input type="text" id="id" name="id" value="tester"></td>
						</tr>
							<tr>
								<td colspan="2"><textarea rows="20" cols="190"
										name="content" id="content">이곳은 상품문의를 위한 게시판입니다!<br><br> 
										주문건취소/주소지변경/상품변경<br>당일발송 상품 단독 구매 후 출고요청 <br>
										부분배송비 입금후 가능한 상품 당일 출고요청/합배송요청에 대한 내용은 꼭 !<br> 
										'배송 전 변경/취소' 게시판 또는 고객센터(070-7705-5595)로 당일 12시 이전 요청 해주세요!<br>
										각 게시판에 맞는 문의 부탁드리겠습니다 좋은하루되세요 감사합니다 :-)<br><br>
										----------------------------------------------------------------------<br>
										</textarea></td>
							</tr>
						</tbody>
						<tbody class="">
							<tr>
								<th scope="row">FILE </th>
								<td><input name="filenameMF" type="file"></td>
							</tr>
						</tbody>
						<tbody>
							
							<tr class="">
								<th scope="row">SECRET</th>
								<td><input id="secure0" name="secure" fw-filter="isFill"
									fw-label="비밀글설정" fw-msg="" value="secure0" type="radio">
									<label for="secure0">공개글</label> 
									<input id="secure1" name="secure"
									fw-filter="isFill" fw-label="비밀글설정" fw-msg="" value="secure1"
									type="radio" checked="checked">
									<label for="secure1">비밀글</label></td>
							</tr>
						
							<tr class="" id="passwdhide">
								<th scope="row">PASSWORD</th>
								<td><input id="passwd" name="passwd" fw-filter="isFill"
									fw-label="비밀번호" fw-msg="" value="" type="password"></td>
							</tr>

						</tbody>
					</table>
				</div>
				<div class="ec-base-button ">
					<span class="gLeft">
						<button type="button" class="yg_btn_30 yg_btn4" alt="목록"
							onclick="location.href='list'">LIST</button>
					</span> <span class="gRight">
						<button id="save" type="submit" class="yg_btn_30 yg_btn4" alt="등록">OK</button>
						<button type="button" onclick="history.back()"
							class="yg_btn_30 yg_btn4" alt="취소">CANCEL</button>
					</span>
				</div>
			</form>
		</div>

	</div>
	<script type="text/javascript">
	 $(document).ready(function() {
 $("input[name='secure']:radio").change(function () {
         
         var secure = this.value;
          if(secure == "secure0"){//공개글이면
             
             $( "#passwdhide" ).hide();
            
          }else if(secure == "secure1"){
    
             $( "#passwdhide" ).show();
          }
         
         });
	 });
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
							oEditors.getById["content"].exec("PASTE_HTML",
									[ " " ]);
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
			 var secure = this.value;
			
			if (f.content.value == '') {
				alert("내용을 입력하세요");
				f.content.focus();
				return false;
			}
			if (secure == "secure1" && f.passwd.value == '') {
				alert("비번을 입력하세요");
				f.passwd.focus();
				return false;
			}
		}
	</script>

</div>

