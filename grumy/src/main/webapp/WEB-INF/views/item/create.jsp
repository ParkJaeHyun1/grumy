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
<script>
   
 //콤마 자동 출력
 //[] <--문자 범위 [^] <--부정 [0-9] <-- 숫자  
 //[0-9] => \d , [^0-9] => \D
 var rgx1 = /\D/g;  // /[^0-9]/g 와 같은 표현
 var rgx2 = /(\d+)(\d{3})/; 

 function getNumber(obj){
 	
      var num01;
      var num02;
      num01 = obj.value;
      num02 = num01.replace(rgx1,"");
      num01 = setComma(num02);
      obj.value =  num01;

 }

 function setComma(inNum){
      
      var outNum;
      outNum = inNum; 
      while (rgx2.test(outNum)) {
           outNum = outNum.replace(rgx2, '$1' + ',' + '$2');
       }
      return outNum;

 }

   
   </script>

<div id="container">
	<div id="contents">

		<div
			class="xans-element- xans-board xans-board-readpackage-1002 xans-board-readpackage xans-board-1002 ">
			<div class="xans-element- xans-board  ">
				<div class="title" style="text-align: center">
					<h2>
						<font color="#555555">상품 등록</font>
					</h2>

					<!--h3>공지사항입니다.</h3-->
				</div>
			</div>
			<br> <br>
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
								<th scope="row">카테고리</th>

								<td><select onchange="mainCategory(this)">
										<option>-메인 카테고리-</option>
										<option value="a">OUTER</option>
										<option value="b">TOP</option>
										<option value="c">DRESS</option>
										<option value="d">SKIRT</option>
										<option value="e">BOTTOM</option>
										<option value="f">SHOES/BAG</option>
										<option value="g">ACC</option>
								</select> <select id="subCategory">
										<option>-서브 카테고리-</option>
								</select></td>
							</tr>


							<tr>
								<th scope="row" style="width: 300px">상품명</th>

								<td><input type="text" id="itemOptionNo"
									name="itemOptionNo" style="width: 300px" value=""></td>
							</tr>
							<th scope="row">상품 이미지</th>

							<td><input type="file" class="form-control" id="image"
								name="filenameMF" accept=".jpg,.gif,.png"></td>
							</tr>

							<tr>
								<th scope="row">사이즈</th>
								<td><span id="myspan"> S &nbsp;<input
										name="checkbox" type="checkbox" value="S">&nbsp;&nbsp;&nbsp;&nbsp;
										M &nbsp;<input name="checkbox" type="checkbox" value="M">&nbsp;&nbsp;&nbsp;&nbsp;
										L &nbsp;<input name="checkbox" type="checkbox" value="L">&nbsp;&nbsp;&nbsp;&nbsp;
										XL &nbsp;<input name="checkbox" type="checkbox" value="XL">&nbsp;&nbsp;&nbsp;&nbsp;
										FREE &nbsp;<input name="checkbox" type="checkbox" value="FREE">
								</span></td>
							</tr>


							<tr>
								<th scope="row">컬러(ex)브라운,검정,화이트..)</th>
								<td><input type="text" id="itemColor" style="width: 70px"> <input
									type="button" id="test" onclick="colorPrint();" value="추가" class="yg_btn_30 yg_btn4">
									<span id="color"></span><img src="//img.echosting.cafe24.com/design/skin/default/product/btn_price_delete.gif" alt="삭제" id="option_box1_del" class="option_box_del" onclick="deleteItem(2)">
									
									
									</td>             
							</tr>

							<tr>
								<th scope="row">가격</th>
								<td><input name="mypay" onchange="getNumber(this);"
									onkeyup="getNumber(this);" type="text" id="price" name="price"
									value="" style="text-align: right; width: 50px"> 원</td>
							</tr>      


							<tr>
								<th scope="row">할인 가격</th>
								<td><input name="mypay" onchange="getNumber(this);"
									onkeyup="getNumber(this);" type="text" id="salePrice"
									name="salePrice" value=""
									style="text-align: right; width: 50px"> 원</td>
							</tr>


							<tr>
								<th scope="row">상세 페이지</th>
								<td></td>
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

						</tbody>
					</table>               



					<div class="ec-base-button ">           
						<span class="gLeft">
							<button type="button" class="yg_btn_30 yg_btn4" alt="목록"
								onclick="location.href='list'">LIST</button>
						</span> <span class="gRight">
							<button id="save" type="submit" class="yg_btn_30 yg_btn4"
								alt="등록">OK</button>
							<button type="button" onclick="history.back()"
								class="yg_btn_30 yg_btn4" alt="취소">CANCEL</button>
						</span>  
					</div>
				</div>
			</form>

		</div>
	</div>

</div>

<script type="text/javascript">


//컬러 삭제
function deleteItem(itemOptionNo){
	$('#selectedItem'+itemOptionNo).remove();
	$('#orderInfo'+itemOptionNo).remove();
	delete selectedItem[itemOptionNo];
	setTotalPrice();
}


//컬러 출력
function colorPrint(){
	$('#color').append($('#itemColor').val());	
	var str ="";
	str = "<img"
	$('#color').append($('#option_box1_del').val());	
	
}


// size 시작
function addElement() {
	var aInput=document.getElementById('myspan').getElementsByTagName('input');
	for(var i=0; i<aInput.length; i++) {
	    aInput[i].onclick=new Function('addDelete(this)');
	    }
	}

	function addDelete(obj) {
	var parentSpan=document.getElementById('myspan');
	if(obj.nextSibling.nodeName!='INPUT') { // add
	    var oInputText=document.createElement('input');
	    oInputText.setAttribute('type', 'text');
	    oInputText.setAttribute('placeholder', '재고수량');
	    oInputText.setAttribute('style', 'width:50px');
	    oInputText.setAttribute('name', 'mypay');
	    oInputText.setAttribute('onchange', 'getNumber(this)');
	    oInputText.setAttribute('onkeyup', 'getNumber(this)');
	    
	    parentSpan.insertBefore(oInputText, obj.nextSibling);
	    }
	else { // delete
	    parentSpan.removeChild(obj.nextSibling);
	    }
	}

	function addLoadEvent(func) {
		  var oldonload = window.onload;
		  if (typeof window.onload != 'function') {
		    window.onload = func;
		  } else {
		    window.onload = function() {
		      if (oldonload) {
		        oldonload();
		      }
		      func();
		    }
		  }
		}

		addLoadEvent(function() {
		  addElement();
		});

		
		
// category 시작
function mainCategory(e) {
  var sub_a = ["핸드메이드", "코트/자켓", "가디건", "점퍼"];
  var sub_b = ["니트/가디건", "맨투맨/후드/티셔츠", "셔츠/블라우스", "슬리브리스"];
  //var sub_c = [];
  var sub_d = ["미니", "미디/롱"];
  var sub_e = ["데님", "면바지/슬랙스", "쇼츠"];
  var sub_f = ["슈즈", "백"];
  var sub_g = ["쥬얼리", "모자", "벨트", "양말", "홈웨어", "etc"];
  var target = document.getElementById("subCategory");
 
  if(e.value == "a") var d = sub_a;
  else if(e.value == "b") var d = sub_b;
  else if(e.value == "d") var d = sub_d;
  else if(e.value == "e") var d = sub_e;
  else if(e.value == "f") var d = sub_f;
  else if(e.value == "g") var d = sub_g;
 
  target.options.length = 0;
 
  for (x in d) {
    var opt = document.createElement("option");
    opt.value = d[x];
    opt.innerHTML = d[x];
    target.appendChild(opt);
  } 
}

//category 끝



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