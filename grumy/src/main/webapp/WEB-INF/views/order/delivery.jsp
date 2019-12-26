<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
<title>원클릭배송조회-국내우편(등기/택배) 배송조회</title>
<link type="text/css" rel="stylesheet"
	href="https://service.epost.go.kr//np2assets/css/sub.css" />
<link
	href="https://service.epost.go.kr//iwww/css/comm/shipping/jquery-ui-1.9.2.custom.css"
	rel="stylesheet" type="text/css" />

<script type="text/javascript"
	src="https://service.epost.go.kr/np2assets/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
	src="https://service.epost.go.kr/iwww/jscripts/comm/common.js"></script>
<script type="text/javascript"
	src="https://service.epost.go.kr/iwww/jscripts/comm/comnValidator.js"></script>
<script type="text/javascript"
	src="https://service.epost.go.kr/iwww/jscripts/comm/jquery-ui-1.9.2.custom.js"></script>
<script type="text/javascript"
	src="https://service.epost.go.kr/iwww/jscripts/comm/shipping_comm.js"></script>
<script type="text/javascript"
	src="https://service.epost.go.kr/np2assets/js/jQuery.print.js"></script>

<script type="text/javascript">
	//<![CDATA[
	// 우체국정보 상세조회
deliveryInfo();   
	// 프린트하기
	function js_winPrint() {
		window.print();
		return false;
	}
	//국제우편 배달정보 프린트
	function print() {
		      
		var nAgt = navigator.userAgent;
		if ((nAgt.indexOf("Chrome")) != -1) { //크롬일 경우 jquery 플러그인 사용

							$("#print").print({
								iframe : false,
								timeout : 250,
								title : null
							//이외의 값은 디폴트값 사용( jQuery.print.js파일 확인 )
							});

						} else { // 크롬이 아닌경우  
							$(".detail_on").css({
								'visibility' : 'hidden',
								'position' : 'absolute',
								'left' : '0'
							});
							$(".detail_off").css({
								'visibility' : 'visible',
								'position' : 'static'
							});

							var theWork = window.open('', 'PrintWindow');
							var content = $('#print').html();
							var html = "<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'><html xmlns='http://www.w3.org/1999/xhtml' lang='ko' xml:lang='ko'><head>";
							html += "<link type='text/css' rel='stylesheet' href='/np2assets/css/sub.css' />";
							html += "<style type='text/css'>";
							html += "body, input, select, textarea, a, button{font-family:'dotum',돋움 !important;height:100%;}";
							html += ".detail_on{display:none;}";
							html += ".dpno{display:none;}";
							html += ".masking{display:none;}";
							html += ".shipping_process{display:none;}";
							html += "</style>";
							html += "</head>";
							html += "<body><div id='print' style='width:700px;'>"
									+ content;
							html += "</div>";
							html += "</body></html>";
							theWork.document.open();
							theWork.document.write(html);
							theWork.document.close();
							theWork.print();
							theWork.close();
						}
					}

	function deliveryInfo() {

		var t_code = '01';
		var t_invoice = '${deliveryNo}';         
		var myKey = 'yba8zUaWizS64noI7PA0bw';
		$.ajax({  
			type : "GET",
			dataType : "json",
			url : "http://info.sweettracker.co.kr/api/v1/trackingInfo?t_key="
					+ myKey + "&t_code=" + t_code + "&t_invoice=" + t_invoice,
			success : function(data) {
				console.log(data);
				var myInvoiceData = "";
				if (data.status == false) {
					$('#contents').css('display','block');
					$('#contents_layout').html(('<p>' + data.msg + '<p>'));
				} else {       
					$('#sender').html(data.senderName);
					$('#sendDate').html(data.firstDetail.timeString.substring(1,10));
					$('#receiver').html(data.receiverName);
					$('#deliveryResult').html(data.lastDetail.kind);
					
					if(data.lastDetail.kind="배달완료")
						$('#receiveDate').html(data.lastDetail.timeString.substring(1,10));
				}

				var trackingDetails = data.trackingDetails;
				var tracking = "";


				$.each(trackingDetails, function(key, value) {
					
					tracking += ('<tr>');
					tracking += ('<td>' + value.timeString.substring(1,10) + '</td>');
					tracking += ('<td>' + value.timeString.substring(12,16) + '</td>');
					tracking += ('<td>' + value.where + '</td>');
					if(value.kind=="배달완료")
						tracking += ('<td>' + value.kind +'<br/>('+data.recipient +')</td>');
					else
						tracking += ('<td>' + value.kind + '</td>');   
					tracking += ('</tr>');
				});

				$("#trackingList").html(tracking);    

			}
		});
	}

	//]]>
</script>

</head>

<body>
	<!-- 스킵네비게이션 시작 -->
	<ul id="skipnavi">
		<li><a href="#top_layout_focus001">주 메뉴바로가기</a></li>
		<li><a href="#contents_layout">본문 내용바로가기</a></li>
		<li><a href="#bottom_layout">하단 내용바로가기</a></li>
	</ul>
	<!-- 스킵네비게이션 끝 -->
	<!-- 탑레이아웃 시작 -->
	<div style="display: none">        





























		<script type="text/javascript"
			src="https://www.epost.go.kr//jscripts/comm/MemAutoLogout.js"></script>
		<form name="frmpeautoup" id="frmpeautoup" method="post" action=""
			target="ifCkReset">
			<input type="hidden" name="userId" id="userId" value="" />
		</form>

		<script type="text/javascript">
			//<![CDATA[
			if (typeof jQuery == 'undefined') {

				document
						.write('   <script type=\"text/javascript\" src=\"https://www.epost.go.kr//jscripts/comm/jquery-1.9.1.min.js\" ><\/script>  ');

			}
			//]]>
		</script>

		<script type="text/javascript">
			//<![CDATA[
			setCookie("ckstm", '1577174130149');
			//쿠키 셋팅
			function setCookie(name, value) {
				document.cookie = name + '=' + escape(value)
						+ ';path=/;domain=epost.go.kr';
			}

			window.onunload = function() {

				if (event.clientY < 0) {
					updateMemLoginStatusLogout('', 'https://www.epost.go.kr/');
				}

			}
			// 일부 페이지에서 onunload가 호출되지 않는경우를 위해서 
			window.onbeforeunload = function() {
				if (event.clientY < 0) {
					updateMemLoginStatusLogout('', 'https://www.epost.go.kr/');
				}
			}

			//]]>
		</script>
		<iframe name="ifCkReset" title="예외페이지 쿠키리셋 프레임" width="0" height="0"
			style="display: none;"></iframe>







		<script type="text/javascript"
			src="https://service.epost.go.kr/np2assets/js/navi_focus.js"></script>
		<script type="text/javascript"
			src="https://service.epost.go.kr/np2assets/js/slide/jquery.flexslider.js"></script>
		<script type="text/JavaScript"
			src="https://www.epost.go.kr/jscripts/comm/logininfoURL.js"></script>


		<form id="customerRelForm" name="customerRelForm">
			<input type="hidden" name="loginType" id="loginType" value="login" />
			<input type="hidden" name="s_url"
				value="http://ekpls.epost.go.kr/xpost_custPart.jsp" /> <input
				type="hidden" name="login" value="service" /> <input type="hidden"
				name="webacc" value="" />
		</form>
		<div id="top_layout">
			<!-- 180326 bjy 상단 바로가기 설치 및 메뉴 추가-->
			<div class='new_top'>
				<div class="topMenu">
					<ul class="downWrap">
						<li><span class="downBtn">앱 다운로드 : <span
								class="menuBar"><a
									href="https://www.epost.go.kr/bbs.RetrieveGuideNoticeList.comm?codetype=T">우편</a></span><span><a
									href="https://mall.epost.go.kr/fo/event/mobileAppBenefit.do">쇼핑</a></span></span>
						</li>
						<li><span class="installBtn">바로가기 설치 : <span
								class="menuBar"><a
									href="https://www.epost.go.kr/bbs.RetrieveGuideNoticeList.comm?codetype=T">우편</a></span><span><a
									href="https://mall.epost.go.kr/fo/event/directVisitingBenefit.do">쇼핑</a></span></span>
						</li>
					</ul>
					<ul class="utile">

						<!-- 로그인전 -->
						<li class="n1"><a id="loginSURL"
							href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp"
							target="_top" title="로그인">로그인</a></li>
						<li class="n2"><a
							href="https://www.epost.go.kr/usr/member/cafzb000k01.jsp"
							target="_top" title="회원가입">회원가입</a></li>

						<li class="n4"><a href="http://mail.epost.go.kr/" title="메일">메일</a></li>
						<li class="n4"><a
							href="https://www.epost.go.kr/bbs.RetrieveBbsMain.comm"
							title="고객센터">고객센터</a></li>
						<li class="n4"><a
							href="https://www.epost.go.kr/comm/etc/sitemap.jsp"
							title="사이트 안내">사이트 안내</a></li>
						<li><a
							href="https://www.epost.go.kr/main/eng/Enpost_Introduction1.html"
							title="ENGLISH">ENGLISH</a></li>
					</ul>
				</div>
			</div>
			<!-- // 180326 bjy 상단 바로가기 설치 및 메뉴 추가-->
			<div class="top_wrap">
				<div class="logo_wrap">
					<div class="logo">
						<a href="https://www.epost.go.kr/" title="메인이동"><img
							src="https://service.epost.go.kr/np2assets/images/e1/logo.gif"
							alt="인터넷우체국 로고" /></a>
					</div>
					<div>
						<img
							src="https://service.epost.go.kr/np2assets/images/e1/jeje.png"
							alt="제제 캐릭터" style="position: absolute; left: 27.5%; top: 11%" />
					</div>
					<div class="search">
						<form name="searchform" id="searchform" method="post"
							action="/search/total/total.jsp" onsubmit="return goSearch();"
							target="_top">
							<input type="hidden" name="selectmenu" value="0" /> <input
								type="text" name="query" title="검색어를 입력하세요" /> <a href="#"
								id="btnTotalSearch" style="cursor: pointer;" title="검색"><label>검색</label></a>
						</form>
					</div>

					<!-- 180326 bjy 로그인 전 배너-->

					<!-- // 180326 bjy 로그인 전 -->

				</div>
				<!-- 네비 시작 -->
				<div id="mnavi_layout2" class="navi">
					<div class="group" id="gnb_navi">
						<div class="menu m8">
							<h2>
								<a href="#" title="페이지 이동">전체메뉴</a>
							</h2>
							<div class="depth2">
								<div class="wrap n1">
									<dl class="n1">
										<dt>
											<a href="https://service.epost.go.kr/" title="우편 메인이동">우편</a>
										</dt>
										<dd class="n1">
											<ul>
												<li><a
													href="https://service.epost.go.kr//hybridn.HybridIntro.postal?type=A"
													title="전자우편">전자우편</a>
													<ul>
														<li><a
															href="https://service.epost.go.kr//hybridn.HybridIntro.postal?type=A"
															title="e-그린우편">e-그린우편</a></li>
														<li><a
															href="https://service.epost.go.kr/front.myletter.MyletterIntro.postal"
															title="맞춤형편지">맞춤형편지</a></li>
													</ul></li>
											</ul>

											<ul>
												<li><a
													href="https://service.epost.go.kr/front.leaflet.LeafletIntro.postal?type=6"
													title="생활정보홍보우편">생활정보홍보우편</a>
													<ul>

														<li><a
															href="https://service.epost.go.kr//front.leaflet.LeafletIntro.postal?type=6"
															title="신청접수">신청접수</a></li>

														<li><a
															href="https://service.epost.go.kr/front.leaflet.MonitoringLeaflet.postal"
															title="모니터링">모니터링</a></li>
													</ul></li>
											</ul>

											<ul>
												<li><a
													href="https://service.epost.go.kr/econprf.RetrieveEConprfReqSend.postal?type=&amp;grp=A"
													title="증명서비스">증명서비스</a>
													<ul>
														<li><a
															href="https://service.epost.go.kr/econprf.RetrieveEConprfReqSend.postal?type=&amp;grp=A"
															title="내용증명">내용증명</a></li>
														<li><a
															href="https://service.epost.go.kr/econprf.RetrieveEConprfReqReissue.postal"
															title="발송 후 내용증명">발송 후 내용증명</a></li>
														<li><a
															href="https://service.epost.go.kr/front.deliveryProof.mainPage.postal"
															title="발송 후 배달증명">발송 후 배달증명</a></li>

													</ul></li>
											</ul>
											<ul>
												<li><a
													href="https://service.epost.go.kr/front.commonpost.RetrieveAcceptIntro.postal"
													title="부가서비스">부가서비스</a>
													<ul>

														<li><a
															href="https://service.epost.go.kr/front.commonpostplus.RetrieveAcceptIntroPlus.postal"
															title="간편사전접수플러스">간편사전접수플러스</a></li>

														<li><a
															href="https://service.epost.go.kr/comm.RetrievePostagSrvcStrt.postal?menu=K&amp;file=1"
															title="현금배달">현금배달</a></li>
														<li><a
															href="https://service.epost.go.kr/comm.RetrievePostagSrvcStrt.postal?menu=D&amp;file=1"
															title="민원우편">민원우편</a></li>
														<li><a
															href="https://service.epost.go.kr/comm.RetrievePostagSrvcStrt.postal?menu=NEWA&amp;file=1"
															title="주거이전서비스 신청/결제/취소">주거이전서비스<br />신청/결제/취소
														</a></li>

														<li><a
															href="https://service.epost.go.kr/front.DelivPlaceChangeService.postal?type=A"
															title="수취인 배달장소 변경서비스">수취인 배달장소 변경서비스</a></li>
														<li><a
															href="https://service.epost.go.kr/front.nomanpost.IntroPage.postal"
															title="무인우체국">무인우체국 가입</a></li>
														<li><a href="#" onclick="return tmpRecevSum()"
															title="고객참여창구">고객참여창구</a></li>
													</ul></li>
											</ul>
											<ul>
												<li><a
													href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=service_bsearch"
													title="나의이용정보">나의 이용정보</a>

													<ul>
														<li><a
															href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=service_bsearch"
															title="이용내역 조회">이용내역 조회</a></li>

														<li><a
															href="https://service.epost.go.kr/useinfo.RetrievePostalNomemUseInfo.postal"
															title="비회원 이용내역 조회">비회원 이용내역 조회</a></li>

														<li><a
															href="https://service.epost.go.kr/front.cardreceipt.RetrievePaymentinfo.postal"
															title="방문결제영수증 출력">방문결제영수증출력</a></li>
														<li><a
															href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?s_url=https://parcel.epost.go.kr/share.RetrieveReceiptInfo.parcel"
															title="모바일영수증 보관함">모바일영수증 보관함</a></li>
													</ul></li>
											</ul>
										</dd>
									</dl>
									<dl class="n2">
										<dt>
											<a href="https://mall.epost.go.kr/" title="우체국쇼핑 새창열림">우체국쇼핑</a>
										</dt>
										<dd class="n1">
											<ul>

												<li><a
													href="https://mall.epost.go.kr/fo/display/pavlnDivDspyType.do?pavlnDivCd=01"
													title="특산물 새창열림">특산물</a></li>

												<li><a
													href="https://mall.epost.go.kr/fo/main/moveFlowerSend.do"
													title="꽃배달 새창열림">꽃배달</a></li>

												<li><a
													href="https://mall.epost.go.kr/fo/main/moveSijang.do"
													title="전통시장 새창열림">전통시장</a></li>
												<li><a
													href="https://mall.epost.go.kr/fo/main/moveOverSend.do"
													title="해외배송 새창열림">해외배송</a></li>
												<li><a
													href="http://b2b.epost.go.kr/btobmall.mmain.index.btb"
													title="우체국B2B 새창열림">우체국B2B</a></li>
												<li><a href="http://ddm.epost.go.kr" title="동대문B2B">동대문B2B</a></li>
											</ul>
										</dd>
									</dl>
									<dl class="n3">
										<dt>
											<a href="https://parcel.epost.go.kr/" title="우체국 택배">우체국택배</a>
										</dt>
										<dd class="n1">
											<ul>

												<li><a
													href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=parcel1"
													title="택배 방문접수예약">택배 방문접수예약</a></li>
												<li><a
													href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=parcel3"
													title="택배 방문접수예약(파일접수)">택배 방문접수예약<br />(파일접수)
												</a></li>
												<li><a
													href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=parcel2"
													title="택배 반품예약">택배 반품예약</a></li>

											</ul>
										</dd>
										<dd class="n2">
											<ul>
												<li><a
													href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=parcel4"
													title="인터넷/선납소포라벨">인터넷/선납소포라벨</a>

													<ul>

														<li class="first"><a
															href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=parcel5"
															title="인터넷/선납소포라벨구매">인터넷/선납소포라벨구매</a></li>

														<li><a
															href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=parcel4"
															title="방문수거예약">방문수거예약</a></li>
													</ul></li>
											</ul>
										</dd>
										<dd class="n3">
											<ul>
												<!-- <li><a href="https://www.epost.go.kr/general.RetrieveResrevationNew.parcel?cmd=reservation&onLoadState=init" title="예약조회/취소">예약조회/취소</a></li> -->
												<li><a
													href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=parcel_bsearch"
													title="예약조회/취소">예약조회/취소</a></li>
												<li><a
													href="https://parcel.epost.go.kr/front.delivpay.RetrieveDelivpayPage.parcel"
													title="착불배달우편물 요금 결제/조회">착불배달우편물 요금<br />결제/조회
												</a></li>

												<li><a
													href="https://service.epost.go.kr/iservice/usr/trace/usrtrc001k01.jsp"
													target="_blank" title="배달조회 - 새창으로 열림">배달조회</a></li>

												<li><a
													href="https://parcel.epost.go.kr/share.RetrieveNewsListMore.parcel"
													title="공지사항">공지사항</a></li>
											</ul>
										</dd>
									</dl>
									<dl class="n4">
										<dt>
											<a href="https://ems.epost.go.kr/" title="EMS·국제우편">EMS·국제우편</a>
										</dt>
										<dd class="n1">
											<ul>
												<li><a href="#" title="EMS·국제우편 예약">EMS·국제우편 예약</a>
													<ul>

														<li><a
															href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=ems&amp;s_url=https://ems.epost.go.kr/front.SmEmsAcceptIntro.postal"
															title="국제우편스마트접수">국제우편스마트접수</a></li>
														<li><a
															href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=ems_bsearch&amp;s_url=https://ems.epost.go.kr/front.EmsApply2000c.postal"
															title="예약조회/취소">예약조회/취소</a></li>

													</ul></li>
											</ul>
										</dd>
										<dd class="n2">
											<ul>
												<li><a
													href="https://ems.epost.go.kr/front.Tracking01.postal"
													title="행방조회/조사청구">행방조회/조사청구</a>
													<ul>
														<li><a
															href="https://ems.epost.go.kr/front.Tracking01.postal"
															title="인터넷 행방조회">인터넷 행방조회</a></li>
														<li><a
															href="https://ems.epost.go.kr/iservice.EmsSendMailFormFree.postal"
															title="이메일행방조사 청구">이메일행방조사 청구</a></li>
														<li><a
															href="https://ems.epost.go.kr/front.Tracking04.postal"
															title="서면 행방조사">서면 행방조사</a></li>
														<li><a
															href="https://ems.epost.go.kr/front.EmsInfoInfo01.postal"
															title="주요 우정청연락처">주요 우정청연락처</a></li>
														<li><a
															href="https://ems.epost.go.kr/front.Tracking05.postal"
															title="손해배상규정">손해배상규정</a></li>
													</ul></li>
											</ul>
										</dd>
										<dd class="n3">
											<ul>
												<li><a
													href="https://ems.epost.go.kr/front.EmsCustomsPrcInfo.postal"
													title="통관절차대행수수료납부/조회">통관절차대행수수료<br />납부/조회
												</a></li>
												<li><a
													href="https://ems.epost.go.kr/front.Introduction01.postal"
													title="서비스안내">서비스안내</a>
													<ul>
														<li><a
															href="https://ems.epost.go.kr/front.Introduction01.postal"
															title="서비스개요">서비스개요</a></li>
														<li><a
															href="https://ems.epost.go.kr/front.Introduction07.postal"
															title="서비스절차">서비스절차</a></li>
														<li><a
															href="https://ems.epost.go.kr/front.EmsApplyGetDeliveryNation.postal"
															title="접수가능국가">접수가능국가</a></li>
														<li><a
															href="https://ems.epost.go.kr/front.Introduction04.postal"
															title="보낼수있는물품/보낼수없는물품">보낼수있는물품/<br />보낼수없는물품
														</a></li>
													</ul></li>
											</ul>
										</dd>
									</dl>
									<dl class="n5">
										<dt>
											<a
												href="https://service.epost.go.kr/comm.RetrieveStampSrvcMain.postal"
												title="우표,엽서,축하카드">우표·엽서·축하카드</a>
										</dt>
										<dd class="n1">
											<ul>
												<li><a
													href="https://service.epost.go.kr/stamp.RetrievePostagGoodsList.postal?svctype=1&amp;timediv=2000&amp;targetRow=1"
													title="우표류 ">우표류</a>
													<ul>
														<li><a
															href="https://service.epost.go.kr/stamp.RetrievePostagGoodsList.postal?svctype=1&amp;timediv=2000&amp;targetRow=1"
															title="우표">우표</a></li>
														<li><a
															href="https://service.epost.go.kr/stamp.RetrievePostagGoodsList.postal?svctype=7&amp;timediv=2000&amp;targetRow=1"
															title="우표책ㆍ첩">우표책ㆍ첩</a></li>
														<li><a
															href="https://service.epost.go.kr/stamp.RetrievePostagGoodsList.postal?svctype=9&amp;timediv=2000&amp;targetRow=1"
															title="초일봉투">초일봉투</a></li>
														<li><a
															href="https://service.epost.go.kr/mystampn.RetrieveMyPostagKindA.postal"
															title="나만의우표">나만의우표</a></li>
														<li><a
															href="https://service.epost.go.kr/front.estamp.onlineStampApplication.postal"
															title="인터넷우표">인터넷우표</a></li>
														<li><a
															href="https://service.epost.go.kr/front.RetrievePostagCommSellInfo.postal"
															title="취미우표통신판매">취미우표통신판매</a></li>
													</ul></li>
											</ul>
										</dd>
										<dd class="n2">
											<ul>
												<li><a
													href="https://service.epost.go.kr/stamp.RetrievePostagGoodsList.postal?svctype=pic&amp;timediv=2000&amp;targetRow=1"
													title="엽서류">엽서류</a>
													<ul>
														<li><a
															href="https://service.epost.go.kr/stamp.RetrievePostagGoodsList.postal?svctype=A&amp;timediv=2000&amp;targetRow=1"
															title="그림엽서">그림엽서</a></li>
														<li><a
															href="https://service.epost.go.kr/stamp.RetrievePostagGoodsList.postal?svctype=B&amp;timediv=2000&amp;targetRow=1"
															title="기념엽서">기념엽서</a></li>
														<li><a
															href="https://service.epost.go.kr/front.imagecardn.RetrieveImageCard.postal"
															title="e-그린엽서">e-그린엽서</a></li>
														<li><a
															href="https://service.epost.go.kr/postcard.RetrieveMyPostCdHelp.postal?ServiceGubun=O"
															title="고객맞춤형엽서">고객맞춤형엽서</a></li>
													</ul></li>
											</ul>
										</dd>
										<dd class="n3">
											<ul>
												<li><a
													href="https://service.epost.go.kr/front.cardmail.RetrieveCardmailNew.postal?ServiceGubun=C"
													title="축하카드류">축하카드류</a>
													<ul>
														<li><a
															href="https://service.epost.go.kr/front.cardmail.RetrieveCardmailNew.postal?ServiceGubun=C"
															title="축하카드">축하카드</a></li>
														<li><a
															href="https://service.epost.go.kr/front.cardmail.RetrieveHighCardmailNew.postal"
															title="축하선물카드">축하선물카드</a></li>


														<li><a
															href="https://service.epost.go.kr/front.newyearcard.RetrieveNewyearcardList1.postal"
															title="연하카드">연하카드</a></li>

													</ul></li>
											</ul>
										</dd>
										<dd class="n4">
											<ul>

												<li><a href="" target="_blank" title="한국우표포털-새창으로 열림">한국우표포털</a></li>
												<li><a
													href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=stamp_bsearch"
													title="나의 이용정보">나의 이용정보</a></li>

											</ul>
										</dd>
									</dl>
									<dl class="n6">
										<dt>
											<a href="https://www.epost.go.kr/comm.alddl.noticeList.comm"
												title="우체국알뜰폰">우체국알뜰폰</a>
										</dt>
										<dd class="n1">
											<ul>
												<li><a
													href="https://www.epost.go.kr/comm.alddl.noticeList.comm"
													title="온라인 숍">온라인 숍</a></li>
												<li><a
													href="https://www.epost.go.kr/comm.alddl.RetrieveAlddlChargeList.comm"
													title="요금제">요금제</a></li>
												<li><a
													href="https://www.epost.go.kr/comm.alddl.RetrieveAlddlPhoneImgList.comm"
													title="단말기">단말기</a></li>
												<li><a
													href="https://www.epost.go.kr/comm/alddl/alddl06k001.jsp"
													title="판매우체국찾기">판매우체국찾기</a></li>
												<li><a href="https://www.epost.go.kr/postphonecs.comm"
													title="문의게시판">문의게시판</a></li>

											</ul>
										</dd>
									</dl>
									<dl class="n9">
										<dt>
											<a
												href="https://service.epost.go.kr/goldbar.RetrievesGoldBarGoodsList.postal"
												title="골드바">골드바</a>
										</dt>
									</dl>
									<dl class="n7">
										<dt>
											<a
												href="https://www.epost.go.kr/search/zipcode/cmzcd001k01.jsp"
												title="조회·메일 서비스">조회·메일 서비스</a>
										</dt>
										<dd class="n1">
											<ul>
												<li><a
													href="https://www.epost.go.kr/search/zipcode/cmzcd001k01.jsp"
													title="우편번호 검색">우편번호 검색</a></li>

												<li><a
													href="https://service.epost.go.kr/front.deliveryarea.RetrieveDeliveryAreaIntro.postal"
													title="집배코드 부여 서비스">집배코드 부여 서비스</a></li>

												<li><a
													href="https://service.epost.go.kr/iservice/usr/trace/usrtrc001k01.jsp"
													title="국내우편(등기/택배)배송조회">국내우편 배송조회</a></li>


												<li><a href="http://mail.epost.go.kr/" title="메일">메일</a></li>
												<li><a href="javascript:goCostLink();"
													title="국내/국제 우편요금 조회">국내/국제 우편요금 조회</a></li>
											</ul>
										</dd>
									</dl>
									<dl class="n8">
										<dt>
											<a href="https://www.epost.go.kr/bbs.RetrieveBbsMain.comm"
												title="고객센터">고객센터</a>
										</dt>
										<dd class="n1">
											<ul>
												<li><a
													href="https://www.epost.go.kr/main.retrieveNoticePage.comm"
													title="공지사항">공지사항</a></li>
												<li><a
													href="https://www.epost.go.kr/main.retrieveEventPage.comm"
													title="이벤트">이벤트</a></li>
												<li><a
													href="https://www.epost.go.kr/bbs.RetrieveBbsMain.comm"
													title="자주하는 질문">자주하는 질문</a></li>
												<li><a
													href="https://www.epost.go.kr/bbs.RetrieveGuideNoticeList.comm"
													title="이용안내">이용안내</a></li>
												<li><a
													href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=bbs&amp;route=person&amp;check_type=Y&amp;newbbstype=Q&amp;s_url=https://www.epost.go.kr/bbs.RegisterMemNewQnabbsForm.comm?check_type=Y"
													title="고객불편신고">고객불편신고</a></li>
												<li><a
													href="https://www.epost.go.kr/bbs.RetrievePraisePage.comm"
													title="칭찬합니다">칭찬합니다</a></li>
												<li><a
													href="https://www.epost.go.kr/affair/bbs/cbfya302k01.jsp"
													title="국민신문고">국민신문고</a></li>
												<li><a
													href="https://www.epost.go.kr/affair/bbs/cbfya302k03.jsp"
													title="110채팅/화상(수화)상담">110채팅/화상(수화)상담</a></li>
												<li><a
													href="https://www.epost.go.kr/comm/etc/usefulGuide.jsp"
													onclick="return goNewLink('14',this.href);" target="_blank"
													title="전국 우체국 이용안내 - 새창열림">전국 우체국 이용안내</a></li>
											</ul>
										</dd>
									</dl>
								</div>
							</div>
						</div>
						<div class="menu m1" id='top_layout_focus001'>
							<h2>
								<a href="https://service.epost.go.kr/" title="우편">우편</a>
							</h2>
							<ul class="depth2">
								<li class="dep"><a
									href="https://service.epost.go.kr/hybridn.HybridIntro.postal?type=A"
									title="전자우편">전자우편</a>
									<ul class="depth3">
										<li class="first"><a
											href="https://service.epost.go.kr//hybridn.HybridIntro.postal?type=A"
											title="e-그린우편">e-그린우편</a></li>
										<li><a
											href="https://service.epost.go.kr/front.myletter.MyletterIntro.postal"
											title="맞춤형편지">맞춤형편지</a></li>
									</ul></li>

								<li><a class="dep"
									href="https://service.epost.go.kr/front.leaflet.LeafletIntro.postal?type=6"
									title="생활정보홍보우편">생활정보홍보우편</a>
									<ul class="depth3">

										<li class="first"><a
											href="https://service.epost.go.kr/front.leaflet.LeafletIntro.postal?type=6"
											title="신청접수">신청접수</a></li>

										<li><a
											href="https://service.epost.go.kr/front.leaflet.MonitoringLeaflet.postal"
											title="모니터링">모니터링</a></li>
									</ul></li>

								<li class="dep"><a
									href="https://service.epost.go.kr/econprf.RetrieveEConprfReqSend.postal?type=&amp;grp=A"
									title="증명서비스">증명서비스</a>
									<ul class="depth3">
										<li class="first"><a
											href="https://service.epost.go.kr/econprf.RetrieveEConprfReqSend.postal?type=&amp;grp=A"
											title="내용증명">내용증명</a></li>
										<li><a
											href="https://service.epost.go.kr/econprf.RetrieveEConprfReqReissue.postal"
											title="발송 후 내용증명">발송 후 내용증명</a></li>
										<li><a
											href="https://service.epost.go.kr/front.deliveryProof.mainPage.postal"
											title="발송 후 배달증명">발송 후 배달증명</a></li>

									</ul></li>
								<li class="dep"><a
									href="https://service.epost.go.kr/front.commonpost.RetrieveAcceptIntro.postal"
									title="부가서비스">부가서비스</a>
									<ul class="depth3">

										<li><a
											href="https://service.epost.go.kr/front.commonpostplus.RetrieveAcceptIntroPlus.postal"
											title="간편사전접수플러스">간편사전접수플러스</a></li>

										<li><a
											href="https://service.epost.go.kr/comm.RetrievePostagSrvcStrt.postal?menu=K&amp;file=1"
											title="현금배달">현금배달</a></li>
										<li><a
											href="https://service.epost.go.kr/comm.RetrievePostagSrvcStrt.postal?menu=D&amp;file=1"
											title="민원우편">민원우편</a></li>
										<li><a
											href="https://service.epost.go.kr/comm.RetrievePostagSrvcStrt.postal?menu=NEWA&amp;file=1"
											title="주거이전서비스 신청/결제/취소">주거이전서비스<br />신청/결제/취소
										</a></li>

										<li><a
											href="https://service.epost.go.kr/front.DelivPlaceChangeService.postal?type=A"
											title="수취인 배달장소 변경서비스">수취인 배달장소 변경서비스</a></li>
										<li><a
											href="https://service.epost.go.kr/front.nomanpost.IntroPage.postal"
											title="무인우체국">무인우체국 가입</a></li>
										<li><a href="#" onclick="return tmpRecevSum()"
											title="고객참여창구">고객참여창구</a></li>
									</ul></li>
								<li class="dep"><a
									href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=service_bsearch"
									title="나의 이용정보">나의 이용정보</a>

									<ul class="depth3">
										<li class="first"><a
											href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=service_bsearch"
											title="나의 이용정보">나의 이용정보</a></li>

										<li><a
											href="https://service.epost.go.kr/useinfo.RetrievePostalNomemUseInfo.postal"
											title="비회원 이용내역 조회">비회원 이용내역 조회</a></li>

										<li><a
											href="https://service.epost.go.kr/front.cardreceipt.RetrievePaymentinfo.postal"
											title="방문결제영수증 출력">방문결제영수증출력</a></li>
										<li><a
											href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?s_url=https://parcel.epost.go.kr/share.RetrieveReceiptInfo.parcel"
											title="모바일영수증 보관함">모바일영수증 보관함</a></li>
									</ul></li>
							</ul>
						</div>
						<div class="menu m2">
							<h2>
								<a href="https://mall.epost.go.kr/" title="우체국쇼핑 새창열림">우체국쇼핑</a>
							</h2>
							<ul class="depth2">

								<li><a
									href="https://mall.epost.go.kr/fo/display/pavlnDivDspyType.do?pavlnDivCd=01"
									title="특산물 새창열림">특산물</a></li>

								<li><a
									href="https://mall.epost.go.kr/fo/main/moveFlowerSend.do"
									title="꽃배달 새창열림">꽃배달</a></li>

								<li><a
									href="https://mall.epost.go.kr/fo/main/moveSijang.do"
									title="전통시장 새창열림">전통시장</a></li>
								<li><a
									href="https://mall.epost.go.kr/fo/main/moveOverSend.do"
									title="해외배송 새창열림">해외배송</a></li>
								<li><a
									href="http://b2b.epost.go.kr/btobmall.mmain.index.btb"
									title="우체국B2B 새창열림">우체국B2B</a></li>
								<li><a href="http://ddm.epost.go.kr" title="동대문B2B">동대문B2B</a></li>
							</ul>
						</div>
						<div class="menu m3">
							<h2>
								<a href="https://parcel.epost.go.kr/" title="우체국택배">우체국택배</a>
							</h2>
							<ul class="depth2">
								<li><a
									href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=parcel1"
									title="택배 방문접수예약">택배 방문접수예약</a></li>
								<li><a
									href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=parcel3"
									title="택배 방문접수예약(파일접수)">택배 방문접수예약<br />(파일접수)
								</a></li>
								<li><a
									href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=parcel2"
									title="택배 반품예약">택배 반품예약</a></li>
								<li class="dep"><a
									href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=parcel4"
									title="인터넷/선납소포라벨">인터넷/선납소포라벨</a>

									<ul class="depth3">

										<li class="first"><a
											href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=parcel5"
											title="인터넷/선납소포라벨구매">인터넷/선납소포라벨구매</a></li>

										<li><a
											href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=parcel4"
											title="방문수거예약">방문수거예약</a></li>
									</ul></li>
								<li><a
									href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=parcel_bsearch"
									title="예약조회/취소">예약조회/취소</a></li>
								<li><a
									href="https://parcel.epost.go.kr/front.delivpay.RetrieveDelivpayPage.parcel"
									title="착불배달우편물 요금 결제/조회">착불배달우편물 요금<br />결제/조회
								</a></li>

								<li><a
									href="https://service.epost.go.kr/iservice/usr/trace/usrtrc001k01.jsp"
									target="_blank" title="배달조회 - 새창으로 열림">배달조회</a></li>

								<li><a
									href="https://parcel.epost.go.kr/share.RetrieveNewsListMore.parcel"
									title="공지사항">공지사항</a></li>
								<li class="dep"><a
									href="https://parcel.epost.go.kr/parcel/use_guide/charge_1.jsp"
									title="이용안내">이용안내</a>
									<ul class="depth3">
										<li class="first"><a
											href="https://parcel.epost.go.kr/parcel/use_guide/charge_1.jsp"
											title="요금안내">요금안내</a></li>
										<li><a
											href="https://parcel.epost.go.kr/general.RetrieveSidoInfo.parcel"
											onclick="return goNewLink('11',this.href);" target="_blank"
											title="당일특급 가능지역">당일특급 가능지역</a></li>
										<li><a
											href="https://www.epost.go.kr/bbs.RetrieveFaqFrontView.comm?codetype=L&amp;code=L01"
											target="_blank" title="자주하는 질문">자주하는 질문</a></li>
										<li><a
											href="https://parcel.epost.go.kr/parcel/use_guide/limititem_1.jsp"
											title="취급제한품목">취급제한품목</a></li>
										<li><a
											href="https://parcel.epost.go.kr/parcel/use_guide/insuranceView_1.jsp"
											title="보험취급 및 손해배상 안내-새창열림">보험취급 및 손해배상</a></li>
										<li><a
											href="https://parcel.epost.go.kr/parcel/use_guide/parcel_file.ppt"
											title="매뉴얼 다운로드">메뉴얼 다운로드</a></li>
									</ul></li>
							</ul>
						</div>
						<div class="menu m4">
							<h2>
								<a href="https://ems.epost.go.kr/" title="EMS·국제우편">EMS·국제우편</a>
							</h2>
							<ul class="depth2">
								<li class="dep"><a
									href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=ems&amp;s_url=https://ems.epost.go.kr/front.SmEmsAcceptIntro.postal"
									title="EMS·국제우편 예약">EMS·국제우편 예약</a>

									<ul class="depth3">

										<li class="first"><a
											href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=ems&amp;s_url=https://ems.epost.go.kr/front.SmEmsAcceptIntro.postal"
											title="국제우편스마트접수">국제우편스마트접수</a></li>
										<li><a
											href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=ems_bsearch&amp;s_url=https://ems.epost.go.kr/front.EmsApply2000c.postal"
											title="예약조회/취소">예약조회/취소</a></li>

									</ul></li>
								<li class="dep"><a
									href="https://ems.epost.go.kr/front.EmsDeliveryDelivery01.postal"
									title="국가별 요금안내">국가별 요금안내</a>
									<ul class="depth3">
										<li class="first"><a
											href="https://ems.epost.go.kr/front.EmsDeliveryDelivery01.postal"
											title="배달소요일/요금조회">배달소요일/요금조회</a></li>
										<li><a
											href="https://ems.epost.go.kr/front.EmsDeliveryDelivery02.postal"
											title="국제우편 요금표">국제우편 요금표</a></li>
										<li><a
											href="https://ems.epost.go.kr/front.EmsDeliveryDelivery04.postal"
											title="국가별 요금적용 지역">국가별 요금적용 지역</a></li>
										<li><a
											href="https://ems.epost.go.kr/front.EmsSurveySurvey03.postal"
											title="주요국가 휴일정보">주요국가 휴일정보</a></li>
										<li><a
											href="https://ems.epost.go.kr/front.Delivery03.postal"
											title="부가취급 수수료">부가취급 수수료</a></li>
									</ul></li>
								<li class="dep"><a
									href="https://ems.epost.go.kr/front.Tracking01.postal"
									title="행방조회/조사청구">행방조회/조사청구</a>
									<ul class="depth3">
										<li class="first"><a
											href="https://ems.epost.go.kr/front.Tracking01.postal"
											title="인터넷 행방조회">인터넷 행방조회</a></li>
										<li><a
											href="https://ems.epost.go.kr/iservice.EmsSendMailFormFree.postal"
											title="이메일행방조사 청구">이메일행방조사 청구</a></li>
										<li><a
											href="https://ems.epost.go.kr/front.Tracking04.postal"
											title="서면 행방조사">서면 행방조사</a></li>
										<li><a
											href="https://ems.epost.go.kr/front.EmsInfoInfo01.postal"
											title="주요 우정청연락처">주요 우정청연락처</a></li>
										<li><a
											href="https://ems.epost.go.kr/front.Tracking05.postal"
											title="손해배상규정">손해배상규정</a></li>
									</ul></li>
								<li><a
									href="https://ems.epost.go.kr/front.EmsCustomsPrcInfo.postal"
									title="통관절차대행수수료 납부/조회">통관절차대행수수료<br />납부/조회
								</a></li>
								<li class="dep"><a
									href="https://ems.epost.go.kr/front.Introduction01.postal"
									title="서비스안내">서비스안내</a>
									<ul class="depth3">
										<li class="first"><a
											href="https://ems.epost.go.kr/front.Introduction01.postal"
											title="서비스개요">서비스개요</a></li>
										<li><a
											href="https://ems.epost.go.kr/front.Introduction07.postal"
											title="서비스절차">서비스절차</a></li>
										<li><a
											href="https://ems.epost.go.kr/front.EmsApplyGetDeliveryNation.postal"
											title="접수가능국가">접수가능국가</a></li>
										<li><a
											href="https://ems.epost.go.kr/front.Introduction04.postal"
											title="보낼수있는물품/보낼수없는물품">보낼수있는물품/보낼수없는물품</a></li>
									</ul></li>
								<li class="dep"><a
									href="https://ems.epost.go.kr/front.EmsSurveySurvey01.postal"
									title="국가별 발송조건 안내">국가별 발송조건 안내</a>
									<ul class="depth3">
										<li class="first"><a
											href="https://ems.epost.go.kr/front.EmsApplyGoCondition.postal"
											onclick="return goNewLink('15', this.href);"
											title="EMS/EMS프리미엄">EMS/EMS프리미엄</a></li>
										<li><a
											href="https://ems.epost.go.kr/front.EmsKPacketSendCondition.postal"
											onclick="return goNewLink('16', this.href);" title="K-Packet">K-Packet</a></li>
										<li><a
											href="https://ems.epost.go.kr/front.EmsParcelAirShipSendCondition.postal?frnMailDivcdTab=2&amp;frnTranspPartyDivcd=1"
											onclick="return goNewLink('17', this.href);" title="국제 소포/통상">국제
												소포/통상</a></li>
										<li><a
											href="https://ems.epost.go.kr/front.EmsSurveySurvey01.postal"
											title="국가별 통관정보">국가별 통관정보</a></li>
									</ul></li>
								<li class="dep"><a
									href="https://ems.epost.go.kr/front.Join01.postal"
									title="EMS/K-Packet계약제도">EMS/K-Packet계약제도</a>
									<ul class="depth3">
										<li class="first"><a
											href="https://ems.epost.go.kr/front.Join01.postal"
											title="EMS이용계약안내">EMS이용계약안내</a></li>
										<li><a href="https://ems.epost.go.kr/front.Join02.postal"
											title="K-Packet이용계약안내">K-Packet이용계약안내</a></li>
									</ul></li>
								<li class="dep"><a
									href="https://ems.epost.go.kr/front.Delivery07.postal"
									title="유용한 국제특송정보">유용한 국제특송정보</a>
									<ul class="depth3">
										<li class="first"><a
											href="https://ems.epost.go.kr/front.Delivery07.postal"
											title="세계주요국가시간">세계주요국가시간</a></li>
										<li><a
											href="https://ems.epost.go.kr/front.InfoGuidebook13G.postal"
											title="주요물품 영문표기">주요물품 영문표기</a></li>
										<li><a
											href="https://ems.epost.go.kr/front.EmsSearchHscode.postal?openGubun=Y"
											title="상품(HSCODE)검색">상품(HSCODE)검색</a></li>
										<li><a
											href="https://ems.epost.go.kr/front.Info_01.postal"
											title="상업송장쓰는법">상업송장쓰는법</a></li>
										<li><a
											href="https://ems.epost.go.kr/front.Info_05.postal"
											title="수출우편물 발송확인">수출우편물 발송확인</a></li>
										<li><a
											href="https://ems.epost.go.kr/front.Info_06.postal"
											title="미국행식품사전신고">미국행식품사전신고</a></li>
									</ul></li>
								<!-- 2016.04.05 기존 메뉴 백업 
					
						<li><a href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=ems&amp;s_url=https://ems.epost.go.kr/front.EmsApply1100c.postal" title="페이지이동">EMS 방문접수 예약</a></li>
						<li><a href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=ems&amp;s_url=https://ems.epost.go.kr/front.EmsApply1100s.postal" title="페이지이동">EMS e-쉬핑 창구접수</a></li>
						<li><a href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=ems_bsearch&amp;s_url=https://ems.epost.go.kr/front.EmsApply2000c.postal" title="페이지이동">예약조회/취소</a></li>
					
						<li><a href="https://ems.epost.go.kr/front.EmsCustomsPrcInfo.postal" title="페이지이동">통관절차대행수수료납부</a></li>
					 -->
							</ul>
						</div>
						<div class="menu m5">
							<h2>
								<a
									href="https://service.epost.go.kr/comm.RetrieveStampSrvcMain.postal"
									title="우표ㆍ엽서ㆍ축하카드">우표ㆍ엽서ㆍ축하카드</a>
							</h2>
							<ul class="depth2">
								<li class="dep"><a
									href="https://service.epost.go.kr/stamp.RetrievePostagGoodsList.postal?svctype=1&amp;timediv=2000&amp;targetRow=1"
									title="우표류">우표류</a>
									<ul class="depth3">
										<li class="first"><a
											href="https://service.epost.go.kr/stamp.RetrievePostagGoodsList.postal?svctype=1&amp;timediv=2000&amp;targetRow=1"
											title="우표">우표</a></li>
										<li><a
											href="https://service.epost.go.kr/stamp.RetrievePostagGoodsList.postal?svctype=7&amp;timediv=2000&amp;targetRow=1"
											title="우표책ㆍ첩">우표책ㆍ첩</a></li>
										<li><a
											href="https://service.epost.go.kr/stamp.RetrievePostagGoodsList.postal?svctype=9&amp;timediv=2000&amp;targetRow=1"
											title="초일봉투">초일봉투</a></li>
										<li><a
											href="https://service.epost.go.kr/mystampn.RetrieveMyPostagKindA.postal"
											title="나만의우표">나만의우표</a></li>
										<li><a
											href="https://service.epost.go.kr/front.estamp.onlineStampApplication.postal"
											title="인터넷우표">인터넷우표</a></li>
										<li><a
											href="https://service.epost.go.kr/front.RetrievePostagCommSellInfo.postal"
											title="취미우표통신판매">취미우표통신판매</a></li>
									</ul></li>
								<li class="dep"><a
									href="https://service.epost.go.kr/front.imagecardn.RetrieveImageCard.postal"
									title="엽서류">엽서류</a>
									<ul class="depth3">
										<li class="first"><a
											href="https://service.epost.go.kr/stamp.RetrievePostagGoodsList.postal?svctype=A&amp;timediv=2000&amp;targetRow=1"
											title="그림엽서">그림엽서</a></li>
										<li><a
											href="https://service.epost.go.kr/stamp.RetrievePostagGoodsList.postal?svctype=B&amp;timediv=2000&amp;targetRow=1"
											title="기념엽서">기념엽서</a></li>
										<li><a
											href="https://service.epost.go.kr/front.imagecardn.RetrieveImageCard.postal"
											title="e-그린엽서">e-그린엽서</a></li>
										<li><a
											href="https://service.epost.go.kr/postcard.RetrieveMyPostCdHelp.postal?ServiceGubun=O"
											title="고객맞춤형엽서">고객맞춤형엽서</a></li>
									</ul></li>
								<li class="dep"><a
									href="https://service.epost.go.kr/front.cardmail.RetrieveCardmailNew.postal?ServiceGubun=C"
									title="축하카드류">축하카드류</a>
									<ul class="depth3">
										<li class="first"><a
											href="https://service.epost.go.kr/front.cardmail.RetrieveCardmailNew.postal?ServiceGubun=C"
											title="축하카드">축하카드</a></li>
										<li><a
											href="https://service.epost.go.kr/front.cardmail.RetrieveHighCardmailNew.postal"
											title="축하선물카드">축하선물카드</a></li>


										<li><a
											href="https://service.epost.go.kr/front.newyearcard.RetrieveNewyearcardList1.postal"
											title="연하카드">연하카드</a></li>

									</ul></li>

								<li><a href="" target="_blank" title="한국우표포털 새창열림">한국우표포털</a></li>
								<li><a
									href="https://www.epost.go.kr/usr/login/cafzc008k01.jsp?login=stamp_bsearch"
									title="나의 이용정보">나의 이용정보</a></li>

							</ul>
						</div>
						<div class="menu m6">
							<h2>
								<a href="https://www.epost.go.kr/comm.alddl.noticeList.comm"
									title="우체국알뜰폰">우체국알뜰폰</a>
							</h2>
							<ul class="depth2">
								<li><a
									href="https://www.epost.go.kr/comm.alddl.noticeList.comm"
									title="온라인 숍">온라인 숍</a></li>
								<li><a
									href="https://www.epost.go.kr/comm.alddl.RetrieveAlddlChargeList.comm"
									title="요금제">요금제</a></li>
								<li><a
									href="https://www.epost.go.kr/comm.alddl.RetrieveAlddlPhoneImgList.comm"
									title="단말기">단말기</a></li>
								<li><a
									href="https://www.epost.go.kr/comm/alddl/alddl01k001.jsp"
									title="알뜰폰 소개">알뜰폰 소개</a></li>
								<li><a
									href="https://www.epost.go.kr/comm/alddl/alddl04k001.jsp"
									title="가입절차">가입절차</a></li>
								<li><a
									href="https://www.epost.go.kr/bbs.RetrieveFaqFrontView.comm?codetype=U&amp;code=U01"
									title="자주하는 질문">자주하는 질문</a></li>
								<li><a
									href="https://www.epost.go.kr/comm/alddl/alddl06k001.jsp"
									title="판매우체국찾기">판매우체국찾기</a></li>
								<li><a href="https://www.epost.go.kr/postphonecs.comm"
									title="문의게시판">문의게시판</a></li>

							</ul>
						</div>
						<div class="menu m7">
							<h2>
								<a
									href="https://service.epost.go.kr/goldbar.RetrievesGoldBarGoodsList.postal"
									title="골드바">골드바</a>
							</h2>
						</div>
						<div class="menu m9">
							<h2>
								<a href="http://biz.epost.go.kr/eportal/loginProcessFrmEps.jsp"
									target="_blank" title="계약고객전용 새창열림">계약고객전용</a>
							</h2>
						</div>
					</div>
				</div>
				<!-- 네비 끝 -->
			</div>
		</div>

	</div>
	<!-- 탑레이아웃 끝-->
	<!-- 서브바디레이아웃 시작 -->
	<div id="sbody_layout" style="width: 680px">
		<!-- 왼쪽메뉴 시작 -->
		<div class="lnb" style="display: none">
			<h2 class="f_s_24 l_s_1">
				<a id="Submenu" href="/iservice/usr/trace/usrtrc001k01.jsp">원클릭
					배송조회</a>
			</h2>
			<ul class="lnbList">
				<li class="current"><a
					href="/iservice/usr/trace/usrtrc001k01.jsp">국내우편(등기/택배)배송조회</a></li>
				<li><a
					href="https://service.epost.go.kr/trace.RetrieveEmsRigiTrace.comm">국제우편(EMS)배송조회</a></li>
				<li><a target="_blank" title="우체국쇼핑 주문조회 - 새창열림"
					href="https://mall.epost.go.kr/fo/center/moveCenterNonMemLogin.do">우체국쇼핑
						주문조회</a></li>
			</ul>

			<ul class="benefit">
				<li><a href="#" onclick="return popupSetting();"
					title="환경설정 안내">환경설정 안내</a></li>
			</ul>

			<dl class="customer">
				<dt>상담문의</dt>
				<dd>
					<strong>1588-1300</strong> 평일:09:00~18:00 <br /> 토요일:09:00~13:00
				</dd>
			</dl>
		</div>
		<!-- 왼쪽메뉴 끝 -->
		<!-- 컨텐츠 시작 -->
		<div id="contents_layout" class="contents_wrap" style="width: 680px">
			<div class="contents">
				<p class="m_b_40" style="display: none">등기 및 택배 우편물의 배송정보를 조회할 수
					있습니다.</p>
				<div class="h4_wrap">
					<div id="print">
						<div class="title_wrap">
							<h4>기본정보</h4>   

						</div>


						<table class="table_col" width="100%" border="0" cellspacing="0"
							cellpadding="0"
							summary="기본정보 표의 등기번호, 보내는분/발송날짜, 받는분/수신날짜, 취급구분, 배달결과 등의 정보 리스트">
							<caption>배송조회 기본정보 테이블</caption>
							<colgroup>
								<col style="width: 20%;" />
								<col style="width: 20%;" />
								<col style="width: 20%;" />
								<col style="width: 20%;" />
								<col style="width: 20%;" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col">등기번호</th>
									<th scope="col">보내는분/발송날짜</th>
									<th scope="col">받는분/수신날짜</th>
									<th scope="col">취급구분</th>
									<th scope="col" class="bg_image_no">배달결과</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">${deliveryNo}</th>
									<td><span id="sender"></span><br /><span id="sendDate"></span>
									</td>
									<td><span id="receiver"></span><br /> <span id="receiveDate"></span>


									</td>
									<td>&nbsp;</td>
									<td><span id="deliveryResult"></span></td>
								</tr>

							</tbody>
						</table>
						<div class="h4_wrap ma_t_10">
							<div class="title_wrap">
								<h4>배송 진행상황</h4>
							</div>
						</div>
						<div class="h4_wrap ma_t_5">
							<table class="table_col detail_off" width="100%" border="0"
								cellspacing="0" cellpadding="0"
								summary="배송 진행 현황표, 날짜, 시간 , 발생국, 처리 현황 상세 표기">
								<caption>배송진행현황 상세 표</caption>
								<colgroup>
									<col style="width: 25%;" />
									<col style="width: 15%;" />
									<col style="width: auto;" />
									<col style="width: 20%;" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col">날짜</th>
										<th scope="col">시간</th>
										<th scope="col">발생국</th>
										<!-- 김정목주사님 요청으로 타이틀명을 현재위치에서 발생국으로 변경 -->
										<th scope="col" class="bg_image_no">처리현황</th>
									</tr>
								</thead>
								<tbody id="trackingList">

								</tbody>
							</table>

							<div class="dpno no-print">
								<p class="t_a_c btnSetC ">
									<a class="btn_b w_180 bg_red4" href="#" id="btnPrint"
										onclick="print()" title="프린트하기">인쇄</a>   
								</p>
							</div>
						</div>

						<div class="h4_wrap m_b_0">  
							<div class="title_wrap">
								<h4>배송문의</h4>
							</div>
							<ul class="ul_list">
								<li>배송완료시간은 고객님이 실제 받으신 시각과 차이가 있을수 있습니다.</li>
								<li>인터넷 배송 정보제공은 우편물배달 여부를 고객에게 신속히 알려주는 것이 목적이며 각종 이해관계의
									증거자료로 사용하기 위해서는 배달증명 서비스를 이용하시기 바랍니다.</li>
								<li>조회서비스는 1년미만의 우편물만 가능합니다.</li>
								<li>자세한 사항은 우체국콜센터(1588-1300)로 문의하시기 바랍니다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 컨텐츠 끝 -->
	</div>
	<!-- 서브바디레이아웃 끝 -->
	<!-- 바텀레이아웃 시작 -->
	<div style="display: none">















		<div id="bottom_layout">
			<div class="bottom_wrap">
				<div class="btn_wrap">
					<ul class="btn">
						<li class="n1"><a
							href="https://www.epost.go.kr/comm/intro/introepost.jsp"
							title="인터넷우체국소개">인터넷우체국소개</a></li>
						<li class="n2"><a
							href="https://www.epost.go.kr/comm/etc/usefulGuide.jsp"
							onclick="return goNewLink('14',this.href);" target="_blank"
							title="전국 우체국 이용안내 - 새창열림">전국 우체국 이용안내</a></li>
						<li class="n3"><a
							href="https://www.epost.go.kr/affair/notice/cbfyb004k01.jsp"
							target="_top" title="이용약관">이용약관</a></li>
						<li class="n4"><a
							href="https://www.epost.go.kr/affair/notice/cbfyb005k01.jsp"
							target="_top" title="개인정보처리방침">개인정보처리방침</a></li>
						<li class="n5"><a
							href="https://www.epost.go.kr/affair/notice/cbfyb008k01.jsp"
							target="_top" title="웹접근성정책">웹접근성정책</a></li>
					</ul>
					<div class="etc_site">
						<form name="linkselectFrm" id="linkselectFrm" method="get"
							action="https://www.epost.go.kr/main/linkRedirect.jsp"
							onsubmit="return goLinkRef()" target="_blank" class="newfootlink">
							<select name="linkselect" id="linkselect" title="관련사이트">
								<option value="0" selected="selected">관련사이트</option>
								<option value="15">과학기술정보통신부</option>
								<option value="1">우정사업본부</option>
								<option value="2">서울지방우정청</option>
								<option value="16">경인지방우정청</option>
								<option value="3">부산지방우정청</option>
								<option value="8">충청지방우정청</option>
								<option value="6">전남지방우정청</option>
								<option value="5">경북지방우정청</option>
								<option value="7">전북지방우정청</option>
								<option value="4">강원지방우정청</option>
								<option value="9">제주지방우정청</option>
								<option value="13">우정공무원교육원</option>
								<option value="12">우정사업정보센터</option>
								<option value="14">우정사업조달센터</option>
								<option value="10">사이버우정박물관</option>
								<option value="17">한국우표포털서비스</option>
								<option value="11">한국우편사업진흥원</option>
							</select> <label class="skip" for="">관련사이트</label> <a href="#"
								id="btnMove" title="새창열림">이동</a>
						</form>
						<form name="linkMoveFrm" id="linkMoveFrm" method="get" action="/"
							target="_blank"></form>
					</div>
				</div>
			</div>
			<div class="add_wrap">
				<address>
					<img style="margin-top: 4px"
						src="https://service.epost.go.kr/np2assets/images/e1/logo_bottom.png"
						alt="우정사업본부 로고" /> &#160; 인터넷우체국 국장(대표) : 이기호 &#160; | &#160;
					사업자등록번호 : 206-83-02050 <br /> 58323 전라남도 나주시 정보화길 1, 인터넷우체국 (빛가람동)
					&#160; | &#160; 우체국콜센터 :1588-1300 &#160; | &#160; 팩스 :
					0505-005-1037 &#160; | &#160; 이메일 : privacy@epost.kr<br />
					Copyright(c) 2016. ePOST all rights reserved.<br />
				</address>
				<ul class="mark">
					<li class="n1"><a href="javascript:void(0);" id="btnPims"
						title="새창열림"><img
							src="https://service.epost.go.kr/np2assets/images/s1/bottom_mark_img_2.gif"
							alt="PIMS인증마크 획득" /></a></li>
					<!-- <li class="n2"><a href="javascript:void(0);" id="btnPrivacy" title="새창열림"><img src="https://service.epost.go.kr/np2assets/images/s1/bottom_mark_img_1.gif" alt="개인정보보호 마크" /></a></li> -->
					<li class="n2"><a href="javascript:void(0);" id="btnSsl"
						title="새창열림"><img
							src="https://service.epost.go.kr/np2assets/images/s1/bottom_mark_img_3.gif"
							alt="한국정보인증보안 마크" /></a></li>
					<li class="n3"><a href="javascript:void(0);" id="btnIsms"
						title="ISMS인증 획득 인터넷우체국 대국민 서비스 운영(2016.12.30~2019.12.29)"><img
							src="https://service.epost.go.kr/np2assets/images/s1/bottom_mark_img_5.gif"
							alt="ISMS인증마크 획득" /></a></li>
				</ul>
			</div>
		</div>



	</div>
	<!-- 바텀레이아웃 끝 -->

	<!-- 우체국 정보를 불러오기 위한 폼 추가 -->
	<form method="post" name="poInfoForm" id="poInfoForm"
		action="https://trace.epost.go.kr/xtts/servlet/kpl.tts.common.svl.SttSVL">
		<input type="hidden" name="target_command" /> <input type="hidden"
			name="JspURI" /> <input type="hidden" name="regiPoCd" value="" />
	</form>
	<!-- 배달상세 설명 Form -->
	<form method="post" name="termsForm"
		action="https://trace.epost.go.kr/xtts/tt/epost/trace/terms_detail.jsp">
		<input type="hidden" name="terms" value="" />
	</form>

	<!-- 마스킹 해제 조회 팝업 -->
	<form method="post" name="frmReqMasking" id="detailForm"
		action="/trace.RetrieveDomRigiTraceMaskingList.comm">
		<input type="hidden" name="sid1" value="6066251877888" /> <input
			type="hidden" name="enc_senderNm" value="lxBZXr10MT3J1rpNAv5ajA==" />
		<input type="hidden" name="enc_receverNm"
			value="g+CI8OKqO1c2HcDysWW6tg==" /> <input type="hidden"
			name="trgtCmd" value="/trace.RetrieveDomRigiTraceMaskingList.comm" />
	</form>

	<!-- 마스킹 해제된 결과  -->
	<form method="post" name="frmSolvResult" id="frmSolvResult"
		action="/trace.RetrieveDomRigiTraceSolvList.comm">
		<input type="hidden" name="sid1" value="6066251877888" /> <input
			type="hidden" name="prm_sender_nm" value="" /> <input type="hidden"
			name="prm_receiver_nm" value="" /> <input type="hidden"
			id="displayHeader" name="displayHeader" value="N" />
	</form>

	<!-- 변경전 화면으로 보기 팝업 -->
	<form name="tracefrm" id="tracefrm"
		action="/main.validateMainNoScript.comm" target="_blank">
		<input type="hidden" name="ems_gubun" value="E" /> <input
			type="hidden" name="sid1" value="6066251877888" /> <input
			type="hidden" name="POST_CODE" value="" /> <input type="hidden"
			name="mgbn" value="trace" /> <input type="hidden" name="traceselect"
			id="traceselect" value="" /> <input type="hidden"
			name="target_command" value="" /> <input type="hidden" name="JspURI"
			value="" /> <input type="hidden" name="postNum" id="postNum"
			value="6066251877888" />
	</form>

	<form name="tempFrm" id="tempFrm"
		action="/main.validateMainNoScript.comm">

		<input type="hidden" id="prgsHere" value="0" /> <input type="hidden"
			id="detatilview0" value="0" /> <input type="hidden"
			id="detatilview1" value="6" /> <input type="hidden"
			id="detatilview2" value="0" /> <input type="hidden"
			id="detatilview3" value="0" /> <input type="hidden"
			id="detatilview4" value="0" /> <input type="hidden"
			id="detatilview5" value="0" /> <input type="hidden"
			id="detatilview6" value="0" /> <input type="hidden"
			id="detatilview7" value="0" /> <input type="hidden"
			id="detatilview8" value="0" /> <input type="hidden"
			id="detatilview9" value="0" />

	</form>



	<form method="post" name="FormCmsDetailInfo" id="FormCmsDetailInfo"
		action="https://trace.epost.go.kr/xtts/servlet/kpl.tts.common.svl.VisSVL"
		target="detailinfo">
		<input type="hidden" name="target_command"
			value="kpl.tts.tt.fmt.cmd.RetrieveCmsDetailInfoCMD"> <input
			type="hidden" name="JspURI" value="/xtts/tt/fmt/KP_CmsDetailInfo.jsp">
				<input type="hidden" name="RegiNo" value=""> <input
					type="hidden" name="DelivYmd" value=""> <input
						type="hidden" name="EventPocd" value=""> <input
							type="hidden" name="delivSeq" value=""> <input
								type="hidden" name="delivRdCnt" value=""> <input
									type="hidden" name="delivDoneCnt" value=""> <input
										type="hidden" name="pageNo" value="1"> <input
											type="hidden" name="pageSize" value="10">
	</form>

</body>
</html>
