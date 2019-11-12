<%@ page contentType="text/html; charset=UTF-8"%>
		<!--  헤더 시작 -->
		<div id="header">
			<div id="headerBottom">

				<!-- 로고 -->
				<div class="topArea">
					<h1 class="xans-element- xans-layout xans-layout-logotop ">
						<a  href="/index.html"> <!--span>그루미</span--> 
						<img src="${pageContext.request.contextPath}/images/grumy.jpg" style="margin-top: 0px; width: 153px; height: 33px;padding-top: 20px"/>
						</a>
					</h1>

				</div>
				<!-- // 로고 -->

				<div class="myList">

					<div class="xans-element- xans-layout xans-layout-statelogoff ">
						<a href="/member/login.html" class="log">LOGIN</a> <a
							href="/member/join.html">JOIN</a> <a
							href="/myshop/order/list.html">ORDER</a> <a
							href="/myshop/index.html">MY PAGE</a> <a class=" cart"
							href="/order/basket.html">CART</a>
					</div>


					<!-- cre.ma / 로그인 회원 정보 / 스크립트를 수정할 경우 연락주세요 (support@cre.ma) -->

					<div class="xans-element- xans-layout xans-layout-boardinfo">
						<a style="cursor: pointer;">COMMUNITY</a>
						<ul class="gnb_sub">
							<li class="xans-record-"><a href="/board/notice/1/">NOTICE<span></span></a></li>
							<li class="xans-record-"><a href="/board/상품-문의/6/">상품 문의<span></span></a></li>
							<li class="xans-record-"><a href="/board/배송-문의/3001/">배송
									문의<span></span>
							</a></li>
							<li class="xans-record-"><a href="/board/배송-전-변경취소/101/">배송
									전 변경/취소<span></span>
							</a></li>
							<li class="xans-record-"><a href="/board/배송-후-교환반품/5/">배송
									후 교환/반품<span></span>
							</a></li>
							<li class="xans-record-"><a href="/board/delay/2/">DELAY<span></span></a></li>
							<li class="xans-record-"><a href="/board/채용-공고/1002/">채용
									공고<span></span>
							</a></li>
							<li class="xans-record-"><a href="${pageContext.request.contextPath}/review/create">REVIEW<span></span></a></li>
						</ul>
					</div>

					<form id="searchBarForm" name="" action="/product/search.html"
						method="get" target="_self" enctype="multipart/form-data">
						<input id="banner_action" name="banner_action" value=""
							type="hidden" />
						<div class="xans-element- xans-layout xans-layout-searchheader ">
							<!--
                    $product_page=/product/detail.html
                    $category_page=/product/list.html
                -->
							<fieldset>
								<legend>검색</legend>
								<input id="keyword" name="keyword" fw-filter="" fw-label="검색어"
									fw-msg="" class="inputTypeText" placeholder=""
									onmousedown="SEARCH_BANNER.clickSearchForm(this)" value=""
									type="text" /><input type="image"
									src="https://www.slowand.com/web/upload/yangji_pc_crumb/btn_search.png"
									alt="검색"
									onclick="SEARCH_BANNER.submitSearchBanner(this); return false;" />
							</fieldset>
						</div>
					</form>
				</div>

				<!-- 메인 메뉴 -->
				<ul class="gnb grid5">
					<!--li><a href="/shopinfo/company.html">BRAND</a></li>
            <li><a href="/yangji/lookbook.html?cate_no=50">LOOKBOOK</a></li-->
					<div
						class="xans-element- xans-layout xans-layout-category main_cate">
						<div class="position">
							<ul>
								<li class="xans-record-"><a href="/category/best-50/66/">BEST
										20</a></li>
							
								<li class="xans-record-"><a href="/category/outer/24/">OUTER</a></li>
								<li class="xans-record-"><a href="/category/top/25/">TOP</a></li>
								<li class="xans-record-"><a href="/category/dress/27/">DRESS</a></li>
								<li class="xans-record-"><a href="/category/skirt/70/">SKIRT</a></li>
								<li class="xans-record-"><a href="/category/bottom/26/">BOTTOM</a></li>
								<li class="xans-record-"><a href="/category/shoesbag/28/">SHOES/BAG</a></li>
								<li class="xans-record-"><a href="/category/acc/68/">ACC</a></li>

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