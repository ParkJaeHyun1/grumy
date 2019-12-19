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
<script src="https://www.slowand.com/yangji/js/jquery.bxslider.min.js"></script>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />
<link rel="shortcut icon"
	href="https://slowand.com/web/upload/favicon_20170717165926.ico" />
<script type="text/javascript"
	src="https://slowand.com/app/Eclog/js/cid.generate.js?vs=3d0b473968a0ec4ec41e3bf59df3aa51"></script>
<script type="text/javascript"
	src="https://slowand.com///wcs.naver.net/wcslog.js"></script>
<script type="text/javascript"
	src="https://slowand.com/ind-script/moment.php?convert=T"></script>

<link rel="stylesheet" type="text/css"
	href="https://slowand.com//ind-script/optimizer.php?filename=tZXPagMhEMbvSa59jiFpoS9QeuqpfYJRp7um6hj_QPbt6-4SSAiFYvQiqPP9Rj4dB0a2BPtDAB94CGghUOQcJIGMEb4DuwSSrWW3KwtP8J94kpvIJifNbiP4XCnMKdUmNThRqJMmFIb-kKL38DWyh89rxvvCKDEqy1ShFIxBXelIbnOkEAGdo8P-9Rl8FkbL7ZisgahoqyjqwUH80e5lAdmS29DlDKAooTZNkaiUnv3BNljJ2bO70N8ePG9xN4KYY4NFhwMdlo39Ojb1IZDB2Yd6aHmbnMutY9RyyXBXXY8C14WGwFIfZUKbrDtAE7NJ2ncgj2R6YO8rvRkZB-0wUQ-XUXSg3v3RzcA3XaOhCaaHuSVK1mMndMNRr-2o9IMmoOMpU5h24hyNVjetsJ75gYln0C8&type=css&k=6c148a7d892bef3a2d344af511264df8f86d3c4e&t=1547093551" />
<link rel="stylesheet" type="text/css"
	href="https://slowand.com//ind-script/optimizer.php?filename=rZJBbgMxCEX3mW57DpQ2Uvc9QnMCgolN4wHL2K3m9nXSLrpOvEF8ffH4SECylYFp6c7VAVX5Zf_2CqWfstCS2prBAy-BXaKCX0QPsKHGTwFyhyOqP43mGe4BXQmrhZ4ZMm7WG1gNXN_RL9zIuraZ7FKHpPbBxI-A_2gndKHbFqbdELwbBteZgdeem3iyckxSimicCSfTrzEvpoXu5_57hcQY5t5P2Dha3abEO5u1R-JhKQ6i3jBWXL8lRG43a_9br-Qf&type=css&k=faeacdfe314ed4f276ee083d5adec203b0542fc7&t=1566806466" />

<script>
	//한글만 onKeyPress="hangul();"  --IE호환성을 위해... 이렇게..뿌니ㅎ;

	//숫자만 출력, 콤마 자동 출력
	//[] <--문자 범위 [^] <--부정 [0-9] <-- 숫자  
 //[0-9] => \d , [^0-9] => \D
	var rgx1 = /\D/g; // /[^0-9]/g 와 같은 표현
	var rgx2 = /(\d+)(\d{3})/;

	function getNumber(obj) {

		var num01;
		var num02;
		num01 = obj.value;
		num02 = num01.replace(rgx1, "");
		num01 = setComma(num02);
		obj.value = num01;
		
		$('#price2').val($('#price').val().replace(",",""));
		$('#salePrice2').val($('#salePrice').val().replace(",",""));
	}

	function setComma(inNum) {

		var outNum;
		outNum = inNum;
		while (rgx2.test(outNum)) {
			outNum = outNum.replace(rgx2, '$1' + ',' + '$2');
		}
		return outNum;

	}
	function removeComma(num){
		
	}
</script>
<style>
#smart_editor2 {
	width: 780px;
}
</style>
<div id="container">
	<div id="contents">

		<div
			class="xans-element- xans-board xans-board-readpackage-1002 xans-board-readpackage xans-board-1002 ">
			<div class="xans-element- xans-board  ">
				<div class="title" style="text-align: center">
					<h2>
						<font color="#555555">상품 수정</font>
					</h2>

					<!--h3>공지사항입니다.</h3-->
				</div>
			</div>
			<br> <br>
			<!-- 글 내용-->
			<form action="update" method="post" id="frm"
				enctype="multipart/form-data" onsubmit="return checkForm()">
				<input type="hidden" name="id" value="${sessionScope.id }">
				<div class="ec-base-table typeWrite ">
					<div class="xans-element- xans-product xans-product-detail">
						<div class="infoArea"
							style="float: none; width: 800px; margin: auto">
							<table border="1" summary="">
								<colgroup>
									<col style="width: 150px;">
									<col style="width: auto;">
								</colgroup>
								<tbody
									class="xans-element- xans-product xans-product-option xans-record-"
									style="background: #ffffff">
									<tr>
										<th scope="row">카테고리</th>

										<td><select onchange="mainCategory(this)"
											style="width: 200px;">
												<c:forEach var="dto" items="${typeList}">
													<c:if test="${empty dto.parentType}">
														<option value="${dto.type}"
															<c:if test="${dto.type == parentType}"> selected  </c:if>>${dto.type}</option>
													</c:if>
												</c:forEach>

										</select> <select id="subCategory" style="width: 200px" name="type">
												<c:forEach var="typeDTO" items="${typeList}">
													<c:if
														test="${typeDTO.parentType == parentType or typeDTO.type == parentType}">
														<option value="${typeDTO.type}"
															<c:if test="${typeDTO.type == dto.type}"> selected  </c:if>>${typeDTO.type}</option>
													</c:if>
												</c:forEach>
										</select></td>
									</tr>


									<tr>
										<th scope="row" style="width: 300px">상품명</th>

										<td><input type="text" id="title" name="title"
											style="width: 395px" value="${dto.title }"></td>
									</tr>
									<tr>
										<th scope="row">상품 이미지</th>

										<td><input type="file" class="form-control" id="image"
											name="filenameMF" accept=".jpg,.gif,.png"></td>
									</tr>

									<tr>
										<th scope="row">컬러 추가</th>
										<td><input type="text" id="itemColor" style="width: 70px">
											<button type="button" id="btnAdd" class="yg_btn_30 yg_btn4"
												style="width: 50px; height: 26px; line-height: 0px" onclick="addColor(this.value)">추가</button>
										</td>
									</tr>
									<tr id="colorList" style="display: none">  
										<th scope="row">컬러</th>
										<td>
											<ul class="ec-product-button" id="list">

											</ul>
										</td>
									</tr>
									<tr id="sizeList" style="display: none">
										<th scope="row">사이즈</th>
										<td>
											<ul class="ec-product-button" id="list">
												<li id="itemSizeS" class="" style="margin-right: 0px"><a
													href="javascript:;" onclick="clickSize('S')"> <span>S</span></a></li>
												<li id="itemSizeM" class="" style="margin-right: 0px"><a
													href="javascript:;" onclick="clickSize('M')"> <span>M</span></a></li>
												<li id="itemSizeL" class="" style="margin-right: 0px"><a
													href="javascript:;" onclick="clickSize('L')"> <span>L</span></a></li>
												<li id="itemSizeXL" class="" style="margin-right: 0px"><a
													href="javascript:;" onclick="clickSize('XL')"> <span>XL</span></a></li>
												<li id="itemSizeFREE" class="" style="margin-right: 0px"><a
													href="javascript:;" onclick="clickSize('FREE')"> <span>FREE</span></a></li>
											</ul>
										</td>
									</tr>
									<tr id="countList" style="display: none">
										<th scope="row">재고 수량</th>
										<td><input type="text" id="count" value=""
											style="text-align: right; width: 50px"
											onblur="checkCount(this.value)" onchange="getNumber(this);"
											onkeyup="getNumber(this);"> 개</td>
									</tr>


									<tr>
										<th scope="row">가격</th>
										<td><input onchange="getNumber(this);"
											onkeyup="getNumber(this);" type="text" id="price"
											value="${dto.price }" value=""
											style="text-align: right; width: 50px"> 원 <input
											type="hidden" id="price2" name="price" value=""></td>
									</tr>

									<tr>
										<th scope="row">할인 가격</th>
										<td><input onchange="getNumber(this);"
											onkeyup="getNumber(this);" type="text" id="salePrice"
											value="${dto.salePrice }"
											style="text-align: right; width: 50px"> 원 <input
											type="hidden" id="salePrice2" name="salePrice" value=""></td>
									</tr>
									<tr>
										<th scope="row" style="width: 300px;">상품 설명</th>

										<td><textarea type="text" id="description"
												name="description" style="width: 390px; height: 150px">${dto.description}</textarea></td>
									</tr>

									<tr>
										<th scope="row">상세 페이지</th>
										<td></td>
									</tr>

									<tr>
										<td colspan="2"><textarea rows="20" cols="124"
												name="content" id="content">                                                                    	
                              ${dto.content}</textarea> <script
												type="text/javascript">                                          
									CKEDITOR                                           
									.replace(               
										'content',
										{          
										height : 500
										}              
										'style',  
										{          
										width : 600             
										}	
									
									);
									</script></td>

									</tr>

								</tbody>

							</table>
							<div class="ec-base-button ">
								<span class="gLeft">
									<button type="button" class="yg_btn_30 yg_btn4" alt="목록"
										onclick="history.back()">LIST</button>
								</span> <span class="gRight">
									<button type="submit" class="yg_btn_30 yg_btn4" alt="등록">OK</button>
									<button type="button" onclick="history.back()"
										class="yg_btn_30 yg_btn4" alt="취소">CANCEL</button>
								</span>
							</div>
						</div>
					</div>
				</div>

			</form>

		</div>
	</div>

</div>

<script type="text/javascript">
	var itemOptionList = [],colorList=[];
	var selectedColor,selectedSize;
	<c:forEach items="${dto.itemOptionList}" var="itemOption">
		itemOptionList.push({'color':'${itemOption.itemColor}','size':'${itemOption.itemSize}','count':'${itemOption.itemCount}'});
		if(colorList.indexOf('${itemOption.itemColor}') == -1)
			addColor('${itemOption.itemColor}');
	</c:forEach>   
	       

						function addColor(color) { 
							

							if (!checkColor(color))
								return;       

							colorList.push(color);
	
							var html = '';  

							html += '<li class=""  id="itemColor'+color+'"';
							html +=	'style="margin-right: 0px"><a href="javascript:;"';
							html +=	'onclick="clickColor(\''+color+'\')"> <span>'+color+'</span></a></li>';
							html += '<a href="#none" class="delete" style="margin-right: 10px;" id="deleteColor'+color+'">';
							html +=	'<img src="//img.echosting.cafe24.com/design/skin/default/product/btn_price_delete.gif"';
							html +=	'alt="삭제" id="option_box1_del" class="option_box_del"';
							html +=	'onclick="deleteColor(\''+color+'\')"></a>';            

							$("#list").append(html); //list라는 아이디에 html을 추가해라
							setColorList();       
							 $("#itemColor").val('');
							 $("#itemColor").focus();
						};     
     

	function checkCount(count){
		$.each(itemOptionList, function(index, item){ 
			if(item['color'] == selectedColor && item['size'] == selectedSize)
		    	delete item;   
		});
		if(count == ''){
			$('#itemSize'+selectedSize).attr('class','');
			selectedSize = '';
			return;  
		}
		itemOptionList.push({'color':selectedColor,'size':selectedSize,'count':count});
		console.log(itemOptionList);	
	}
	function clickSize(size){
		$('#itemSize'+size).attr('class','ec-product-selected');
		$('#countList').css('display', 'table-row');
		$("#count").focus();
		$('#count').val('');
		selectedSize = size;  
		
		$.each(itemOptionList, function(index, item){ 
			if(item['color'] == selectedColor && item['size'] == selectedSize)
		    	$('#count').val(item['count']);
		});  
		    
	}   
	function clickColor(color){
		if(color == selectedColor){
			$('#itemColor'+selectedColor).attr('class','');
			$('#sizeList').css('display', 'none');
			selectedColor = '';
			return;
		}
		
		$('#itemSizeS').attr('class','');
		$('#itemSizeM').attr('class','');
		$('#itemSizeL').attr('class','');
		$('#itemSizeXL').attr('class','');
		$('#itemSizeFREE').attr('class','');   
  
		$('#countList').css('display','none');
		$('#countList').val('');   
		     
		$.each(itemOptionList, function(index, item){ 
			if(item['color'] == color)
				$('#itemSize'+item['size']).attr('class','ec-product-selected');
		});            
		
		$('#itemColor'+selectedColor).attr('class','');
		$('#itemColor'+color).attr('class','ec-product-selected');
		selectedColor = color;   
		
		$('#sizeList').css('display', 'table-row');

		
	}
	function deleteColor(color){
		if(!confirm("정말로 삭제하시겠습니까?"))
			return;
		
		$('#itemColor'+color).remove();
		$('#deleteColor'+color).remove();      
		colorList.splice(colorList.indexOf(color),1);
		
		$.each(itemOptionList, function(index, item){ 
			if(item['color'] == color)
		    	delete item;
		});  
		
		setColorList();            
	}
	function setColorList() {

		if (colorList.length > 0)
			$('#colorList').css('display', 'table-row');
		else
			$('#colorList').css('display', 'none');
	}      
	function checkColor(color) {

		if (color == null || color == '') {
			alert('색상에 공백을 넣을 수 없습니다.');
			return false;
		}else if (colorList.indexOf(color) !== -1) {
	         alert('이미 등록된 색상입니다.');
	         return false;
	    }
		return true;     
	}    

	// category 시작
	   function mainCategory(e) {
  
	      var target = document.getElementById("subCategory");
	      target.options.length = 0;

	      <c:forEach items="${typeList}" var="item">
			if('${item.parentType}' == e.value || '${item.type}' == e.value){
				 var opt = document.createElement("option");
		         opt.value = '${item.type}';
		         opt.innerHTML = '${item.type}';
		         target.appendChild(opt);

			}	      
	  	</c:forEach>    
    
	      
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

	});
	function checkForm() {
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
		var str='';
	      console.log(itemOptionList);
		$.each(itemOptionList, function(index, item){ 
			str+="<input type='hidden' name='itemColorList' value='"+item['color']+"'>";        
			str+="<input type='hidden' name='itemSizeList' value='"+item['size']+"'>";
			str+="<input type='hidden' name='itemCountList' value='"+item['count']+"'>";       
			
		});    
		$('#frm').append(str);    
	}
</script>