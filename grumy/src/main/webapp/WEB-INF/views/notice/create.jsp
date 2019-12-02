<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<script type="text/javascript" src="${pageContext.request.contextPath}/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/se2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div id="container">
	<div id="contents">

		<div
			class="xans-element- xans-board xans-board-readpackage-1002 xans-board-readpackage xans-board-1002 ">
			<div
				class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
				<div class="title"  style=text-align:center>
					<h2>
						<font color="#555555">NOTICE 등록</font>
					</h2>
					
					<!--h3>공지사항입니다.</h3-->
				</div>
			</div>
			<br><br>
			<!-- 글 내용-->
			<form action="create" method="post" id="frm"
				onsubmit="return input(this)" >
			<div class="ec-base-table typeWrite ">
				<table border="1" summary="">
					<colgroup>
						<col style="width: 150px;">
						<col style="width: auto;">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">SUBJECT</th>
							
							<td><input type="text" id="subject" name="subject" style=width:300px></td>
						</tr>
						<tr>
							<th scope="row">WRITER</th>
							<td><span name="writer">grumy</span></td>
						</tr>
						<tr>
							<td colspan="2" style=align:center>
								<textarea rows="20" cols="190" name="content" id="content"></textarea>
							</td>
						</tr>
						<tr>
							<th scope="row">LEV.</th>
							<td>
								<select name="lev" id="lev">
									<option>A</option>
									<option>S</option>
								</select>
							</td>
						</tr>
					</tbody>
				</table>
				<br>
					<p align="right">
						<button type="submit" class="yg_btn_30 yg_btn4" id="save">OK</button>
						<button type="button" class="yg_btn_30 yg_btn4" onclick="history.back()">CANCEL</button>
					</p>
			</div>
			</form>

		</div>
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
var pasteHTML = function(filename){                     //업로드한 사진을 화면에 보여주게 만드는 스크립트입니다.

    var sHTML = '<img src="${pageContext.request.contextPath}/se2/upload/'+filename+'">'; //사진이 저장된 경로입니다.

    oEditors.getById["txtContent"].exec("PASTE_HTML", [sHTML]);

};
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
}

</script>