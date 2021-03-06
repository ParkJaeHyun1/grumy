<%@ page contentType="text/html; charset=UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--  헤더 시작 -->
<link rel="stylesheet" type="text/css"
	href="https://www.slowand.com/ind-script/optimizer.php?filename=tZXPbsMgDMbv6a57DivtpD0Pf9yEjmCGjdq8_SjtYVUvWwoXJAz-Jf4sf8BMC8K4TxATTUktkJApJ4NgmOGYKAgYWhYKbyXwDn-

5j2Zg8lkchUHTZWNiFtn6Ua9WTNtSRWmPv1LR7DJjYlAh4H78PEDM2juzm2XxwBZ3FtlNAfjLhQ9YVZhOrrJnVPbhL_6JujIWstkjlHoolz4owYnSup2pYmSIMwmxdxb3NXxfmxStrxmpCepIJK-

gaq0usKhr38_OTij1aLytXVQ8bKfem6wVO1MFeBq7V4G3QENgGZyywSG7DlAh8uJiB_KMvge2OIzNpoe-

UU0ulOHvobLSHahP5t0M_PCcNBTB9xC33DKNvDBIE9DpO2N5QPSlOld11x8&type=css&k=dda47177a62c2ed097a4e997d8e506b783c567e7&t=1566806466" />
<link rel="stylesheet" type="text/css"
	href="https://www.slowand.com/ind-script/optimizer.php?filename=rc49DsIwDAXgvWXlHBY_EjszEz1B6litaWpHcYLU25MiTkC7-

cl6nw2jzgSEbTFKBk6EzqfbBWLpA2M75jmAeWo9GQ8CNrFcYXEyvBjQDB4u66EOR9gIdU7sf2gVZvUlEAS3aMmgyVO6O5sooxbJe9ox1Yj5SUhb4J_WO2P8XiFsaqCmLijt-

fBcQmYbNXYjx8gy7Imjyrv2WSXi6n4A&type=css&k=9cab3c762c992913864605f00b0a184752d883c5&t=1543392667" />
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<div id="header">
	<div id="headerBottom">

		<!-- 로고 -->
		<div class="topArea">
			<h1 class="xans-element- xans-layout xans-layout-logotop "
				id="logotype">
				<a href="${pageContext.request.contextPath}"> <!--span>그루미</span-->
					<img src="${pageContext.request.contextPath}/images/grumy.jpg"
					style="margin-top: 0px; width: 153px; height: auto; padding-top: 20px;" />
				</a>
			</h1>

		</div>
		<!-- // 로고 -->

		<div class="myList">


			<c:choose>
				<c:when
					test="${not empty sessionScope.id && sessionScope.grade =='A' }">
					<div class="xans-element- xans-layout xans-layout-statelogoff ">
						<a href="${pageContext.request.contextPath}/admin/main">ADMIN
							PAGE</a> <a href="${pageContext.request.contextPath}/member/list">LIST</a>
						<a href="${pageContext.request.contextPath}/member/logout">LOGOUT</a>
					</div>
				</c:when>
				<c:when
					test="${not empty sessionScope.id && sessionScope.grade =='H' }">
					<div class="xans-element- xans-layout xans-layout-statelogoff ">
						<a href="${pageContext.request.contextPath}/member/logout"
							class="log">LOGOUT</a> <a
							href="${pageContext.request.contextPath}/member/update">MODIFY</a>
						<a
							href="${pageContext.request.contextPath }/mypage/order/list">ORDER</a>
						<a href="${pageContext.request.contextPath}/mypage/index">MYPAGE</a>
						<a class=" cart"
							href="${pageContext.request.contextPath}/cart/list">CART</a>          
					</div>
				</c:when>
				<c:when
					test="${not empty sessionScope.id && sessionScope.grade =='S' }">
					<div class="xans-element- xans-layout xans-layout-statelogoff ">
						<a href="${pageContext.request.contextPath}/member/logout"
							class="log">LOGOUT</a> <a
							href="${pageContext.request.contextPath}/member/update">MODIFY</a>
						<a
							href="${pageContext.request.contextPath }/mypage/order/list">ORDER</a>
						<a href="${pageContext.request.contextPath}/mypage/index">MYPAGE</a>
						<a class=" cart"
							href="${pageContext.request.contextPath}/cart/list">CART</a>
					</div>
				</c:when>
				<c:otherwise>
					<div class="xans-element- xans-layout xans-layout-statelogoff ">
						<a href="${pageContext.request.contextPath}/member/login"
							class="log">LOGIN</a> <a
							href="${pageContext.request.contextPath}/member/create">JOIN</a>
						<a href="${pageContext.request.contextPath}/mypage/order/list"
							class="log">ORDER</a> <a
							href="${pageContext.request.contextPath}/mypage/index"
							class="log">MYPAGE</a> <a class=" cart"
							href="${pageContext.request.contextPath}/cart/list"
							class="log">CART</a>
					</div>
				</c:otherwise>       
			</c:choose>

			<!-- cre.ma / 로그인 회원 정보 / 스크립트를 수정할 경우 연락주세요 (support@cre.ma) -->


			<div class="xans-element- xans-layout xans-layout-category main_cate">
				<div class="position">
					<ul>
						<li class="xans-record-"><a href="#"
							onmouseenter="blockSubMenu('COMMUNITY')"
							onmouseleave="noneSubMenu('COMMUNITY')"
							style="font-weight: unset">COMMUNITY</a>
							<div class="sub-category" id="sub_menu_COMMUNITY"
								style="display: none" onmouseenter="blockSubMenu('COMMUNITY')"
								onmouseleave="noneSubMenu('COMMUNITY')">
								<ul class="gnb_sub">
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/notice/list">NOTICE<span></span></a></li>
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/community/list">상품
											문의<span></span>
									</a></li>
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/service/list">고객센터<span></span></a></li>
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/review/list/">REVIEW<span></span></a></li>

								</ul>
							</div></li>
					</ul>
				</div>
			</div>


			<form id="searchBarForm" name="search"
				action="${pageContext.request.contextPath}/item/search"
				onsubmit="return check()" method="get" target="_self"
				enctype="multipart/form-data">
				<!-- 			<input id="banner_action" name="banner_action" value="" type="hidden" /> -->
				<div class="xans-element- xans-layout xans-layout-searchheader ">
					<fieldset>
						<legend>검색</legend>
						<input type="hidden" name="orderby" value="itemNo" /> <input
							type="hidden" name="type" value="SearchTotal" /> <input
							type="hidden" name="search_type" value="title" /> <input
							id="keyword" name="keyword" fw-filter="" fw-label="검색어" fw-msg=""
							class="inputTypeText" placeholder="" value="${keyword}"
							type="text" /> <input type="image"
							src="https://www.slowand.com/web/upload/yangji_pc_crumb/btn_search.png"
							alt="검색" onclick="document.getElementById('search').submit();" />

					</fieldset>
				</div>
			</form>



		</div>
		<script>
			function check() {
				if (document.search.keyword.value == "") {
					alert("검색어를 입력하세요.");
					document.search.keyword.focus();
					return false;
				}

			}

			// 메인메뉴에 마우스오버시 하위메뉴 나타남
			$(".gnb > li").mouseenter(function() {
				//$(this).find(".gnb_sub").stop().slideDown(200);
				$(this).find(".gnb_sub").stop().css('display', 'block');
			});
			$(".gnb > li").mouseleave(function() {
				$(this).find(".gnb_sub").css("display", "none");
			});

			// 메인메뉴에 마우스오버시 하위메뉴 나타남 *커뮤니티 이동 양지수정*
			$(".myList > .xans-layout-boardinfo").mouseenter(function() {
				//$(this).find(".gnb_sub").stop().slideDown(200);
				$(this).find(".gnb_sub").stop().css('display', 'block');
			});
			$(".myList > .xans-layout-boardinfo").mouseleave(function() {
				$(this).find(".gnb_sub").css("display", "none");
			});
			function blockSubMenu(name) {
				$('#sub_menu_' + name).css('display', 'block');
			}
			function noneSubMenu(name) {
				$('#sub_menu_' + name).css('display', 'none');
			}
		</script>
		<!-- 메인 메뉴 -->
		<ul class="gnb grid5">
			<div class="xans-element- xans-layout xans-layout-category main_cate">
				<div class="position">
					<ul> 
						<li class="xans-record-"><a  style="font-weight: bold"             
							href="${pageContext.request.contextPath}/item/best">BEST20</a></li>
                                          
						<li class="xans-record-"><a
							href="${pageContext.request.contextPath}/item/list/?type=OUTER&orderby=itemNo"
							onmouseenter="blockSubMenu('OUTER')"
							onmouseleave="noneSubMenu('OUTER')">OUTER</a>
							<div class="sub-category" id="sub_menu_OUTER"
								style="display: none" onmouseenter="blockSubMenu('OUTER')"
								onmouseleave="noneSubMenu('OUTER')">
								<ul class="gnb_sub">
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=핸드메이드&orderby=itemNo">핸드메이드<span></span></a></li>
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=코트/자켓&orderby=itemNo">코트/자켓<span></span></a></li>
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=가디건&orderby=itemNo">가디건<span></span></a></li>
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=점퍼&orderby=itemNo">점퍼<span></span></a></li>
								</ul>
							</div></li>


						<li class="xans-record- on"><a
							href="${pageContext.request.contextPath}/item/list/?type=TOP&orderby=itemNo"
							onmouseenter="blockSubMenu('TOP')"
							onmouseleave="noneSubMenu

('TOP')">TOP</a>
							<div class="sub-category" id="sub_menu_TOP" style="display: none"
								onmouseenter="blockSubMenu('TOP')"
								onmouseleave="noneSubMenu

('TOP')">
								<ul class="gnb_sub">
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=니트/가디건&orderby=itemNo">니트/가디건<span></span></a></li>
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=맨투맨/후드/티셔츠&orderby=itemNo">맨투맨/후드/티셔츠<span></span></a></li>
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=셔츠/블라우스&orderby=itemNo">셔츠/블라우스<span></span></a></li>
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=슬리브리스&orderby=itemNo">슬리브리스<span></span></a></li>
								</ul>
							</div></li>
						<li class="xans-record-"><a
							href="${pageContext.request.contextPath}/item/list/?type=DRESS&orderby=itemNo">DRESS</a></li>
						<li class="xans-record-"><a
							href="${pageContext.request.contextPath}/item/list/?type=SKIRT&orderby=itemNo"
							onmouseenter="blockSubMenu('SKIRT')"
							onmouseleave="noneSubMenu

('SKIRT')">SKIRT</a>
							<div class="sub-category" id="sub_menu_SKIRT"
								style="display: none" onmouseenter="blockSubMenu('SKIRT')"
								onmouseleave="noneSubMenu

('SKIRT')">
								<ul class="gnb_sub">
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=미니&orderby=itemNo">미니<span></span></a></li>
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=미디/롱&orderby=itemNo">미디/롱<span></span></a></li>

								</ul>
							</div></li>


						<li class="xans-record-"><a
							href="${pageContext.request.contextPath}/item/list/?type=BOTTOM&orderby=itemNo"
							onmouseenter="blockSubMenu('BOTTOM')"
							onmouseleave="noneSubMenu

('BOTTOM')">BOTTOM</a>
							<div class="sub-category" id="sub_menu_BOTTOM"
								style="display: none" onmouseenter="blockSubMenu('BOTTOM')"
								onmouseleave="noneSubMenu

('BOTTOM')">
								<ul class="gnb_sub">
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=데님&orderby=itemNo">데님<span></span></a></li>
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=면바지/슬랙스&orderby=itemNo">면바지/슬랙스<span></span></a></li>
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=쇼츠&orderby=itemNo">쇼츠<span></span></a></li>

								</ul>
							</div></li>



						<li class="xans-record-"><a
							href="${pageContext.request.contextPath}/item/list/?type=SHOES/BAG&orderby=itemNo"
							onmouseenter="blockSubMenu('SHOESBAG')"
							onmouseleave="noneSubMenu

('SHOESBAG')">SHOES/BAG</a>
							<div class="sub-category" id="sub_menu_SHOESBAG"
								style="display: none" onmouseenter="blockSubMenu('SHOESBAG')"
								onmouseleave="noneSubMenu

('SHOESBAG')">
								<ul class="gnb_sub">
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=슈즈&orderby=itemNo">슈즈<span></span></a></li>
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=백&orderby=itemNo">백<span></span></a></li>

								</ul>
							</div></li>

						<li class="xans-record-"><a
							href="${pageContext.request.contextPath}/item/list/?type=ACC&orderby=itemNo"
							onmouseenter="blockSubMenu('ACC')"
							onmouseleave="noneSubMenu

('ACC')">ACC</a>
							<div class="sub-category" id="sub_menu_ACC" style="display: none"
								onmouseenter="blockSubMenu('ACC')"
								onmouseleave="noneSubMenu

('ACC')">
								<ul class="gnb_sub">
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=쥬얼리&orderby=itemNo">쥬얼리<span></span></a></li>
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=모자&orderby=itemNo">모자<span></span></a></li>
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=벨트&orderby=itemNo">벨트<span></span></a></li>
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=양말&orderby=itemNo">양말<span></span></a></li>
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=홈웨어&orderby=itemNo">홈웨어<span></span></a></li>
									<li class="xans-record-"><a
										href="${pageContext.request.contextPath}/item/list/?type=etc&orderby=itemNo">etc<span></span></a></li>

								</ul>
							</div></li>



					</ul>
				</div>
			</div>
			<!--li module="Layout_BoardInfo"><a href="/board/free/list.html?board_no=1">COMMUNITY</a>
                <ul class="gnb_sub">
                    <li><a href="{$link_board_list}">{$board_name}<span></span></a></li>
                    <li><a href="{$link_board_list}">{$board_name}<span></span></a></li>
                </ul>
            </li-->
		</ul>
		<!-- // 메인 메뉴 -->
		<!--div class="link">
            <a module="Layout_bookmark" href="/link/bookmark.html" target="_blank" onclick="winPop(this.href); return false;"><span>즐겨찾기</span></a>
            <a module="Layout_shortcut" href="/link/shortcut.html" target="_blank" onclick="winPop(this.href); return false;">바로가기</a>
        </div-->
	</div>

</div>
<!--  헤더 끝 -->