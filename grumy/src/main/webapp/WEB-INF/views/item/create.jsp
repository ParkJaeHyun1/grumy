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
							<th scope="row" >카테고리</th>
<p><select name="example" size="1" onChange="redirect(this.options.selectedIndex)">
<option>Technology Sites</option>
<option>News Sites</option>
<option>Search Engines</option>
</select>
<select name="stage2" size="1">
<option value="http://javascriptkit.com">JavaScript Kit</option>
<option value="http://www.news.com">News.com</option>
<option value="http://www.wired.com">Wired News</option>
</select>
<input type="button" name="test" value="Go!"
onClick="go()">
</p>
							<td><select id="category" name="" name="parentType" class="form-control">

									<option value="">-메인 카테고리-</option>
									<option value="OUTER">OUTER</option>
									<option value="TOP">TOP</option>
									<option value="SKIRT">SKIRT</option>
									<option value="BOTTOM">BOTTOM</option>
									<option value="SHOES/BAG">SHOES/BAG</option>
									<option value="ACC">ACC</option>
							</select>        
							<!-- 	OUTER 선택 시 출력 -->   
							<select id="sub1" name="" name="subType" class="form-control">
									<option value="">-서브 카테고리-</option>
									<option value="핸드메이드">핸드메이드</option>
									<option value="코트/자켓">코트/자켓</option>
									<option value="가디건">가디건</option>
									<option value="점퍼">점퍼</option>
							</select>  
							
							<!-- 	TOP 선택 시 출력 -->   
							<select id="sub2" name="" name="subType" class="form-control">
									<option value="">-서브 카테고리-</option>
									<option value="니트/가디건">니트/가디건</option>
									<option value="맨투맨/후드/티셔츠">맨투맨/후드/티셔츠</option>
									<option value="셔츠/블라우스">셔츠/블라우스</option>
									<option value="슬리브리스">슬리브리스</option>
							</select>                   

							<!-- 	DRESS는 서브 카테고리 없음 -->   
							<!-- 	SKIRT 선택 시 출력 -->   
							<select id="sub3" name="" name="subType" class="form-control">
									<option value="">-서브 카테고리-</option>
									<option value="미니">미니</option>
									<option value="미디/롱">미디/롱</option>								
							</select>  
							<!-- 	BOTTOM 선택 시 출력 -->   
							<select id="sub4" name="" name="subType" class="form-control">
									<option value="">-서브 카테고리-</option>
									<option value="데님">데님</option>
									<option value="면바지/슬랙스">면바지/슬랙스</option>								
									<option value="쇼츠">쇼츠</option>								
							</select> 
							<!-- 	SHOES/BAG 선택 시 출력 -->   
							<select id="sub5" name="" name="subType" class="form-control">
									<option value="">-서브 카테고리-</option>
									<option value="슈즈">슈즈</option>
									<option value="백">백</option>								
							</select>
							<!-- 	ACC 선택 시 출력 -->   
							<select id="sub6" name="" name="subType" class="form-control">
									<option value="">-서브 카테고리-</option>
									<option value="쥬얼리">쥬얼리</option>
									<option value="모자">모자</option>								
									<option value="벨트">벨트</option>								
									<option value="양말">양말</option>								
									<option value="홈웨어">홈웨어</option>								
									<option value="etc">etc</option>								
							</select>  
							</td>
							</tr>
						
						
						
						
						
						
						
						
							<tr>
								<th scope="row" style="width: 300px">상품명</th>         

								<td><input type="text" id="itemOptionNo"
									name="itemOptionNo" style="width: 300px"value=""></td>
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
										<td colspan="2"><textarea rows="20" cols="193"
										name="content" id="content">
										</textarea> <script type="text/javascript">                 
											CKEDITOR.replace('content', {
												height : 500
											});
										</script></td>
							
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
	
	
	var groups=document.doublecombo.example.options.length
	var group=new Array(groups)
	for (i=0; i<groups; i++)
	group[i]=new Array()

	group[0][0]=new Option("JavaScript Kit","http://javascriptkit.com")
	group[0][1]=new Option("News.com","http://www.news.com")
	group[0][2]=new Option("Wired News","http://www.wired.com")

	group[1][0]=new Option("CNN","http://www.cnn.com")
	group[1][1]=new Option("ABC News","http://www.abcnews.com")

	group[2][0]=new Option("Hotbot","http://www.hotbot.com")
	group[2][1]=new Option("Infoseek","http://www.infoseek.com")
	group[2][2]=new Option("Excite","http://www.excite.com")
	group[2][3]=new Option("Lycos","http://www.lycos.com")

	var temp=document.doublecombo.stage2

	function redirect(x){
	for (m=temp.options.length-1;m>0;m--)
	temp.options[m]=null
	for (i=0;i<group[x].length;i++){
	temp.options[i]=new Option(group[x][i].text,group[x][i].value)
	}
	temp.options[0].selected=true
	}

	function go(){
	location=temp.options[temp.selectedIndex].value
	}

	</script>
</script>