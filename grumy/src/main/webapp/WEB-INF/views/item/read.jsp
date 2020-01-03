<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="util" uri="/ELFunctions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="naver-site-verification"
	content="cdc66033ac54c3c0175fba92d71c46317e5c78e1" sa />

<!--PG크로스브라우징필수내용 시작-->
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<!--PG크로스브라우징필수내용 끝-->
<!--해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!--해당 CSS는 쇼핑몰 전체 슬라이드 배너에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. -->
<script type="text/javascript"
	src="https://www.slowand.com/ec-js/common.js"></script>
<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->
<script src="https://www.slowand.com/yangji/js/jquery.bxslider.min.js"></script>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />
<!--script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script-->
<link rel="canonical" href="http://www.slowand.com">
	<link rel="alternate" href="http://www.m.slowand.com/">
<meta name="google-site-verification"
			content="EFPjfmjiYaukHxgQEmFrlvyllFVJax3Pr1MlHCYhkgU" />
		<meta name="naver-site-verification"
			content="cdc66033ac54c3c0175fba92d71c46317e5c78e1" />
<script>
		$(document).ready(function(){

		});
			var selectedColor;
			var selectedSize;
            var list = {}; 
            var selectedItem = {};
            <c:forEach items="${dto.itemOptionList}" var="itemOption">
            list.itemOptionNo${itemOption.itemOptionNo}={itemColor:'${itemOption.itemColor}',itemSize:'${itemOption.itemSize}',itemCount:${itemOption.itemCount},itemOptionNo:${itemOption.itemOptionNo}}; 
            </c:forEach> 
            	function setTotalPrice(){
            		var totalCount = 0;
            		$.each(selectedItem, function(index, item){ 
            		    totalCount += item.count;
            		});
            		
            		$('#totalPrice').html((totalCount*${dto.price-dto.salePrice}).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+'원');      
            		$('#totalCount').html(totalCount);     
            	}
            	function checkColor(color) {
            		if(selectedColor == color) 
            			return;
            		if(!selectedColor)
            			$('#divItemSize').css('display', 'table-row');
            		$('#selectedItemColor').html(color);
            		$('#categoryItemColor').html('');
            		$.each(list, function(index, item){ 
            		    if(item.itemColor == color){
            		    	if(item.itemCount==0)
            		    		$('#categoryItemColor').append("<li class='ec-product-soldout' id='itemSize"+item.itemSize+"\"'><a href='#none'><span>"+item.itemSize+"</span></a></li>");		
            		    	else
            		    		$('#categoryItemColor').append("<li class='' id='itemSize"+item.itemSize+"'><a href='#none' onclick='checkSize(\""+item.itemSize+"\",\""+color+"\",\""+item.itemOptionNo+"\")'><span>"+item.itemSize+"</span></a></li>");
            		    	$('#itemColor'+color).attr('class','ec-product-selected');
            		    }
            		});
            		$('#itemColor'+selectedColor).attr('class','');
            		selectedColor = color;
			   	}
            	function itemCountUp(itemOptionNo){
            		updateItemCount(itemOptionNo,selectedItem[itemOptionNo].count+1);
            	}
            	function itemCountDown(itemOptionNo){
            		updateItemCount(itemOptionNo,selectedItem[itemOptionNo].count-1);
            	}
            	function itemCountModify(itemOptionNo,cnt){
            		updateItemCount(itemOptionNo,cnt);
            	}

            	function updateItemCount(itemOptionNo,cnt){
             		if(isNaN(cnt) || cnt<1){
            			alert('수량은 1 이상이어야 합니다');
            			$('#count'+itemOptionNo).val(selectedItem[itemOptionNo].count);
            			return false;
            		}else if(cnt> list['itemOptionNo'+itemOptionNo].itemCount){
            			alert('최대 주문수량은 '+ list['itemOptionNo'+itemOptionNo].itemCount +'개 입니다.');
            			$('#count'+itemOptionNo).val(selectedItem[itemOptionNo].count);
            			return false;
            		}
            		selectedItem[itemOptionNo].count = Number(cnt);
            		$('#count'+itemOptionNo).val(cnt);
            		$('#orderInfo'+itemOptionNo).val(itemOptionNo+'/'+cnt);
            		setTotalPrice();
            	}

            	function deleteItem(itemOptionNo){
            		$('#selectedItem'+itemOptionNo).remove();
            		$('#orderInfo'+itemOptionNo).remove();
    				delete selectedItem[itemOptionNo];
    				setTotalPrice();
            	}
				function checkSize(size,color,itemOptionNo) {   
					if(selectedItem[itemOptionNo]){
						alert('이미 선택되어 있는 옵션입니다.');
						return;
					}
					$('#itemSize'+size).attr('class','ec-product-selected');
					$('#itemSize'+selectedSize).attr('class','');
					$('#selectedItemSize').html(size);
					selectedItem[itemOptionNo] = {itemSize:size,itemColor:color,itemOptionNo:itemOptionNo,count:1};
					selectedSize = size;
					
					var str = "";
					str += '<tr class="option_product" id="selectedItem'+itemOptionNo+'">';
					str += '<td>';  
					str += '<p 	class="product">';
					str += '${dto.title}<br> - <span>'+color+'/'+size+'</span>';
					str += '</p>';
					str += '</td>';
					str += '<td>';
					str += '<span class="quantity" style="width: 65px;">';
					str += '<input	type="text" id="count'+itemOptionNo+'" class="quantity_opt eProductQuantityClass" value="1" onblur="itemCountModify('+itemOptionNo+',this.value)">';
					str += '<a href="#none">';
					str += '<img src="//img.echosting.cafe24.com/design/skin/default/product/btn_count_up.gif"id="option_box1_up" class="up option_box_up" alt="수량증가" onclick="itemCountUp('+itemOptionNo+')">';
					str += '</a>';
					str += '<a href="#none">';
					str += '<img src="//img.echosting.cafe24.com/design/skin/default/product/btn_count_down.gif" ';
					str += 'id="option_box1_down" class="down option_box_down"	alt="수량감소" onclick="itemCountDown('+itemOptionNo+')">';
					str += '</a>';
					str += '</span>';
					str += '<a href="#none" class="delete">';
					str += '<img src="//img.echosting.cafe24.com/design/skin/default/product/btn_price_delete.gif"';
					str += 'alt="삭제" id="option_box1_del" class="option_box_del" onclick="deleteItem('+itemOptionNo+')">';
					str += '</a></td><td class="right">	<fmt:formatNumber value="${dto.price-dto.salePrice}" pattern="###,###,###"/>원</td></tr>';
					
					$('.option_products').append(str);
					$('#orderInfoForm').append('<input type="hidden" id="orderInfo'+itemOptionNo+'" value="'+itemOptionNo+'/1" name="orderInfoList"/>');
					setTotalPrice();
	
				}        
				function addToCart(){
					if(Object.keys(selectedItem).length<=0){
						alert('필수 옵션을 선택해주세요.');
						return;
					}
					if(!isLoginUser())
						return;
					
					var updateList = [];
					var insertList = [];
            		$.each(selectedItem, function(index, item){ 
            			insertList.push({itemOptionNo:item.itemOptionNo,count:item.count});
            		});
            		
					$.ajax({
						type : 'put',
						url : "../cart/checkDuplicate",
						data :  JSON.stringify({'list':insertList,'id':'${sessionScope.id}'}),
						contentType : "application/json; charset=utf-8",
						success : function(result, status, xhr) {
							if(result != 'noDuplicate'){
								if(!confirm("장바구니에 동일한 상품이 있습니다. 장바구니에 추가하시겠습니까?"))
									return;
								
								var duplicateOptionNoList = result.split('/');
								for(var i=0;i<insertList.length;i++){
									const idx = duplicateOptionNoList.indexOf(insertList[i].itemOptionNo); 
									if (idx > -1){
										updateList.push({itemOptionNo:insertList[i].itemOptionNo,count:insertList[i].count});
										insertList.splice(i--, 1);
									}
								}
							}
		                     $.ajax({
		                         type : 'put',
		                         url : "../cart/insert",
		                         data :  JSON.stringify({'insertList':insertList,'id':'${sessionScope.id}','updateList':updateList}),
		                         contentType : "application/json; charset=utf-8",
		                         success : function(result, status, xhr) {
		                            $('#basketAddSucess').css('display', 'block');
		                         },
		                         error : function(xhr, status, er) {
		                            alert('에러:'+status);
		                         }
		                      });
					
						},
						error : function(xhr, status, er) {
							alert('에러:'+status);
						}
					});
				}
				function buyNow(){
					if(Object.keys(selectedItem).length<=0){
						alert('필수 옵션을 선택해주세요.');
						return;
					}
					if(!isLoginUser())
						return;
					$('#orderInfoForm').submit();
					
				}
				function isLoginUser(){ 
					if(${sessionScope.id == null || sessionScope.id==''}){
						var result = confirm("로그인을 해야 이용할 수 있습니다. 로그인창으로 이동하시겠습니까?");
						if(result){
							$('#loginForm').submit();
						}
						return false;
					}
					return true;
				}
				function closeBasketAddSucess(){
					$('#basketAddSucess').css('display', 'none');
				}
            	function showReplyList(nowPage){
                    var itemNo = ${dto.itemNo};

                    $.getJSON("./reply/list/" + itemNo + "/" + nowPage + ".json",
                          function(data) {
                        		var str="";
                        
                        		if(list == null || list.length == 0){
                          			return;
                        		}
                        
                        		for (var i = 0, len = list.length || 0; i < len; i++) {
                          			str +="<li class='list-group-item' data-rnum='"+list[i].rnum+"'>";
                          			str +="<div><div class='header'><strong class='primary-font'>"+list[i].id+"</strong>"; 
                          			str +="<small class='pull-right text-muted'>"+list[i].regdate+"</small></div>";
                          			str +=replaceAll(list[i].content,'\n','<br>')+"</div></li>";        
                        		}                      
                          });
                            


                }//end showList
            	function read(no){
            		var url = "../community/read";
            		url += "?board_no="+no;
            		
            		location.href= url;
            	}
            	function createCommunity(){
            		if(${sessionScope.id!=null}){
            			location.href="../community/create?itemNo=${dto.itemNo}";
            		}else{
            			if(confirm("로그인을 해야 이용할 수 있습니다. 로그인창으로 이동하시겠습니까?")){
            				$('#loginForm2').submit();
            			}else{
            				return false;
            			}
            		}
            	}
            
				
         </script>
		<meta name="author" content="슬로우앤드 - 천천히 그리고,">
			<meta name="keywords"
				content="20대 여성의류 베이직쇼핑몰, 데일리룩, 캠퍼스룩, 원피스, 스커트, 악세사리, 니트, 가디건, 등" />
			<meta name="description"
				content="20대 여성의류 베이직쇼핑몰, 데일리룩, 캠퍼스룩, 원피스, 스커트, 악세사리, 니트, 가디건, 등">

				<meta name="viewport" content="width=device-width"
					,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
					<link rel="canonical"
						href="http://slowand.com/product/slowmade-윈터즈-양기모-후드집업-5-color/3596/" />
					<link rel="alternate"
						href="http://m.slowand.com/product/slowmade-윈터즈-양기모-후드집업-5-color/3596/" />
					<meta property="og:url"
						content="http://slowand.com/product/slowmade-윈터즈-양기모-후드집업-5-color/3596/" />
					<meta property="og:title"
						content="#SLOWMADE. 윈터즈 양기모 후드집업 - 5 color" />
					<meta property="og:description"
						content="맨투맨,후디에 이어 요청많았던 후드집업♥ 양기모로 한겨울 미리미리 준비하기 :)  도톰하고 폭닥한 특양기모원단으로 가볍게 티 위에만 걸쳐도 포근해요 *.* (니켈칩/3중재봉/아일렛디테일)" />
					<meta property="og:site_name" content="슬로우앤드" />
					<meta property="og:type" content="product" />
					<meta property="og:image"
						content="https://slowand.com/web/product/big/201911/4feb21170f3151de87c3fa17e5893c78.gif" />
					<meta property="product:price:amount" content="29800" />
					<meta property="product:price:currency" content="KRW" />
					<meta property="product:sale_price:amount" content="29800" />
					<meta property="product:sale_price:currency" content="KRW" />
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

					<title>#SLOWMADE. 윈터즈 양기모 후드집업 - 5 color - 슬로우앤드</title>
					<meta name="path_role" content="PRODUCT_DETAIL" />
					<meta name="author" content="슬로우앤드" />
					<meta name="description" content="" />
					<meta name="keywords"
						content="#SLOWMADE. 윈터즈 양기모 후드집업 - 5 color, , 슬로우앤드, OUTER" />
					<meta name="design_html_path"
						content="http://slowand.com/product/detail.html" />
</head>

<body id="cmn">
	<div
		class="xans-element- xans-product xans-product-basketadd ec-base-layer "
		id="basketAddSucess"
		style="position: fixed; top: 50%; left: 50%; z-index: 1000; width: 450px; margin: -175px 0 0 -225px; display: none">
		<div class="header">
			<h3>장바구니 담기</h3>
		</div>
		<div class="content"
			style="padding: 185px 20px 65px; text-align: center; background: url(//img.echosting.cafe24.com/skin/base/product/bg_add_basket.gif) no-repeat 50% 68px;">
			<p>장바구니에 상품이 정상적으로 담겼습니다.</p>
		</div>
		<div class="ec-base-button">
			<a href="${pageContext.request.contextPath}/cart/list" alt="장바구니 이동"
				class="yg_btn yg_btn1 yg_btn_hover_fff">장바구니 이동</a> <a href="#none"
				onclick="$('#basketAddSucess').hide();" alt="쇼핑계속하기"
				complete="complete" class="yg_btn yg_btn3 yg_btn_hover_333">쇼핑계속하기</a>
		</div>
		<a class="close" onclick="$('#basketAddSucess').hide();"><img
			src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif"
			alt="닫기"></a>
	</div>
	<div id="skipNavigation">
		<p>
			<a href="#category">전체상품목록 바로가기</a>
		</p>
		<p>
			<a href="#contents">본문 바로가기</a>
		</p>
	</div>

	<div id="wrap">
		<!-- 상단카테고리 -->

		<!-- //상단카테고리 -->

		<div id="container">
			<div id="contents">

				<!--
    $category_page = /product/list.html
    $project_page = /product/project.html
    $jointbuy_page = /product/jointbuy.html
-->

				<form action="${pageContext.request.contextPath}/order/order"
					id="orderInfoForm" class="form-horizontal" method="post"
					enctype="application/x-www-form-urlencoded;charset=UTF-8"
					style="display: none">
					<input type="hidden" name="url"
						value="${pageContext.request.contextPath}/item/read?itemNo=${dto.itemNo}"></input>
				</form>
				<form action="${pageContext.request.contextPath}/member/login"
					id="loginForm" class="form-horizontal" method="post"
					enctype="application/x-www-form-urlencoded;charset=UTF-8"
					style="display: none">
					<input type="hidden" name="url"
						value="/item/read?itemNo=${dto.itemNo}"></input>
				</form>


				<!-- 상단 제품 정보  -->
				<div class="xans-element- xans-product xans-product-detail">
					<div class="detailArea ">
						<!-- 이미지 영역 -->
						<div
							class="xans-element- xans-product xans-product-image imgArea ">
							<div class="keyImg">
								<div class="thumbnail">
									<a
										href="${pageContext.request.contextPath}/item/read?itemNo=${dto.itemNo}"
										alt="P0000FII"
										onclick="window.open(this.href, 'image_zoom2', 'toolbar=no,scrollbars=auto,resizable=yes,width=450,height=693,left=0,top=0', this);return false;">
										<img
										src="${pageContext.request.contextPath}/images/${dto.image}"
										alt="#SLOWMADE. 윈터즈 양기모 후드집업 - 5 color" class="BigImage" />
									</a>
									<div id="zoom_wrap"></div>
									<div class="color displaynone"></div>
								</div>
							</div>
							<!-- 참고 : 뉴상품관리 전용 모듈입니다. 뉴상품관리 이외의 곳에서 사용하면 정상동작하지 않습니다. -->
							<div
								class="xans-element- xans-product xans-product-addimage listImg">
								<ul>
									<li class="xans-record-"><img
										src="//slowand.com/web/product/small/201911/4ea4f1ef5b1ebf6b8498831b8ef4b233.gif"
										class="ThumbImage" alt="" /></li>
								</ul>
							</div>
							<!-- //참고 -->
							<div class="likeButton displaynone">
								<button type="button">
									<span class="title">좋아요</span><span class="count"></span>
								</button>
							</div>
						</div>
						<!-- //이미지 영역 -->

						<!-- 상세정보 내역 -->
						<div class="infoArea">
							<div class="headingArea">
								<span class="icon"><img
									src="//slowand.com/web/upload/icon_201707201539045000.jpg"
									class="icon_img" alt="추천" /><img
									src="//slowand.com/web/upload/icon_201707201607164100.png"
									class="icon_img" alt="New" /><img
									src="//slowand.com/web/upload/custom_2.gif" /><img
									src="//slowand.com/web/upload/custom_3.gif" /></span>
								<h2>${dto.title}</h2>
								<span class="delivery displaynone">(해외배송 가능상품)</span>
								<!-- 공급사 바로가기버튼 영역 -->
								<div class="supply displaynone">
									<span></span> <a href="#none" onclick=""><img src=""
										alt="공급사 바로가기" /></a>
								</div>
								<!-- //공급사 바로가기버튼 영역 -->
							</div>

							<div class="xans-element- xans-product xans-product-detaildesign">
								<!--
                    출력 갯수 지정 변수, 없으면 설정된 전체가 나옵니다.
                    count = 10
                -->
								<table border="1" summary="">
									<caption>기본 정보</caption>
									<tbody>
										<tr style="display: none;" class=" xans-record-">
											<td scope="row"><span
												style="font-size: 16px; color: #555555;">상품명</span>
												<p>
													<span style="font-size: 16px; color: #555555;">#SLOWMADE.
														윈터즈 양기모 후드집업 - 5 color</span>
												</p></td>
										</tr>
										<c:if test="${dto.salePrice > 0}">
											<tr class=" xans-record-">
												<td scope="row" class="list"><span
													style="font-size: 12px; color: #555555;">CUSTOM
														PRICE</span>
													<p>
														<span style="font-size: 12px; color: #555555;"><span
															id="span_product_price_custom"><strike>${dto.price}</strike></span></span>
													</p></td>
											</tr>
										</c:if>
										<tr class=" xans-record-">
											<td scope="row" class="list"><span
												style="font-size: 12px; color: #555555;">PRICE</span>
												<p>
													<span style="font-size: 12px; color: #555555;"><strong
														id="span_product_price_text">${dto.price-dto.salePrice}</strong><input
														id="product_price" name="product_price" value=""
														type="hidden" /></span>
												</p></td>
										</tr>
										<tr class=" xans-record-">
											<td scope="row" class="list"><span
												style="font-size: 12px; color: #555555;">DETAILS</span>
												<p>
													<span style="font-size: 12px; color: #555555;">${dto.description}</span>
												</p></td>
										</tr>
									</tbody>
								</table>
							</div>


							<div class="displaynone social">
								<p></p>
								<ul class="xans-element- xans-product xans-product-customsns ">
									<li></li>
								</ul>
							</div>

							<p class="displaynone">
								<img
									src="//img.echosting.cafe24.com/skin/base_ko_KR/product/txt_naver.gif"
									alt="개인결제창을 통한 결제 시 네이버 마일리지 적립 및 사용이 가능합니다." />
							</p>
							<!-- //상세정보 내역 -->

							<div class="infoAreaIn">
								<div class="fixedIn">
									<div class="fixed_button">
										<div class="open">
											옵션 선택 열기
											<svg xmlns="//www.w3.org/2000/svg" width="14" height="14"
												viewbox="0 0 24 24"> <path
												d="M0 16.67l2.829 2.83 9.175-9.339 9.167 9.339 2.829-2.83-11.996-12.17z"></path></svg>
										</div>
										<div class="close">
											옵션 선택 닫기
											<svg xmlns="//www.w3.org/2000/svg" width="14" height="14"
												viewbox="0 0 24 24"> <path
												d="M0 7.33l2.829-2.83 9.175 9.339 9.167-9.339 2.829 2.83-11.996 12.17z"></path></svg>
										</div>
									</div>
									<h2>#SLOWMADE. 윈터즈 양기모 후드집업 - 5 color</h2>
									<p class="fixed_tit">옵션을 선택해주세요</p>
									<p class="fixed_tit">옵션을 선택하시면 아래에 상품이 추가됩니다</p>
									<div class="fixed_cont">
										<table border="1" summary="">
											<caption>상품 옵션</caption>
											<tbody
												class="xans-element- xans-product xans-product-option xans-record-">
												<!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
												<tr
													class="xans-element- xans-product xans-product-option xans-record-">
													<th scope="row">COLOR</th>
													<td>
														<ul option_product_no="3596"
															option_select_element="ec-option-select-finder"
															option_sort_no="1" option_type="T" item_listing_type="S"
															option_title="COLOR" product_type="product_option"
															product_option_area="product_option_3596_0"
															option_style="button" ec-dev-id="product_option_id1"
															ec-dev-name="option1" ec-dev-class="ProductOption0"
															class="ec-product-button" required="true">

															<c:forEach var="itemOption" items="${dto.itemOptionList}">
																<c:if
																	test="${(empty pre_val)||itemOption.itemColor != pre_val}">
																	<li class="" option_value="컬러" link_image=""
																		title="아이보리" id="itemColor${itemOption.itemColor}"><a
																		href="javascript:;"
																		onclick="checkColor('${itemOption.itemColor}')"> <span>${itemOption.itemColor}</span></a>
																	</li>
																	<c:set var="pre_val" value="${itemOption.itemColor}" />
																</c:if>
															</c:forEach>
														</ul>



														<p class="value">
															[필수] <span
																class="ec-shop-front-product-option-desc-trigger"
																data-option_msg="옵션을 선택해 주세요" id="selectedItemColor">옵션을
																선택해 주세요</span>
														</p>
													</td>
												</tr>
												<tr class="displaynone" id="">
													<td colspan="2" class="selectButton"><a href="#none"
														onclick=""><img
															src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_manual_select.gif"
															alt="옵션 선택" /></a></td>
												</tr>
												<tr
													class="xans-element- xans-product xans-product-option xans-record-"
													id="divItemSize" style="display: none">
													<th scope="row">SIZE</th>
													<td><ul option_product_no="3668"
															option_select_element="ec-option-select-finder"
															option_sort_no="2" option_type="T" item_listing_type="S"
															option_title="SIZE" product_type="product_option"
															product_option_area="product_option_3668_0"
															option_style="button" ec-dev-id="product_option_id2"
															ec-dev-name="option2" ec-dev-class="ProductOption0"
															class="ec-product-button" required="true"
															id="categoryItemColor">
														</ul>
														<p class="value">
															[필수] <span
																class="ec-shop-front-product-option-desc-trigger ec-product-value"
																data-option_msg="옵션을 선택해 주세요" id="selectedItemSize">옵션을
																선택해 주세요</span>
														</p></td>
												</tr>




												<!-- //참고 -->
											</tbody>
										</table>
										<div class="guideArea">
											<!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
											<p class="info "></p>
											<!-- //참고 -->
											<span class="sizeGuide displaynone"><a href="#none"
												class="size_guide_info" product_no="3596">사이즈 가이드</a></span>
										</div>

										<!-- 참고 : 뉴상품관리 전용 모듈입니다. 뉴상품관리 이외의 곳에서 사용하면 정상동작하지 않습니다. -->
										<!-- //참고 -->
									</div>
									<!-- //fixed_cont -->

									<!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
									<div id="totalProducts" class=" fixed_cont">
										<!--p class="ec-base-help txtWarn txt11 displaynone"> 수량을 선택해주세요.</p>
                        <p class="ec-base-help txtWarn txt11 "> 위 옵션선택 박스를 선택하시면 아래에 상품이 추가됩니다.</p-->
										<table border="1" summary="">
											<caption>상품 목록</caption>
											<colgroup>
												<col style="width: 284px;" />
												<col style="width: 80px;" />
												<col style="width: 110px;" />
											</colgroup>
											<thead>
												<tr>
													<th scope="col">상품명</th>
													<th scope="col">상품수</th>
													<th scope="col">가격</th>
												</tr>
											</thead>
											<tbody class="displaynone">
												<tr>
													<td>#SLOWMADE. 윈터즈 양기모 후드집업 - 5 color</td>
													<td><span class="quantity"> <input
															id="quantity" name="quantity_name" style="" value="0"
															type="text" /> <a href="#none"><img
																src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
																alt="수량증가" class="QuantityUp up" /></a> <a href="#none"><img
																src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
																alt="수량감소" class="QuantityDown down" /></a>
													</span></td>
													<td class="right"><span class="quantity_price">29800</span>
														<span class="mileage displaynone">(<img src="" />
															<span class="mileage_price"></span>)
													</span></td>
												</tr>
											</tbody>
											<!-- 참고 : 옵션선택 또는 세트상품 선택시 상품이 추가되는 영역입니다. 쇼핑몰 화면에는 아래와 같은 마크업구조로 표시됩니다. 삭제시 기능이 정상동작 하지 않습니다.-->
											<tbody class="option_products">
											</tbody>




											<tfoot>
												<tr>
													<td colspan="3"><strong>TOTAL PRICE</strong> (qty) <span
														class="total"><strong><em id="totalPrice">0</em></strong>
															(<span id="totalCount">0</span> items)</span>
														<p class="ec-base-help txt11 displaynone EC-price-warning">할인가가
															적용된 최종 결제예정금액은 주문 시 확인할 수 있습니다.</p></td>
												</tr>
											</tfoot>
										</table>
									</div>
									<!-- //참고 -->

									<div class="xans-element- xans-product xans-product-action">
										<div class="fixed_cont_btn">
											<div class="ec-base-button">
												<a id="cartBtn" href="#none" class=" cart"
													onclick="addToCart()" alt="장바구니 담기">ADD TO CART</a> <a
													id="wishBtn" style="width: 100%" href="#none"
													class="first " onclick="buyNow()"><span alt="바로구매하기"
													id="btnBuy">BUY NOW</span> <span alt="예약주문"
													class="displaynone" id="cartBtn">예약주문</span></a> <a
													class="displaynone soldout" alt="SOLD OUT">SOLD OUT</a>
											</div>
										</div>



										<!-- 갯수 버튼 -->
										<div class="board_cnt ">
											<ul>
												<li><a href="#prdReview">REVIEW <span
														class="crema-product-reviews-count"
														>${rtotal}</span></a></li>
												<li><a href="#prdQnA">Q &amp; A<span>
															${qtotal}</span></a></li>
											</ul>
										</div>
										<!-- //갯수 버튼 -->

										<!-- Enliple Shop Log Tracker v3.5 start -->
										<script type="text/javascript">

</script>
										<script
											src="https://cdn.megadata.co.kr/js/en_script/3.5/enliple_min3.5.js"
											defer="defer" onload="mobRfShop()"></script>
										<!-- Enliple Shop Log Tracker v3.5 end  -->
										<!-- 네이버 체크아웃 구매 버튼 -->
										<div id="NaverChk_Button"></div>
										<!-- //네이버 체크아웃 구매 버튼 -->


									</div>
									<!-- //참고 -->
								</div>
								<!-- //fixedIn -->
							</div>
							<!-- //infoAreaIn -->
						</div>
						<!-- //infoArea -->
					</div>
					<!-- //detailArea -->









					<div class="eventArea displaynone ">
						<div class="event"></div>
					</div>
				</div>

				<!-- //상단 제품 정보 -->

				<div id="fixed"></div>
				<!-- offset().top 값을 위한 임의의 ID-->



				<div class="xans-element- xans-product xans-product-additional ">
					<!-- 상품상세정보 -->
					<div id="prdDetail" class="ec-base-tab grid5">
						<ul class="menu">
							<li class="selected"><a href="#prdDetail">DETAIL INFO</a></li>

							<li><a href="#prdReview">REVIEW <span
									class="cnt crema-product-reviews-count"
									>${rtotal}</span></a></li>
							<li><a href="#prdQnA">Q&amp;A <span class="cnt">${qtotal}</span></a></li>
						</ul>


						<div class="cont">
							<div
								class="xans-element- xans-bannermanage2 xans-bannermanage2-display-14 xans-bannermanage2-display xans-bannermanage2-14">
								<div class="">
									<a href="" alt=""></a>
								</div>
								<div class="">
									<a href="" alt=""></a>
								</div>
								<div class="">
									<a href="" alt=""></a>
								</div>
							</div>

							<p align="center" style="text-align: center;">
								<br>
							</p>
							<p align="center" style="text-align: center;">
								<br>
							</p>
							<p align="center" style="text-align: center;">
							${dto.content}             
							</p>
							
				<!-- //상품상세정보 -->
			</div>

			<div id="fixed_off"></div>
			<!-- offset().top 값을 위한 임의의 ID-->

			<div class="xans-element- xans-product xans-product-additional">

				<!-- 상품구매안내 -->
				<div id="prdInfo" class="ec-base-tab grid5">

					<!-- 상품사용후기 -->
					<div id="prdReview" class="ec-base-tab grid5">
						<ul class="menu">
							<li><a href="#prdDetail">DETAIL INFO</a></li>

							<li><a href="#prdReview">REVIEW <span
									class="cnt crema-product-reviews-count"
									>${rtotal }</span></a></li>
							<li><a href="#prdQnA">Q&amp;A <span class="cnt">${qtotal}</span></a></li>
						</ul>
						<div class="board" style=" padding:0px;">
							<h3 style="margin: 0px; ">REVIEW</h3>

						</div>
					</div>
					<!-- //상품사용후기 -->
					<div id="container">
	<div id="contents">
		<div
			class="xans-element- xans-board xans-board-listpackage-4 xans-board-listpackage xans-board-4 ">
		
			<div class="crema-reviews crema-applied">
				<html>
<head>
<style id="stndz-style"></style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" media="all"
	href="https://assets5.cre.ma/latte/assets/pc/application-63fd329e35e3773c28e1d8df536aae454ce5b6cd92e4611da41d87d241c8e733.css">
<link rel="stylesheet" type="text/css"
	href="https://www.slowand.com/ind-script/optimizer.php?filename=tZXPbsMgDMbv6a57DivtpD0Pf9yEjmCGjdq8_SjtYVUvWwoXJAz-Jf4sf8BMC8K4TxATTUktkJApJ4NgmOGYKAgYWhYKbyXwDn-5j2Zg8lkchUHTZWNiFtn6Ua9WTNtSRWmPv1LR7DJjYlAh4H78PEDM2juzm2XxwBZ3FtlNAfjLhQ9YVZhOrrJnVPbhL_6JujIWstkjlHoolz4owYnSup2pYmSIMwmxdxb3NXxfmxStrxmpCepIJK-gaq0usKhr38_OTij1aLytXVQ8bKfem6wVO1MFeBq7V4G3QENgGZyywSG7DlAh8uJiB_KMvge2OIzNpoe-UU0ulOHvobLSHahP5t0M_PCcNBTB9xC33DKNvDBIE9DpO2N5QPSlOld11x8&type=css&k=dda47177a62c2ed097a4e997d8e506b783c567e7&t=1566806466" />
<style type="text/css">
span.star, span.camera, .sprite_comment {
	background-image:
		url(https://assets5.cre.ma/p/slowand-com/brand_settings/00/00/00/00/01/sprite/1988520c3d2f19ba.png);
}

.mall-link-color {
	color: #7a582f;
}

.review_comment_color {
	color: #6db67e;
}

</style>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/plugins/ua/ecommerce.js"></script>
<script src="//www.google-analytics.com/analytics.js"></script>
<script>
var listp={};
<c:forEach items="${listp}" var="dto">
	listp['reviewNo${dto.reviewNo}'] = {'picture':'${dto.picture}','itemPicture':'${dto.itemPicture}','itemTitle':'${dto.itemTitle}','id':'${dto.id}','height':'${dto.height}','weight':'${dto.weight}','mySize':'${dto.mySize}','itemColor':'${dto.itemColor}','itemSize':'${dto.itemSize}','content':'${dto.content}','replyContent':'${dto.replyContent}'};
</c:forEach>         
console.log(listp);


  function create_reply(reviewNo) {
	   var url = "create_reply";
      url += "?reviewNo="+reviewNo;
      
      location.href = "${pageContext.request.contextPath}/review/list/" + url;
        }
   function update(reviewNo){
	   var url = "update";
      url += "?reviewNo="+reviewNo;
      location.href = "${pageContext.request.contextPath}/review/list/" + url;
       }
   function delete1(reviewNo) {
	 if (confirm("정말 삭제하시겠습니까??") == true){    //확인
 	var url = "delete";
         url += "?reviewNo="+reviewNo;
         location.href="${pageContext.request.contextPath}/review/list/" + url;
 }else{   //취소
   return false;
  }
 }

</script>
</head>
<body class="unknown unknown-78 windows_os reviews index widget_1 ko-KR"
	lang="ko-KR" data-action="index" data-brand-code="slowand.com"
	data-controller="reviews" data-enable-nonmember-evaluation="true"
	data-facebook-app-id="339825122890117" data-facebook-sdk-version="v2.9"
	data-gaq-account="UA-45818307-10" data-iframe-id="crema-reviews-1"
	data-is-logged-in="true"
	data-loader-url="//assets5.cre.ma/m/widgets/loader.gif"
	data-login-alert="로그인이 필요한 서비스입니다. 로그인 하시겠습니까?"
	data-mall-login-url="http://www.slowand.com/member/login.html"
	data-no-popstate="false"
	data-parent-url="https://www.slowand.com/board/review/4/"
	data-rails-env="production" data-review-message-all-exposed="false"
	data-shop-builder="cafe24" data-widget-id="1"
	data-fixed-top-menu-height="0" data-device="pc">
	<div id="content">
		<div class="reviews_index reviews_index--list js-pagination-list ">
			<div class="reviews_index__head">
				<div class="reviews_index__title_bar">
					<div class="reviews_index__title">
						<strong>REVIEW</strong><span class="divider">|</span>문의글 혹은 악의적인 비방글은 무통보 삭제된다는 점 유의해주세요^^
					</div>
					
				<p align="right">
					<button  style="float: rigth" display:"none;
						onclick="location.href='${pageContext.request.contextPath}/review/list/'">
						<img src="${pageContext.request.contextPath}/images/rimg.PNG"></img></button>
					&nbsp;
				</p>
				</div>
				
				
				<script
					src="//assets.cre.ma/m/widgets/javascripts/tui-editor.min.js"></script>
				<link rel="stylesheet" media="all"
					href="//assets.cre.ma/m/widgets/css/tui-editor.min.css">
				<div id="google-translate-button" class="hidden"></div>
				<div class="reviews_index__body">
					<div class="page">
						<div class="reviews_index__no_data_message">아직 작성한 리뷰가 없습니다.</div>
						<ul class="reviews_index__reviews reviews">
							<c:forEach var="dto" items="${rlist}" varStatus="status">
							
								<li id="review_${dto.reviewNo}"
									class="review reviews_index_list_review "><a
									class="reviews_index_list_review__product_image  js-link-iframe"
									href="${pageContext.request.contextPath}/item/read?itemNo=${dto.itemNo}">
										<!-- 여기야 --> <img
										src="${pageContext.request.contextPath}/images/${dto.itemPicture}"
										style="background-image: url(&quot;//${pageContext.request.contextPath}/item/read?itemNo=${dto.itemNo}&quot;); background-size: cover; background-position: center center; opacity: 1;"
										class="" width="90" height="90">
								</a>
									<div class="reviews_index_list_review__lcontents">
										<div class="reviews_index_list_review__score">
											<div class="reviews_index_list_review__title">
												<div class="reviews_index_list_review__tags">
													<span
														class="reviews_index_list_review__tag reviews_index_list_review__tag--new"
														title="3일 이내 작성된 후기입니다">NEW</span>
												</div>
												<a
													class="reviews_index_list_review__title_text js-link-iframe"
													href="${pageContext.request.contextPath}/item/read?itemNo=${dto.itemNo}">
													${dto.itemTitle} </a>
											</div>
										</div>
										<div class="reviews_index_list_review__content review_content">
											<a
												class="reviews_index_list_review__content_inner review_content__collapsed link-expand">
												<div class="reviews_index_list_review__message">
													<span> ${dto.content}<span
														class="mall-link-color see_more">... 더보기</span> <br>
													</span>
												</div>
												<div class="reviews_index_list_review__foot">
													<div class="reviews_index_list_review__actions">
														<span
															class="reviews_index_list_review__comments_link mall-link-color">
															<span class="comments-count"> <c:if
																	test="${not empty dto.replyContent }">1</c:if> <c:if
																	test="${empty dto.replyContent }">0</c:if>
														</span> 개의 댓글이 있습니다
														</span>
													</div>
												</div>
											</a>
											<div
												class="reviews_index_list_review__content_inner review_content__expanded">
												<div class="reviews_index_list_review__message">
													<div class="review_options">
														<div class="review_option">
															<div class="review_option__title">키</div>
															<div class="review_option__content">${dto.height }</div>
														</div>
														<div class="review_option">
															<div class="review_option__title">몸무게</div>
															<div class="review_option__content">${dto.weight }</div>
														</div>
														<div class="review_option">
															<div class="review_option__title">평소사이즈</div>
															<div class="review_option__content">${dto.mySize }</div>
														</div>
														<div class="review_option">
															<div class="review_option__title">선택한 옵션</div>
															<div class="review_option__content">
																<c:if test="${not empty dto.itemColor}">
																	<span class="review_option__product_option"> <span
																		class="review_option__product_option_key">COLOR:</span>
																		<span class="review_option__product_option_value">${dto.itemColor}</span>
																	</span>
																</c:if>
																<c:if test="${not empty dto.itemSize}">
																	<span class="review_option__product_option"> <span
																		class="review_option__product_option_key">SIZE:</span>
																		<span class="review_option__product_option_value">${dto.itemSize}</span>
																	</span>
																</c:if>
															</div>
														</div>
														<div class="review_option__title">별점</div>
														<div class="review_option__content">${dto.star }</div>
													</div>
													<div class="reviews_index_list_review__message_expanded">
														${dto.content}</div>
												</div>
												<div class="reviews_index_list_review__foot">
													<div class="reviews_index_list_review__actions">
														<a
															class="reviews_index_list_review__comments_link mall-link-color js-link-collapse">리뷰
															접기</a>
														<div class="review_edit_action">
															<c:if
																test="${sessionScope.id== dto.id || sessionScope.grade=='A' }">
																<a onclick="javascript:delete1(${dto.reviewNo})"
																	class="review_edit_action__button review_edit_action__button--delete">삭제</a>
																<a onclick="javascript:update(${dto.reviewNo})"
																	class="review_edit_action__button review_edit_action__button--edit">수정</a>
															</c:if>
															<c:if test="${sessionScope.grade=='A' }">
																<a onclick="javascript:create_reply(${dto.reviewNo})"
																	class="review_edit_action__button review_edit_action__button--edit">답변</a>
															</c:if>
															<div class="review_edit_action__divider"></div>
														</div>
													</div>
													<c:if test="${not empty dto.replyContent }">
														<div
															class="comments js-comments-container js-ie-opacity-fix">
															<div class="comments__arrow_top"></div>
															<ul class="comments__list">
																<li class="comment">
																	<div class="comment__inner">
																		<div class="comment__lpane">slowand</div>
																		<div class="comment__rpane">
																			<div class="comment__error_message"></div>
																			<div class="comment__message">
																				<span class="comment__message_text">${dto.id}님!
																					${dto.replyContent} </span>
																			</div>
																		</div>
																	</div>
																</li>
															</ul>
														</div>
													</c:if>
												</div>
											</div>
										</div>
										<div class="reviews_index_list_review__rcontents">
											<div class="reviews_index_list_review__info_container">
												<span class="reviews_index_list_review__name">${dto.id }</span>
												<c:choose>
													<c:when test="${empty dto.picture}">
													</c:when>
													<c:otherwise>
														<img onclick="popup('${dto.reviewNo}')"
															src="${pageContext.request.contextPath}/storage/${dto.picture}"
															class="js-review-image" width="90px" height="90px"
															style="opacity: 1;">
													</c:otherwise>

												</c:choose>
											</div>
										</div></li>
								<!-- 이미지팝업 -->
						<div
									class="show_photo_review fullscreen_popup review fullscreen_popup--loaded"
									style="display: none; position: absolute; z-index: 1; overflow: auto;"
									tabindex="-1" id="myDIV">
									<div class="fullscreen_popup__background ie_png_fix"></div>
									<div id="photo-popup-container"
										class="show_photo_review__photo_popup_container fullscreen_popup__content_container">
										<div id="photo-popup-content"
											class="js-ie-opacity-fix show_photo_review__photo_popup_content fullscreen_popup__content"
											style="width: 724px; margin-top: 70px;">
											<div class="show_photo_review__photos_container">
												<div data-width="1024" data-height="1024" data-index="1"
													data-count="2" id="photo-container-1"
													class="show_photo_review__photo_container selected js-ie-opacity-fix"
													style="padding: 0px; max-height: 762px; overflow: hidden;">

													<img id="reviewPicture"
														src="${pageContext.request.contextPath}/storage/${dto.picture}"
														class="js-photo-container-review-image-zoom show_photo_review__photo_container_image"
														data-width="1024" data-height="1024" id="yke"
														style="max-width: 1024px; height: 724px; weight: 724px;">
												</div>
											</div>
											<div id="review-contents-container"
												class="show_photo_review__review_contents_container js-ie-opacity-fix">
												<div id="info-container"
													class="show_photo_review__info_container">
													<div class="show_photo_review__info ">
														<div class="show_photo_review__product">
															<div class="show_photo_review__product_thumbnail">
																<a id="reviewItemNo"
																	class="show_photo_review__link_to_product js-link-iframe"
																	href="${pageContext.request.contextPath}/item/read?itemNo=${dto.itemNo}">
																	<img id="reviewItemPicture"
																	src="${pageContext.request.contextPath}/images/${dto.itemPicture}"
																	width="70" height="70"
																	class="show_photo_review__link_to_product">
																</a>
															</div>
															<div class="show_photo_review__product_info">

																<div class="show_photo_review__product_name">
																	<a id="reviewItemTitle"
																		class="show_photo_review__link_to_product js-link-iframe"
																		href="${pageContext.request.contextPath}/item/read?itemNo=${dto.itemNo}">${dto.itemTitle}</a>
																</div>
																<div class="show_photo_review__product_score"></div>
																<div class="show_photo_review__user_name" id="reviewID">${dto.id }</div>
															</div>
														</div>
													</div>
												</div>
												<div id="message-container"
													class="js-ie-opacity-fix show_photo_review__message"
													style="height: 556px;">
													<div class="show_photo_review__message_contents">
														<div class="review_options">

															<div class="review_option">
																<div class="review_option__title">키</div>
																<div class="review_option__content" id="reviewHeight">${dto.height }</div>
															</div>

															<div class="review_option">
																<div class="review_option__title">몸무게</div>
																<div class="review_option__content" id="reviewWeight">${dto.weight }</div>
															</div>

															<div class="review_option">
																<div class="review_option__title">평소사이즈</div>
																<div class="review_option__content" id="reviewMySize">${dto.mySize }</div>
															</div>
															<div class="review_option">
																<div class="review_option__title">선택한 옵션</div>
																<div class="review_option__content">

																	<span class="review_option__product_option"> <span
																		class="review_option__product_option_key">COLOR:</span>
																		<span class="review_option__product_option_value"
																		id="reviewItemColor"></span>
																	</span> <span class="review_option__product_option"> <span
																		class="review_option__product_option_key">SIZE:</span>
																		<span class="review_option__product_option_value"
																		id="reviewItemSize"></span>
																	</span>
																</div>
															</div>
														</div>
														<div
															class="show_photo_review__all_messages js-ie-opacity-fix">
															<div class="show_photo_review__review_message"
																id="reviewContent">${dto.content }</div>
														</div>
														<div class="show_photo_review__feedback_container"
															id="reviewReply">
															<div
																class="comments js-comments-container js-ie-opacity-fix">
																<div class="comments__arrow_top"></div>
																<ul class="comments__list">
																	<li class="comment" id="comment_95269">
																		<div class="comment__inner">
																			<div class="comment__lpane">슬로우앤드</div>
																			<div class="comment__rpane">
																				<div class="comment__message">
																					<span class="comment__message_text"
																						id="reviewReplyContent">${dto.id }님!
																						${dto.replyContent}</span>
																				</div>
																			</div>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="js-ie-opacity-fix fullscreen_popup__close"
										style="top: 55px; right: 290px;" onclick="javascript:popup2()">
										<div class="sprites-circle-close-button ie_png_fix"></div>
									</div>
								</div>
							</c:forEach>
						</ul>
					</div>
				</div>
				<!--             푸터 -->
			</div>
		</div>
	</div>
	
		<div class="tui-tooltip" style="display: none;">
		<div class="arrow"></div>
		<span class="text"></span>
	</div>
	<!--[if IE 7]>
      <script src="//assets5.cre.ma/m/widgets/javascripts/ie7.js"></script>
    <![endif]-->
	<script>
         //<![CDATA[
         var ajax_setup_args = {
            cache : true,
            dataType : "script",
            accepts : {
               script : "text/javascript, application/javascript"
            }
         };
         $.ajaxSetup(ajax_setup_args);
         //]]>
      </script>
	<script>
         //<![CDATA[
         //]]>
      </script>
	<form id="form-upload-image" class="hidden" data-type="json"
		enctype="multipart/form-data"
		action="/slowand.com/preview_images/upload?secure_username=V2e70545df531ffd1464fc16b6c22db761&amp;widget_env=100"
		accept-charset="UTF-8" data-remote="true" method="post">
	<input type="hidden" name="url"
										value="/item/read?itemNo=${dto.itemNo }#prdQnA"></input>
		<input name="utf8" type="hidden" value="✓">
		<div id="upload-fields-container"></div>
	</form>
	</body>
				</html>
			</div>

		</div>
		${paging }
	</div>
	<hr class="layout">
</div>





					<div id="contents">
						<!-- 상품 Q&A -->
						<div id="prdQnA" class="ec-base-tab grid5">
							<ul class="menu">
								<li><a href="#prdDetail">DETAIL INFO</a></li>


								<li><a href="#prdReview">REVIEW <span
										class="cnt crema-product-reviews-count"
										>${rtotal }</span></a></li>
								<li class="selected"><a href="#prdQnA">Q&amp;A <span
										class="cnt">${qtotal }</span></a></li>
							</ul>
							<div class="board">
								<h3>Q&amp;A</h3>
								<form action="${pageContext.request.contextPath}/member/login"
									id="loginForm2" class="form-horizontal" method="post"
									enctype="application/x-www-form-urlencoded;charset=UTF-8"
									style="display: none">
									<input type="hidden" name="url"
										value="/item/read?itemNo=${dto.itemNo }#prdQnA"></input>
								</form>
								<div class="xans-element- xans-product xans-product-qna ">
									<div class="ec-base-table typeList">

										<table border="1" summary="">
											<colgroup>
												<col style="width: 70px;" />
												<col style="width: auto" />
												<col style="width: 100px;" />
												<col style="width: 100px;" />
											</colgroup>
											<thead
												class="xans-element- xans-board xans-board-listheader-4 xans-board-listheader xans-board-4 ">
												<tr>
													<th style="width: 70px;">NO</th>
													<th style="width: auto;">SUBJECT</th>
													<th style="width: 100px">WRITER</th>
													<th style="width: 100px">DATE</th>
												</tr>
											</thead>
											<tbody
												class="xans-element- xans-board xans-board-list-4 xans-board-list xans-board-4 center">
												<c:if test="${empty qlist }">
													<tr>
														<td></td>
														<td>등록된 글이 없습니다.</td>
														<td></td>
														<td></td>
													</tr>
												</c:if>
												<c:forEach var="dto" items="${qlist }" varStatus="status">
													<tr>
														<td>${qtotal-status.index}</td>
														<td class="subject left txtBreak"><c:if
																test="${not empty dto.itemTitle }">
																<span class="txtNum">${dto.itemTitle }</span>
																<br>
															</c:if> <a href="javascript:read(${dto.board_no });"> <c:if
																	test="${dto.indent ==1 }">
																	<img
																		src="${pageContext.request.contextPath }/images/re.gif" />
																</c:if> <img
																src="${pageContext.request.contextPath }/images/secret.png" />${dto.subject }
																<c:if
																	test="${util:newImg(fn:substring(dto.wdate,0,10)) }">
																	<img
																		src="${pageContext.request.contextPath }/images/new.gif" />
																</c:if></a></td>
														<td><script type="text/javascript">
										var len = ('${dto.writer}'.length);
										var name = '${dto.writer}'.replace(
												'${dto.writer}'.substr(1,
														len), "****");
										if(${dto.indent==1}){
											name = '${dto.writer}'
										}
											document.write(name);
										</script></td>
														<td><span class="txtNum">${dto.wdate}</span></td>
													</tr>

												</c:forEach>

											</tbody>
										</table>
									</div>


								</div>
								<div>
									<p align="right">
										<button class="yg_btn_30 yg_btn4"
											onclick="javascript:createCommunity();">WRITE</button>
										<button class="yg_btn_30 yg_btn4"
											onclick="location.href='${pageContext.request.contextPath}/community/list'">VIEW
											ALL</button>
									</p>
								</div>
								${qpaging }





							</div>
						</div>
						<!-- //상품Q&A -->
					</div>
				</div>
				<script>
    // 추가이미지 맞추기
    $('.xans-product-detail .imgArea .listImg li:first-child').remove();
</script>
				<script>
    $(window).ready(function(){
        var fix = $("#fixed").offset().top;
        //var windowWidth = $(window).width();
        //var leftR = (windowWidth / 2) + 630;
        //var leftL = leftR - 240;
        var height = $(".xans-product-detail .infoArea").height();
        $(".xans-product-detail .detailArea").css('min-height',height);        
        $(window).scroll(function(){
            if( $(window).scrollTop() >= fix ) {
                $(".xans-product-detail .infoArea .infoAreaIn").addClass('fixed');
                //$(".fixed_button").css('display','block').css('left',leftL);
                //$(".xans-product-detail .infoArea.fixed").css('opacity','0.9');
                $(".fixed_button").css('display','block');
            } else {
                $(".xans-product-detail .infoArea .infoAreaIn").removeClass('fixed');
                $(".fixed_button").css('display','none');
            }
        });
    });
    $(".fixed_button").click(function(){
        var fixed = $(".xans-product-detail .infoAreaIn.fixed");
        var bottom = fixed.css('bottom');        
        if ( bottom >= '-280px' ) {
            fixed.css('bottom',0);
            $(this).find('.open').css('display','none');
            $(this).find('.close').css('display','block');
        };
        if ( bottom >= '0px' ) {
            fixed.css('bottom','-280px');
            $(this).find('.close').css('display','none');
            $(this).find('.open').css('display','block');
        }
    });
</script>
				<script> 
	var recommend = $('.recommend_inner').bxSlider({
      minSlides: 5,
      maxSlides: 5,
      moveSlides: 5,
      slideWidth: 224,
      slideMargin: 20,
      auto: true,
      pause: 4500,
      speed: 1000,
      autoHover: true,
        touchEnabled: false,

      onSliderLoad: function(){
        $(".productSet").css("visibility", "visible").animate({opacity:1});
        var count = $('.productSet .bx-pager-item').length;
        if (count <= 1) {
            $('.productSet .bx-pager').hide();
        }        
      }
    });
    
    $(document).on('click','.bx-next, .bx-prev, .bx-pager',function() {
      recommend.stopAuto();
      recommend.startAuto();
    });
</script>
				<style>
.ec-base-tab[class*="grid"] .menu li a span.cnt {
	width: 18px;
}
</style>
				<!-- cre.ma / 팝업을 띄우는 코드 / 스크립트를 수정할 경우 연락주세요 (support@cre.ma) -->
				<div class="crema-popup"></div>
				<!-- cre.ma / PC 리뷰 초기화 / 스크립트를 수정할 경우 연락주세요 (support@cre.ma) -->
				<script>(function(i,s,o,g,r,a,m){if(s.getElementById(g)){return};a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.id=g;a.async=1;a.src=r;m.parentNode.insertBefore(a,m)})(window,document,'script','crema-jssdk','//widgets.cre.ma/slowand.com/init.js');</script>
				<!---- snapq start contact mail: support@snapvi.co.kr  --->
				<div id="sf_isdetail_page" style="display: none">1</div>
				<script async type="text/javascript"
					src="//snapfit.co.kr/js/sf_init_snapq_detail.js" defer='true'
					charset="utf-8"></script>
				<!---- snapq end --->
			</div>
			<hr class="layout" />
		</div>
		<hr class="layout" />
		<!-- 하단 -->
		<div id="footer" class="xans-element- xans-layout xans-layout-footer">
			<!--
        module="instagramwidget_display_1" 는 위젯리스트중 적용하고자 하는 위젯의 코드로 변경하여 사용하시면 됩니다.
    -->
			<div id="footerTop">


				<div>
					<p class="pageMove">
						<a class="pageTop" href="#header" title="화면 최상단으로 이동하기" alt="맨위로"><i
							class="fa fa-angle-up fa-2x"></i></a> <a class="pageBottom"
							href="#copyright" title="화면 최하단으로 이동하기" alt="맨아래로"><i
							class="fa fa-angle-down fa-2x"></i></a>
					</p>
				</div>
			</div>
		</div>

		<script>
    $(document).ready(function() {
        $('.pageTop').click(function(event) {
           event.preventDefault();                  
           $('html, body').animate({scrollTop: 0}, 400);
        });
        $('.pageBottom').click(function(event) {
           event.preventDefault();                  
           $('html, body').animate({scrollTop: $(document).height() + $(window).height()},400);
        });
    });
    
    $(".inner_b .address i.bizLink a").text("[Go Checking]");
</script>

	</div>
	<hr class="layout" />
	<!-- 참고: 결제를 위한 필수 영역 -->
	<div id="progressPaybar" style="display: none;">
		<div id="progressPaybarBackground" class="layerProgress"></div>
		<div id="progressPaybarView">
			<div class="box">
				<p class="graph">
					<span><img
						src="//img.echosting.cafe24.com/skin/base_ko_KR/layout/txt_progress.gif"
						alt="현재 결제가 진행중입니다." /></span> <span><img
						src="//img.echosting.cafe24.com/skin/base/layout/img_loading.gif"
						alt="" /></span>
				</p>
				<p class="txt">
					본 결제 창은 결제완료 후 자동으로 닫히며,결제 진행 중에 본 결제 창을 닫으시면<br /> 주문이 되지 않으니 결제
					완료 될 때 까지 닫지 마시기 바랍니다.
				</p>
			</div>
		</div>
	</div>
	<!-- //참고 -->




	</div>
	<div id="multi_option" style="display: none;"></div>
	<script type="text/javascript">var sAuthSSLDomain = "login2.cafe24ssl.com";</script>
	<script type="text/javascript"
		src="https://login2.cafe24ssl.com/crypt/AuthSSLManager.js"></script>
	<script type="text/javascript"
		src="https://login2.cafe24ssl.com/crypt/AuthSSLManager.plugin.js"></script>

	<script>
                try {
                    // Account ID 적용
                    if (!wcs_add) var wcs_add = {};
                    wcs_add["wa"] = "s_22a6d3e203";
            
                    // 마일리지 White list가 있을 경우
                    wcs.mileageWhitelist = ["anne2173.cafe24.com", "www.anne2173.cafe24.com", "m.anne2173.cafe24.com", "slowand.com", "www.slowand.com", "m.slowand.com"];

                    // 네이버 페이 White list가 있을 경우
                    wcs.checkoutWhitelist = ["anne2173.cafe24.com", "www.anne2173.cafe24.com", "m.anne2173.cafe24.com", "slowand.com", "www.slowand.com", "m.slowand.com"];
                
                    // 레퍼러 (스크립트 인젠션 공격 대응 strip_tags) ECQAINT-15101
                    wcs.setReferer("https://slowand.com/category/outer/24/");

                    // 유입 추적 함수 호출
                    wcs.inflow("slowand.com");

                    // 로그수집
                    wcs_do();
                } catch (e) {};
                </script>


	<!-- External Script Start -->

	<!-- fap -->
	<!-- CMC script -->
	<div id="fap_common_top_script" style="display: none;">
		<!-- Facebook Pixel Code -->
		<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.agent='plcafe24_kr';n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', '183242402324052');
  fbq('track', 'PageView');
</script>
		<noscript>
			<img height="1" width="1" style="display: none"
				src="https://www.facebook.com/tr?id=183242402324052&ev=PageView&noscript=1" />
		</noscript>
		<!-- End Facebook Pixel Code -->
	</div>
	<!-- CMC script -->
	<!-- CMC script -->
	<div id="fap_product_detail_script" style="display: none;">
		<script>
fbq('track', 'ViewContent', {
  content_name: '#SLOWMADE. 윈터즈 양기모 후드집업 - 5 color',
  content_category: '24',
  contents: [{'id' : '3596', 'item_price' : 29800}],
  content_type: 'product',
  value: 29800,
  currency: 'KRW'
 });
</script>
	</div>
	<!-- CMC script -->
	<!-- External Script End -->

	<script type="text/javascript"
		src="https://www.slowand.com/ind-script/optimizer.php?filename=nY-7DsIwDEX3lpXvsFqQmPmUPEwbNYkrPyT4e9JOSCzQ0ZbvOb4wU0EYRoaVaWJXgFHIOCAEEXgwVYVApVA9tcUZfrnH0All00S18_Q8GDTVo9LsXsjHoup8xo8oht4EWcDViuNwu8BqPqfQz1oySMQ-oqSpgiypXqGZyRS8kxR2Q2O3Ab9e-pO7oQpFy7gViRZ2x4J6j3GjvgE&type=css&k=a53c0167c1b780cc8388be1ef9dc0b901e71c22f&t=1543392667"></script>

	<script type="text/javascript"
		src="//slowand.com/ind-script/i18n.php?lang=ko_KR&domain=front&v=1911061085"
		charset="utf-8"></script>

	<script type="text/javascript"
		src="https://slowand.com//ind-script/optimizer.php?filename=tVTNbtswDH4BX_scQooedm6B3oYBLfoAtETHjCVRpaS02dOPzoIiWeukhhfoIID4fiT-mZ4DmtWtmE4g4BvLYAQzV7FoNtnQ6kdsNvnGnMNVSmAHs3mtKLvDtWru9Jwwk_BayWaL0bGY7AaTUbZkMU-4W-jw9k6BXwsdQ3MSiqW7DHRsa8BYHlnCA8ci7D3KZV4nCjbvEDUpsaAkwTKTVzAkDwW_JkFK5ie35NE8HeeAQ-BoaiE_ixfYVQ3lN0rzDLsabSG1VJyrtjSBZaHCmUd4as3L3_45lvDwe-cZ3CxSqAVG31_t2FdTxZkgJ_a7jrz_bkUddlB9GVOQA0i5hxj_tbw4K_iuPRTB50Ogade0Jy3VscwDLVZxpJOSNaN5qRJCprheqhKwgIMC0914zyDupK4abdoxOk167jmdcB73FX7YT97L2cGboGYEsf2s_ivQdfpDmrtuk69r0uWyBU-aG12sh2R9BBYLjnWILn8WVoWkzYHXc-jRJ7ziD3qIzl_TQNcQaV2vpq8rq_yH93u2oFt8YFX6Aw&type=js&k=1cdc6a5d44f089ef48186b1d398adf2e5a882d4e&t=1571605827"></script>
	<script type="text/javascript"
		src="https://slowand.com//ind-script/optimizer.php?filename=rdTBUsMgEAbgB9Crz8HoG7SpOp3p2I5R7yvZtjTA4gLW-PRi7Ggc66GBQyZDkv_LspCILRkUl1csHNOGwQhGT5Elip0Xr6BVA4H4fOcvxJ9HwTlRb8mJ-0HmhskGUUHADXG3UD4cD2v1LB6VA9n-ileRGa3shE_wmWMlMSMvD6OzNbGB7EpKMTEofRwZdn_dd1JSdGQPp5PX4Q73YvcSkbsUHZlPx1LbdlR26YJK1V-_BYYe6sf9sCbdUAyl2dX_W2Y8OjewKY7OlHcaOhXQFKTniauV3WisUaP8vFS-cE7wFHyLWcv3rVZkTF6ZA8r6ItBU2aYINIMARaCnr7-xGv8Zr5iaKMPcrulkolbveBtVg5kvz1jrH2QiC7ThgQLoSdPUoHMnle4Hkq034_beQrUopkx7j1yB3OJ4JaO9g_xhWon5AA&type=js&k=f519657ca6ed489b14241cedf5df9dab54591f1b&t=1571000610"></script>
	<script type="text/javascript"
		src="https://slowand.com//ind-script/optimizer.php?filename=rZXBbsIwDIZfYNc9R7S9AaVCQoLB2kk7m9RrQ5M4clIq3n6Z6DQ4QNV0h0ZVpP9z_MexRUMGxcsrC8dUMxgBzomyIScK9NSxRHH0YsVkg9gzVZ0MIscASouss5XGuGkoKLJPR_8spuDesI-7J4V9AN0Ov0vqbJiOghPyVmmEGieLM1XnEGBDdVIK8RuMWZImlo1yMzm5YpQh686TOQNgbVJ8uD1EGUi2Mxk7l1wYf5BVvNZ_ARUoMaW2biCLqlrbL0q9mShXP6mATiUUqCHJjEH_biFVuiRj7jrIV6pFF5qy3NyPswUbK_QmUo8Hfe8FXrObYHQ8RHQR_aQA4M9WXtZknUFzQE6W77hClo9qcASQgW8xzCc4VhJnMoaiSKbETu_IzslltOGP6HN05FV6_E_lm43y8wDy8cAbIfBITxuRX1riB8UB_Dt4vwE&type=js&k=f225e7df2a80165137842b4ee6b7303ab9119144&t=1573420409"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/ind-script/itemread.php"></script>

</body>
</html>
<!--       더보기기능 -->
	<script
		src="https://assets5.cre.ma/latte/assets/pc/application-1401d5144e9cd5ca5ebcbe7c38cd911898a823b3c451956ac54c315d1a9e704a.js"></script>

<script
	src="https://cdn.megadata.co.kr/js/en_script/3.5/enliple_min3.5.js"
	defer="defer" onload="mobRf()"></script>


