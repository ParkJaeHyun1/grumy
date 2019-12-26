<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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
<script type="text/javascript" src="${pageContext.request.contextPath}/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
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

</script>
<style>
#smart_editor2{
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
						<font color="#555555">상품 등록</font>
					</h2>

					<!--h3>공지사항입니다.</h3-->
				</div>
			</div>
			<br> <br>
			<!-- 글 내용-->
			<form action="create" method="post" id="frm"
				enctype="multipart/form-data" onsubmit="return checkForm();">         
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

										<td><select onchange="maincategory(this)" id="mainCategory"
											style="width: 200px;">
												<option >-메인 카테고리-</option>
												<c:forEach var="dto" items="${typeList}">
													<c:if test="${empty dto.parentType}">
														<option value="${dto.type}">${dto.type}</option>	
													</c:if>
												</c:forEach>
												
										</select> <select id="subCategory" style="width: 200px" name="type">
												<option>-서브 카테고리-</option>
										</select></td>
									</tr>


									<tr>
										<th scope="row" style="width: 300px">상품명</th>

										<td><input type="text" id="title"
											name="title" style="width: 395px"></td>
									</tr>
									<tr>          
										<th scope="row">상품 이미지</th>

										<td><input type="file" class="form-control" id="image"
											name="filenameMF" accept=".jpg,.gif,.png" ></td>
									</tr>
               
									<tr>
										<th scope="row">컬러 추가</th>
										<td><input type="text" id="itemColor" style="width: 70px">
											<button type="button" id="btnAdd" class="yg_btn_30 yg_btn4"
												style="width: 50px; height: 26px; line-height: 0px">추가</button>      
										</td>
									</tr>
									<tr id="colorList" style="display:none">
										<th scope="row">컬러</th>
										<td>
											<ul class="ec-product-button" id="list">

											</ul>      
										</td>       
									</tr>
									<tr id ="sizeList" style="display:none">          
										<th scope="row">사이즈</th>
										<td>
										<ul class="ec-product-button" id="list">
										<li id="itemSizeS" class=""  style="margin-right: 0px"><a href="javascript:;" onclick="clickSize('S')"> <span>S</span></a></li>
										<li id="itemSizeM" class=""  style="margin-right: 0px"><a href="javascript:;" onclick="clickSize('M')"> <span>M</span></a></li>
										<li id="itemSizeL" class=""  style="margin-right: 0px"><a href="javascript:;" onclick="clickSize('L')"> <span>L</span></a></li>
										<li id="itemSizeXL" class=""  style="margin-right: 0px"><a href="javascript:;" onclick="clickSize('XL')"> <span>XL</span></a></li>
										<li id="itemSizeFREE" class=""  style="margin-right: 0px"><a href="javascript:;" onclick="clickSize('FREE')"> <span>FREE</span></a></li>          
										</ul>           
										</td>       
									</tr>
									<tr  id="countList" style="display:none">    
										<th scope="row">재고 수량</th>
										<td><input  type="text" id="count" value="" style="text-align: right; width: 50px" onblur="checkCount(this.value)" onchange="getNumber(this);"
											onkeyup="getNumber(this);">
											개</td>
									</tr>


									<tr>
										<th scope="row">가격</th>      
										<td><input  onchange="getNumber(this);"
											onkeyup="getNumber(this);" type="text" id="price"
											 value="" style="text-align: right; width: 50px">
											원
											<input  type="hidden" id="price2" name="price" value="" >
											</td>
									</tr>

									<tr>
										<th scope="row">할인 가격</th>
										<td><input  onchange="getNumber(this);"
											onkeyup="getNumber(this);" type="text" id="salePrice"value=""
											style="text-align: right; width: 50px"> 원
													<input  type="hidden" id="salePrice2" name="salePrice" value="" ></td>
									</tr>
									<tr>       
										<th scope="row" style="width: 300px; ">상품 설명</th>
               
										<td><textarea type="text" id="description"
											name="description" style="width: 390px; height:150px"></textarea></td>
									</tr>

									<tr>
										<th scope="row">상세 페이지</th>
										<td></td>                              
									</tr>
              
									<tr>
										<td colspan="2"><textarea rows="20" cols="124"                                                        
												name="content" id="content" style="display:none">                                                                                	
                              </textarea></td>              

									</tr>                                           
		 
								</tbody>
       
							</table>
				<div class="ec-base-button ">         
					<span class="gLeft">
						<button type="button" class="yg_btn_30 yg_btn4" alt="목록" onclick="history.back()">LIST</button>
					</span> <span class="gRight">
						<button type="submit" class="yg_btn_30 yg_btn4" alt="등록" >OK</button>         
						<button type="button" onclick="history.back()" class="yg_btn_30 yg_btn4" alt="취소">CANCEL</button>
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
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
 oAppRef: oEditors,
 elPlaceHolder: "content",
 sSkinURI: "${pageContext.request.contextPath}/smarteditor/SmartEditor2Skin.html",
 fCreator: "createSEditor2",
 htParams: { fOnBeforeUnload : function(){}}

});
</script>
<script type="text/javascript">     
	var itemOptionList = [],colorList=[];
	var selectedColor,selectedSize;
	$(function() {
		$("#btnAdd")
				.click(
						function() { //btnAdd라는 버튼을 눌렀을때 ->이벤트 등록
							//  var d = new Date(); //date를 d에 대입, 날짜변수 만듦
							// var curTime = d.toLocaleTimeString(); //현재 시간을 대입
							var color = $("#itemColor").val();

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
						});
     
	})
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
		itemOptionList.push({'color':selectedColor,'size':selectedSize,'count':count.replace(",","")});
			
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
				itemOptionList.splice(index,1);
		});  
		$('#sizeList').css('display','none');
		$('#countList').css('display','none');
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
	   function maincategory(e) {
  
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


	function checkForm() {    
		   
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
		
		   if($("#mainCategory option:selected").val()=='-메인 카테고리-'){
			   alert('메인 카테고리를 선택해주세요.');
			   $('#mainCategory').focus();
			   return false;
		   }else  if($("#subCategory option:selected").val()=='-서브 카테고리-'){
			   alert('서브 카테고리를 선택해주세요.');
			   $('#subCategory').focus();
			   return false;
		   }else if(!$("#title").val()){
			   alert('상품명을 입력해주세요.');
			   $('#title').focus();
			   return false;
		   }else if(!$('#image').val()){
			   alert('상품 이미지를 선택해주세요.');
			   $('#image').focus();
			   return false;
		   }else if(!$('#price').val()){
			   alert('상품 가격을 입력해주세요.');
			   $('#price').focus();
			   return false;
		   }else if(!$('#salePrice').val()){
			   alert('상품 할인가격을 입력해주세요.');
			   $('#salePrice').focus();
			   return false;
		   }else if(Number($('#salePrice2').val()) > Number($('#price2').val())){      
			   alert('싱픔 할인가격이 상품 가격보다 높을 수 없습니다.');
			   $('#salePrice').focus();
			   return false;
		   }else if(!$('#description').val()){
		   	   alert('상품 설명을 입력해주세요.');
			   $('#description').focus();
			   return false;
		   }else if($('#content').val() == ""  || $('#content').val() == null || $('#content').val() == '&nbsp;' || $('#content').val() == '<p>&nbsp;</p>'){
			   alert('상세 페이지를 입력해주세요.');
			   oEditors.getById["content"].exec("FOCUS");
			   return false;
		   }else if(itemOptionList.length == 0){
			   alert('아이템 옵션을 설정해주세요.');
			   $('#itemColor').focus();  
			   return false;
		   }		
		sendDataSetting(); 
	}
	   
	function sendDataSetting(){
		var str='';
	      
		$.each(itemOptionList, function(index, item){ 
			str+="<input type='hidden' name='itemColorList' value='"+item['color']+"'>";        
			str+="<input type='hidden' name='itemSizeList' value='"+item['size']+"'>";
			str+="<input type='hidden' name='itemCountList' value='"+item['count']+"'>";       
			
		}); 
		$('#frm').append(str);
	}
</script>