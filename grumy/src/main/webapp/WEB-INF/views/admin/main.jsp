<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="util"  uri="/ELFunctions" %>
<c:set var="root" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<title>관리자 페이지</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

</head>
<body>
	<div id="container">
			<div id="contents">
			
		<h3>관리자 페이지 입니다</h3>
		<div id="seller-content" class="seller-sub-frame">
		<!---->
		<!---->
		<!---->
		<ui-view>
		<div class="seller-dashboard">
			<!---->
			<ui-view name="important-notice"><!---->
			<div class="alert seller-notice-alert has-icon"
				ng-if="::vm.importantNotice">
				<!---->
				<!---->
				<a class="no-decoration"
					ui-sref="main.centernotice.detail({noticeId: vm.importantNotice.id})"
					ng-if="::vm.importantNotice.exposeMethodType !== 'LINK'"
					data-nclicks-code="bell.notice"
					href="#/center-notice/detail/100005457"><span
					class="round-ico-area"><i class="fn fn-alert2"
						aria-hidden="true"></i></span> <span class="notice-title">[시스템]
						11월 14일 정산 대금 및 충전금 출금 계좌이체 지연 예정 안내</span> <span class="notice-date"
					ng-bind="::vm.importantNotice.regDate">2019.11.13.</span></a>
				<!---->
			</div>
			<!----><!----></ui-view>
			<div class="seller-sub-content">
				<div style="position: relative">
					<!---->
					<div class="row">
						<!---->
						<!---->
						<ui-view name="naverpay-salesinfo">
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="panel panel-dashboard panel-deposit">
								<!---->
								<div class="panel-body"
									ng-if="vm.paymentInfo &amp;&amp; vm.paymentInfo.$resolved"
									style="">
									<div class="panel-icon-area">
										<span class="square-ico-area"><i
											class="seller-icon icon-deposit" aria-hidden="true"></i></span> <a
											href="" role="button" class="btn-refresh font-icon-button"
											ng-click="vm.refreshAndGetSalesInfo('payment')"
											data-nclicks-code="ord.ref"><i class="fn fn-refresh"
											aria-hidden="true"></i> <span class="sr-only">새로고침</span></a>
									</div>
									<ul class="panel-list">
										<li><span class="info-title">입금대기</span> <span
											class="number-area aa">
												<!---->
												<a ng-if="::vm.isDesktop"
												ui-sref="main.naverpay_sale_unpayment" class="text-number"
												ng-bind="::vm.paymentInfo.paymentWaitCases"
												data-nclicks-code="ord.paymentwait"
												href="${root }/admin/mwait">${wait}</a>
											<!----> <!---->
												<span>건</span>
										</span></li>
										<li><span class="info-title">신규주문</span> <span
											class="number-area">
												<!---->
												<a ng-if="::vm.isDesktop"
												ui-sref="main.naverpay_sale_delivery" class="text-number"
												ng-bind="::vm.paymentInfo.newOrderCases"
												data-nclicks-code="ord.new" 
												href="${root }/admin/newOrder">${nOrder}</a>
											<!----> <!---->
												<span>건</span>
										</span></li>
										<span>&nbsp</span>
									</ul>
								</div>
								<!---->
								<!---->
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="panel panel-dashboard panel-delivery">
								<!---->
								<div class="panel-body"
									ng-if="vm.delivery &amp;&amp; vm.delivery.$resolved" style="">
									<div class="panel-icon-area">
										<span class="square-ico-area"><i
											class="seller-icon icon-delivery" aria-hidden="true"></i></span> <a
											href="" role="button" class="btn-refresh font-icon-button"
											ng-click="vm.refreshAndGetSalesInfo('delivery')"
											data-nclicks-code="del.ref"><i class="fn fn-refresh"
											aria-hidden="true"></i> <span class="sr-only">새로고침</span></a>
									</div>
									<ul class="panel-list">
										<li><span class="info-title">배송준비</span> <span
											class="number-area">
												<!---->
												<a ng-if="::vm.isDesktop"
												ui-sref="main.naverpay_sale_delivery({summaryInfoType : 'DELIVERY_READY'})"
												class="text-number"
												ng-bind="::vm.paymentInfo.deliveryPreparingCases"
												data-nclicks-code="del.wait"
												href="${root }/admin/sendReady">${sReady}</a>
											<!----> <!---->
												<span>건</span>
										</span></li>
										<li ><span class="info-title">배송중</span> <span
											class="number-area" >
												<!---->
												<a ng-if="::vm.isDesktop"
												ui-sref="main.naverpay_sale_delivery_situation({summaryInfoType : 'DELIVERING'})"
												class="text-number" ng-bind="::vm.delivery.deliveringCases"
												data-nclicks-code="del.ing"
												href="${root }/admin/sending">${sIng}</a>
											<!----> <!---->
												<span>건</span>
										</span></li>
										<li><span class="info-title">배송완료</span> <span
											class="number-area">
												<!---->
												<a ng-if="::vm.isDesktop"
												ui-sref="main.naverpay_sale_delivery_situation({summaryInfoType : 'DELIVERED'})"
												class="text-number" ng-bind="::vm.delivery.deliveredCases"
												data-nclicks-code="del.completed"
												href="${root }/admin/sendFin">${sFin}</a>
											<!----> <!---->
												<span>건</span>
										</span></li>
									</ul>
								</div>
								<!---->
								<!---->
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="panel panel-dashboard panel-return">
								<!---->
								<div class="panel-body"
									ng-if="vm.claim &amp;&amp; vm.claim.$resolved" style="">
									<div class="panel-icon-area">
										<span class="square-ico-area"><i
											class="seller-icon icon-return" aria-hidden="true"></i></span> <a
											href="" role="button" class="btn-refresh font-icon-button"
											ng-click="vm.refreshAndGetSalesInfo('claim')"
											data-nclicks-code="claim.ref"><i class="fn fn-refresh"
											aria-hidden="true"></i> <span class="sr-only">새로고침</span></a>
									</div>
									<ul class="panel-list">
										<li><span class="info-title">취소요청</span> <span
											class="number-area">
												<!---->
												<a ng-if="::vm.isDesktop"
												ui-sref="main.naverpay_claim_cancel({summaryInfoType : 'CANCEL_REQUEST'})"
												class="text-number" ng-bind="::vm.claim.cancelClaimCases"
												data-nclicks-code="claim.cancel"
												href="#/naverpay/claim/cancel?summaryInfoType=CANCEL_REQUEST">0</a>
											<!----> <!---->
												<span>건</span>
										</span></li>
										<li><span class="info-title">반품요청</span> <span
											class="number-area">
												<!---->
												<a ng-if="::vm.isDesktop"
												ui-sref="main.naverpay_claim_return({summaryInfoType : 'RETURN_REQUEST'})"
												class="text-number" ng-bind="::vm.claim.returnClaimCases"
												data-nclicks-code="claim.return"
												href="#/naverpay/claim/return?summaryInfoType=RETURN_REQUEST">0</a>
											<!----> <!---->
												<span>건</span>
										</span></li>
										<li><span class="info-title">교환요청</span> <span
											class="number-area">
												<!---->
												<a ng-if="::vm.isDesktop"
												ui-sref="main.naverpay_claim_exchange({summaryInfoType : 'EXCHANGE_REQUEST'})"
												class="text-number" ng-bind="::vm.claim.exchangeClaimCases"
												data-nclicks-code="claim.exchange"
												href="#/naverpay/claim/exchange?summaryInfoType=EXCHANGE_REQUEST">0</a>
											<!----> <!---->
												<span>건</span>
										</span></li>
									</ul>
								</div>
								<!---->
								<!---->
							</div>
						</div>
						</ui-view>
						<!---->
						<ui-view name="settlement-report">
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="panel panel-dashboard panel-settlement">
								<!---->
								<div class="panel-body"
									ng-if="vm.settlement &amp;&amp; vm.settlement.$resolved"
									style="">
									<div class="panel-icon-area">
										<span class="square-ico-area"><i
											class="seller-icon icon-settlement" aria-hidden="true"></i></span> <a
											href="" role="button" class="btn-refresh font-icon-button"
											ng-click="vm.getSettlementInfo()" data-nclicks-code="set.ref"><i
											class="fn fn-refresh" aria-hidden="true"></i> <span
											class="sr-only">새로고침</span></a>
									</div>
									<ul class="panel-list">
										<li><span class="info-title">오늘정산</span> <span
											class="number-area">
												<!---->
												<a ng-if="::vm.isDesktop"
												ui-sref="main.naverpay_settlemgt_sellerdailysettle({searchType: 'settleToday'})"
												class="text-number" ng-bind="::vm.settlement.todayAmount"
												data-nclicks-code="set.today"
												href="#/naverpay/settlemgt/sellerdailysettle?searchType=settleToday">0</a>
											<!----> <!---->
												<span>원</span>
										</span></li>
										<li><span class="info-title">정산예정</span> <span
											class="number-area">
												<!---->
												<a ng-if="::vm.isDesktop"
												ui-sref="main.naverpay_settlemgt_sellerdailysettle({searchType: 'settleExpect'})"
												class="text-number" ng-bind="::vm.settlement.expectedAmount"
												data-nclicks-code="set.expected"
												href="#/naverpay/settlemgt/sellerdailysettle?searchType=settleExpect">0</a>
											<!----> <!---->
												<span>원</span>
										</span></li>
										<li><span class="info-title">충전금</span> <span
											class="number-area">
												<!---->
												<a ng-if="::vm.isDesktop" ui-sref="main.naverpay_charge"
												class="text-number" ng-bind="::vm.settlement.chargeBalance"
												data-nclicks-code="set.charge" href="#/naverpay/charge">0</a>
											<!----> <!---->
												<span>원</span>
										</span></li>
									</ul>
								</div>
								<!---->
								<!---->
							</div>
						</div>
						</ui-view>
						<!---->
						<ui-view name="naverpay-saleschart-new"><!---->
						<div class="col-lg-6 col-md-12 col-sm-12" ng-if="!vm.isMobile">
							<div class="panel panel-dashboard panel-stats">
								<div class="panel-heading">
									<div class="pull-left">
										<h3 class="panel-title">스토어 매출 통계</h3>
									</div>
									<div class="pull-right">
										<span class="store-name hidden-xs"><a
											ng-href="https://smartstore.naver.com/gyeongjadd"
											target="_blank" data-nclicks-code="sales.storemove"
											href="https://smartstore.naver.com/gyeongjadd">
												<!---->
												<!---->
												<img
												ng-if="!vm.channelRepresentImageUrl || vm.channelRepresentImageUrl === ''"
												src="/images/no-img.jpg" class="img-circle" width="36"
												height="36" alt="등록된 스토어 대표이미지 없음">
											<!---->
												<span class="label storefarm" style="">스마트스토어</span> 경자네 떡볶이<i
												class="fn-shopping fn-shopping-forward2 text-muted"
												aria-hidden="true"></i>
										</a></span>
									</div>
								</div>
								<div class="panel-body">
									<div class="text-center">
										<div data-toggle="buttons"
											class="btn-group btn-group-customize">
											<label class="btn btn-default active"
												ng-class="{active: vm.currentChartIndex === 0}"
												ng-click="vm.showChart(0)"
												data-nclicks-code="sales.numofpay"><input
												type="radio">결제건수</label><label class="btn btn-default"
												ng-class="{active: vm.currentChartIndex === 1}"
												ng-click="vm.showChart(1)" data-nclicks-code="sales.payer"><input
												type="radio">결제자수</label><label class="btn btn-default"
												ng-class="{active: vm.currentChartIndex === 2}"
												ng-click="vm.showChart(2)" data-nclicks-code="sales.price"><input
												type="radio">결제금액</label>
										</div>
									</div>
									<div class="stats-area">
										<!---->
										<div id="chart-container-paycount"
											style="height: 275px; margin: 0px auto; overflow: hidden;"
											ng-if="vm.currentChartIndex === 0"
											ng-click="vm.movePeriodStat()"
											data-nclicks-code="sales.numofpaycont"
											data-highcharts-chart="0">
											<div id="highcharts-m5hcmil-0" dir="ltr"
												class="highcharts-container "
												style="position: relative; overflow: hidden; width: 684px; height: 275px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
												<svg version="1.1" class="highcharts-root"
													style="font-family: &amp; quot; Lucida Grande&amp;quot; , &amp; quot; Lucida Sans Unicode&amp;quot; , Arial , Helvetica, sans-serif; font-size: 12px;"
													xmlns="http://www.w3.org/2000/svg" width="684" height="275"
													viewBox="0 0 684 275">
													<desc>Created with Highcharts 7.1.1</desc>
													<defs>
													<clipPath id="highcharts-m5hcmil-1-">
													<rect x="0" y="0" width="642" height="207" fill="none"></rect></clipPath>
													<clipPath id="highcharts-m5hcmil-33-">
													<rect x="0" y="0" width="642" height="207" fill="none"></rect></clipPath></defs>
													<rect fill="#ffffff" class="highcharts-background" x="0"
														y="0" width="684" height="275" rx="0" ry="0"></rect>
													<rect fill="none" class="highcharts-plot-background" x="32"
														y="10" width="642" height="207"></rect>
													<g class="highcharts-grid highcharts-xaxis-grid"
														data-z-index="1">
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 52.5 10 L 52.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 74.5 10 L 74.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 95.5 10 L 95.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 117.5 10 L 117.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 138.5 10 L 138.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 159.5 10 L 159.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 181.5 10 L 181.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 202.5 10 L 202.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 224.5 10 L 224.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 245.5 10 L 245.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 266.5 10 L 266.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 288.5 10 L 288.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 309.5 10 L 309.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 331.5 10 L 331.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 352.5 10 L 352.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 373.5 10 L 373.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 395.5 10 L 395.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 416.5 10 L 416.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 438.5 10 L 438.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 459.5 10 L 459.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 480.5 10 L 480.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 502.5 10 L 502.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 523.5 10 L 523.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 545.5 10 L 545.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 566.5 10 L 566.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 587.5 10 L 587.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 609.5 10 L 609.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 630.5 10 L 630.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 652.5 10 L 652.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 673.5 10 L 673.5 217"
														opacity="1"></path>
													<path fill="none" data-z-index="1"
														class="highcharts-grid-line" d="M 31.5 10 L 31.5 217"
														opacity="1"></path></g>
													<g class="highcharts-grid highcharts-yaxis-grid"
														data-z-index="1">
													<path fill="none" stroke="#dfe5e7" stroke-width="1"
														stroke-dasharray="1,3" data-z-index="1"
														class="highcharts-grid-line" d="M 32 114.5 L 674 114.5"
														opacity="1"></path></g>
													<rect fill="none" class="highcharts-plot-border"
														data-z-index="1" x="32" y="10" width="642" height="207"></rect>
													<g class="highcharts-axis highcharts-xaxis"
														data-z-index="2">
													<path fill="none" class="highcharts-axis-line"
														stroke="#ccd6eb" stroke-width="1" data-z-index="7"
														d="M 32 217.5 L 674 217.5"></path></g>
													<g class="highcharts-axis highcharts-yaxis"
														data-z-index="2">
													<path fill="none" class="highcharts-axis-line"
														data-z-index="7" d="M 32 10 L 32 217"></path></g>
													<g class="highcharts-series-group" data-z-index="3">
													<g data-z-index="0.1"
														class="highcharts-series highcharts-series-0 highcharts-spline-series                           "
														transform="translate(32,10) scale(1 1)"
														clip-path="url(#highcharts-m5hcmil-33-)">
													<path fill="none"
														d="M 10.7 103.5 C 10.7 103.5 23.540000000000003 103.5 32.1 103.5 C 40.660000000000004 103.5 44.94 103.5 53.5 103.5 C 62.06 103.5 66.34 103.5 74.9 103.5 C 83.46000000000001 103.5 87.74 103.5 96.3 103.5 C 104.85999999999999 103.5 109.14000000000001 103.5 117.7 103.5 C 126.25999999999999 103.5 130.54 103.5 139.1 103.5 C 147.66 103.5 151.94 103.5 160.5 103.5 C 169.06 103.5 173.34 103.5 181.9 103.5 C 190.46 103.5 194.74 103.5 203.3 103.5 C 211.86000000000004 103.5 216.13999999999996 103.5 224.7 103.5 C 233.26 103.5 237.53999999999996 103.5 246.1 103.5 C 254.66 103.5 258.94 103.5 267.5 103.5 C 276.06 103.5 280.34 103.5 288.9 103.5 C 297.46 103.5 301.74 103.5 310.3 103.5 C 318.86 103.5 323.14 103.5 331.7 103.5 C 340.26 103.5 344.5400000000001 103.5 353.1 103.5 C 361.66 103.5 365.94 103.5 374.5 103.5 C 383.06 103.5 387.34 103.5 395.9 103.5 C 404.4599999999999 103.5 408.74 103.5 417.3 103.5 C 425.86 103.5 430.14 103.5 438.7 103.5 C 447.26000000000005 103.5 451.5400000000001 103.5 460.1 103.5 C 468.66 103.5 472.93999999999994 103.5 481.5 103.5 C 490.06000000000006 103.5 494.34 103.5 502.9 103.5 C 511.4599999999999 103.5 515.74 103.5 524.3 103.5 C 532.86 103.5 537.14 103.5 545.7 103.5 C 554.26 103.5 558.5400000000001 103.5 567.1 103.5 C 575.6600000000001 103.5 579.9399999999999 103.5 588.5 103.5 C 597.0600000000001 103.5 601.3399999999999 103.5 609.9 103.5 C 618.4599999999999 103.5 631.3 103.5 631.3 103.5"
														class="highcharts-graph" data-z-index="1" stroke="#40c65a"
														stroke-width="2" stroke-linejoin="round"
														stroke-linecap="round"></path>
													<path fill="none"
														d="M 0.6999999999999993 103.5 L 10.7 103.5 C 10.7 103.5 23.540000000000003 103.5 32.1 103.5 C 40.660000000000004 103.5 44.94 103.5 53.5 103.5 C 62.06 103.5 66.34 103.5 74.9 103.5 C 83.46000000000001 103.5 87.74 103.5 96.3 103.5 C 104.85999999999999 103.5 109.14000000000001 103.5 117.7 103.5 C 126.25999999999999 103.5 130.54 103.5 139.1 103.5 C 147.66 103.5 151.94 103.5 160.5 103.5 C 169.06 103.5 173.34 103.5 181.9 103.5 C 190.46 103.5 194.74 103.5 203.3 103.5 C 211.86000000000004 103.5 216.13999999999996 103.5 224.7 103.5 C 233.26 103.5 237.53999999999996 103.5 246.1 103.5 C 254.66 103.5 258.94 103.5 267.5 103.5 C 276.06 103.5 280.34 103.5 288.9 103.5 C 297.46 103.5 301.74 103.5 310.3 103.5 C 318.86 103.5 323.14 103.5 331.7 103.5 C 340.26 103.5 344.5400000000001 103.5 353.1 103.5 C 361.66 103.5 365.94 103.5 374.5 103.5 C 383.06 103.5 387.34 103.5 395.9 103.5 C 404.4599999999999 103.5 408.74 103.5 417.3 103.5 C 425.86 103.5 430.14 103.5 438.7 103.5 C 447.26000000000005 103.5 451.5400000000001 103.5 460.1 103.5 C 468.66 103.5 472.93999999999994 103.5 481.5 103.5 C 490.06000000000006 103.5 494.34 103.5 502.9 103.5 C 511.4599999999999 103.5 515.74 103.5 524.3 103.5 C 532.86 103.5 537.14 103.5 545.7 103.5 C 554.26 103.5 558.5400000000001 103.5 567.1 103.5 C 575.6600000000001 103.5 579.9399999999999 103.5 588.5 103.5 C 597.0600000000001 103.5 601.3399999999999 103.5 609.9 103.5 C 618.4599999999999 103.5 631.3 103.5 631.3 103.5 L 641.3 103.5"
														visibility="visible" data-z-index="2"
														class="highcharts-tracker-line" stroke-linejoin="round"
														stroke="rgba(192,192,192,0.0001)" stroke-width="22"></path></g>
													<g data-z-index="0.1"
														class="highcharts-markers highcharts-series-0 highcharts-spline-series  highcharts-tracker                          "
														transform="translate(32,10) scale(1 1)">
													<path fill="#40c65a" visibility="hidden"
														d="M 481 103.5 A 0 0 0 1 1 481 103.5 Z"
														class="highcharts-halo highcharts-color-undefined"
														data-z-index="-1" fill-opacity="0.25"></path>
													<path fill="#40c65a"
														d="M 10 107.5 A 4 4 0 1 1 10.003999999333336 107.49999800000016 Z"
														opacity="1" class="highcharts-point        "
														stroke-width="0.00013370462563896957"></path>
													<path fill="#40c65a"
														d="M 32 107.5 A 4 4 0 1 1 32.00399999933334 107.49999800000016 Z"
														opacity="1" class="highcharts-point       "
														stroke-width="0.0000739951994314092"></path>
													<path fill="#40c65a"
														d="M 53 107.5 A 4 4 0 1 1 53.00399999933334 107.49999800000016 Z"
														opacity="1" class="highcharts-point          "
														stroke-width="0.000009765919006587964"></path>
													<path fill="#40c65a"
														d="M 74 107.5 A 4 4 0 1 1 74.00399999933333 107.49999800000016 Z"
														opacity="1" class="highcharts-point           "
														stroke-width="0.000002489868603581906"></path>
													<path fill="#40c65a"
														d="M 96 107.5 A 4 4 0 1 1 96.00399999933333 107.49999800000016 Z"
														opacity="1" class="highcharts-point             "
														stroke-width="0.00018460373668953423"></path>
													<path fill="#40c65a"
														d="M 117 107.5 A 4 4 0 1 1 117.00399999933333 107.49999800000016 Z"
														opacity="1" class="highcharts-point          "
														stroke-width="0.000006913693352275652"></path>
													<path fill="#40c65a"
														d="M 139 107.5 A 4 4 0 1 1 139.00399999933333 107.49999800000016 Z"
														opacity="1" class="highcharts-point             "
														stroke-width="0.000002489868603581906"></path>
													<path fill="#40c65a"
														d="M 160 107.5 A 4 4 0 1 1 160.00399999933333 107.49999800000016 Z"
														opacity="1" class="highcharts-point               "
														stroke-width="0.00035526367970539763"></path>
													<path fill="#40c65a"
														d="M 181 107.5 A 4 4 0 1 1 181.00399999933333 107.49999800000016 Z"
														opacity="1" class="highcharts-point                   "
														stroke-width="0.005211940698674589"></path>
													<path fill="#40c65a"
														d="M 203 107.5 A 4 4 0 1 1 203.00399999933333 107.49999800000016 Z"
														opacity="1" class="highcharts-point                  "
														stroke-width="0.00009960767349234678"></path>
													<path fill="#40c65a"
														d="M 224 107.5 A 4 4 0 1 1 224.00399999933333 107.49999800000016 Z"
														opacity="1" class="highcharts-point              "
														stroke-width="0.000024905851140455404"></path>
													<path fill="#40c65a"
														d="M 246 107.5 A 4 4 0 1 1 246.00399999933333 107.49999800000016 Z"
														opacity="1" class="highcharts-point                "
														stroke-width="0.000003864219166656302"></path>
													<path fill="#40c65a"
														d="M 267 107.5 A 4 4 0 1 1 267.00399999933336 107.49999800000016 Z"
														opacity="1" class="highcharts-point                     "
														stroke-width="0.0000055806308910770486"></path>
													<path fill="#40c65a"
														d="M 288 107.5 A 4 4 0 1 1 288.00399999933336 107.49999800000016 Z"
														opacity="1" class="highcharts-point            "
														stroke-width="0.0000019063997278492145"></path>
													<path fill="#40c65a"
														d="M 310 107.5 A 4 4 0 1 1 310.00399999933336 107.49999800000016 Z"
														opacity="1" class="highcharts-point                "
														stroke-width="0.000001398469010524539"></path>
													<path fill="#40c65a"
														d="M 331 107.5 A 4 4 0 1 1 331.00399999933336 107.49999800000016 Z"
														opacity="1" class="highcharts-point                 "
														stroke-width="2.434226006665149e-7"></path>
													<path fill="#40c65a"
														d="M 353 107.5 A 4 4 0 1 1 353.00399999933336 107.49999800000016 Z"
														opacity="1" class="highcharts-point                "
														stroke-width="0.000002489868603581906"></path>
													<path fill="#40c65a"
														d="M 374 107.5 A 4 4 0 1 1 374.00399999933336 107.49999800000016 Z"
														opacity="1" class="highcharts-point             "
														stroke-width="9.727297248700653e-7"></path>
													<path fill="#40c65a"
														d="M 395 107.5 A 4 4 0 1 1 395.00399999933336 107.49999800000016 Z"
														opacity="1" class="highcharts-point                "
														stroke-width="0.0000024415761399401714"></path>
													<path fill="#40c65a"
														d="M 417 107.5 A 4 4 0 1 1 417.00399999933336 107.49999800000016 Z"
														opacity="1" class="highcharts-point        "
														stroke-width="0.0000021736733387713036"></path>
													<path fill="#40c65a"
														d="M 438 107.5 A 4 4 0 1 1 438.00399999933336 107.49999800000016 Z"
														opacity="1" class="highcharts-point          "
														stroke-width="0.000034763329699621925"></path>
													<path fill="#40c65a"
														d="M 460 107.5 A 4 4 0 1 1 460.00399999933336 107.49999800000016 Z"
														opacity="1" class="highcharts-point         "
														stroke-width="0.000006925950141067894"></path>
													<path fill="#40c65a"
														d="M 481 107.5 A 4 4 0 1 1 481.00399999933336 107.49999800000016 Z"
														opacity="1" class="highcharts-point        "
														stroke-width="0.000008136685900994589"></path>
													<path fill="#40c65a"
														d="M 502 107.5 A 4 4 0 1 1 502.00399999933336 107.49999800000016 Z"
														opacity="1" class="highcharts-point    "
														stroke-width="0.000005349874453192127"></path>
													<path fill="#40c65a"
														d="M 524 107.5 A 4 4 0 1 1 524.0039999993334 107.49999800000016 Z"
														opacity="1" class="highcharts-point        "
														stroke-width="6.225654573168565e-7"></path>
													<path fill="#40c65a"
														d="M 545 107.5 A 4 4 0 1 1 545.0039999993334 107.49999800000016 Z"
														opacity="1" class="highcharts-point   "
														stroke-width="0.0000024907536642349275"></path>
													<path fill="#40c65a"
														d="M 567 107.5 A 4 4 0 1 1 567.0039999993334 107.49999800000016 Z"
														opacity="1" class="highcharts-point   "
														stroke-width="9.589639233045788e-8"></path>
													<path fill="#40c65a"
														d="M 588 107.5 A 4 4 0 1 1 588.0039999993334 107.49999800000016 Z"
														opacity="1" class="highcharts-point "
														stroke-width="0.00003947789809188862"></path>
													<path fill="#40c65a"
														d="M 609 107.5 A 4 4 0 1 1 609.0039999993334 107.49999800000016 Z"
														opacity="1" class="highcharts-point "></path>
													<path fill="#40c65a"
														d="M 631 108 A 4 4 0 1 1 631.0039999993334 107.99999800000016 Z"
														opacity="1" class="highcharts-point"></path></g></g>
													<text x="342" text-anchor="middle" class="highcharts-title"
														data-z-index="4"
														style="color:#333333;font-size:18px;fill:#333333;" y="24"></text>
													<text x="342" text-anchor="middle"
														class="highcharts-subtitle" data-z-index="4"
														style="color:#666666;fill:#666666;" y="24"></text>
													<g class="highcharts-axis-labels highcharts-xaxis-labels"
														data-z-index="7">
													<text x="45.292724864350674"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 45.292724864350674 233)"
														y="233" opacity="1">10.14.</text>
													<text x="66.69272486435067"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 66.69272486435067 233)"
														y="233" opacity="1">10.15.</text>
													<text x="88.09272486435067"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 88.09272486435067 233)"
														y="233" opacity="1">10.16.</text>
													<text x="109.49272486435066"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 109.49272486435066 233)"
														y="233" opacity="1">10.17.</text>
													<text x="130.8927248643507"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 130.8927248643507 233)"
														y="233" opacity="1">10.18.</text>
													<text x="152.2927248643507"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 152.2927248643507 233)"
														y="233" opacity="1">10.19.</text>
													<text x="173.6927248643507"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 173.6927248643507 233)"
														y="233" opacity="1">10.20.</text>
													<text x="195.09272486435069"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 195.09272486435069 233)"
														y="233" opacity="1">10.21.</text>
													<text x="216.4927248643507"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 216.4927248643507 233)"
														y="233" opacity="1">10.22.</text>
													<text x="237.8927248643507"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 237.8927248643507 233)"
														y="233" opacity="1">10.23.</text>
													<text x="259.29272486435065"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 259.29272486435065 233)"
														y="233" opacity="1">10.24.</text>
													<text x="280.6927248643507"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 280.6927248643507 233)"
														y="233" opacity="1">10.25.</text>
													<text x="302.09272486435066"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 302.09272486435066 233)"
														y="233" opacity="1">10.26.</text>
													<text x="323.4927248643507"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 323.4927248643507 233)"
														y="233" opacity="1">10.27.</text>
													<text x="344.89272486435067"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 344.89272486435067 233)"
														y="233" opacity="1">10.28.</text>
													<text x="366.29272486435065"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 366.29272486435065 233)"
														y="233" opacity="1">10.29.</text>
													<text x="387.6927248643507"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 387.6927248643507 233)"
														y="233" opacity="1">10.30.</text>
													<text x="409.09272486435066"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 409.09272486435066 233)"
														y="233" opacity="1">10.31.</text>
													<text x="430.4927248643507"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 430.4927248643507 233)"
														y="233" opacity="1">11.01.</text>
													<text x="451.89272486435067"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 451.89272486435067 233)"
														y="233" opacity="1">11.02.</text>
													<text x="473.29272486435065"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 473.29272486435065 233)"
														y="233" opacity="1">11.03.</text>
													<text x="494.6927248643507"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 494.6927248643507 233)"
														y="233" opacity="1">11.04.</text>
													<text x="516.0927248643507"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 516.0927248643507 233)"
														y="233" opacity="1">11.05.</text>
													<text x="537.4927248643506"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 537.4927248643506 233)"
														y="233" opacity="1">11.06.</text>
													<text x="558.8927248643506"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 558.8927248643506 233)"
														y="233" opacity="1">11.07.</text>
													<text x="580.2927248643506"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 580.2927248643506 233)"
														y="233" opacity="1">11.08.</text>
													<text x="601.6927248643506"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 601.6927248643506 233)"
														y="233" opacity="1">11.09.</text>
													<text x="623.0927248643507"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 623.0927248643507 233)"
														y="233" opacity="1">11.10.</text>
													<text x="644.4927248643506"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 644.4927248643506 233)"
														y="233" opacity="1">11.11.</text>
													<text x="665.8927248643506"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end"
														transform="translate(0,0) rotate(-45 665.8927248643506 233)"
														y="233" opacity="1">11.12.</text></g>
													<g class="highcharts-axis-labels highcharts-yaxis-labels"
														data-z-index="7">
													<text x="17"
														style="color:#858992;cursor:default;font-size:11px;fill:#858992;"
														text-anchor="end" transform="translate(0,0)" y="118"
														opacity="1">0</text></g>
													<g
														class="highcharts-label highcharts-tooltip highcharts-color-undefined"
														style="pointer-events:none;white-space:nowrap;"
														data-z-index="8" transform="translate(487,-9999)"
														opacity="0" visibility="visible">
													<path fill="none"
														class="highcharts-label-box highcharts-tooltip-box highcharts-shadow"
														d="M 3.5 0.5 L 52.5 0.5 C 55.5 0.5 55.5 0.5 55.5 3.5 L 55.5 59.5 C 55.5 62.5 55.5 62.5 52.5 62.5 L 32.5 62.5 26.5 68.5 20.5 62.5 3.5 62.5 C 0.5 62.5 0.5 62.5 0.5 59.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
														stroke="#000000" stroke-opacity="0.049999999999999996"
														stroke-width="5" transform="translate(1, 1)"></path>
													<path fill="none"
														class="highcharts-label-box highcharts-tooltip-box highcharts-shadow"
														d="M 3.5 0.5 L 52.5 0.5 C 55.5 0.5 55.5 0.5 55.5 3.5 L 55.5 59.5 C 55.5 62.5 55.5 62.5 52.5 62.5 L 32.5 62.5 26.5 68.5 20.5 62.5 3.5 62.5 C 0.5 62.5 0.5 62.5 0.5 59.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
														stroke="#000000" stroke-opacity="0.09999999999999999"
														stroke-width="3" transform="translate(1, 1)"></path>
													<path fill="none"
														class="highcharts-label-box highcharts-tooltip-box highcharts-shadow"
														d="M 3.5 0.5 L 52.5 0.5 C 55.5 0.5 55.5 0.5 55.5 3.5 L 55.5 59.5 C 55.5 62.5 55.5 62.5 52.5 62.5 L 32.5 62.5 26.5 68.5 20.5 62.5 3.5 62.5 C 0.5 62.5 0.5 62.5 0.5 59.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
														stroke="#000000" stroke-opacity="0.15" stroke-width="1"
														transform="translate(1, 1)"></path>
													<path fill="rgba(255,255,255,0.90)"
														class="highcharts-label-box highcharts-tooltip-box"
														d="M 3.5 0.5 L 52.5 0.5 C 55.5 0.5 55.5 0.5 55.5 3.5 L 55.5 59.5 C 55.5 62.5 55.5 62.5 52.5 62.5 L 32.5 62.5 26.5 68.5 20.5 62.5 3.5 62.5 C 0.5 62.5 0.5 62.5 0.5 59.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
														stroke="#91959d" stroke-width="1"></path></g></svg>
												<div
													class="highcharts-label highcharts-tooltip highcharts-color-undefined"
													style="position: absolute; left: 487px; top: -9999px; opacity: 0; pointer-events: none; visibility: visible;">
													<span data-z-index="1"
														style="position: absolute; font-family: &amp; quot; Lucida Grande&amp;quot; , &amp; quot; Lucida Sans Unicode&amp;quot; , Arial , Helvetica, sans-serif; font-size: 12px; white-space: nowrap; color: rgb(51, 51, 51); cursor: default; margin-left: 0px; margin-top: 0px; left: 8px; top: 8px;"><span
														style="font-size: 12px; color: #52555c"><b>11.05.</b></span><br>
													<span style="font-size: 18px; color: #40c65a"><b>0</b></span><span
														style="font-size: 12px; color: #848992"> 건</span></span>
												</div>
											</div>
										</div>
										<!---->
										<!---->
										<!---->
										<!---->
									</div>
								</div>
								<!---->
							</div>
						</div>
						<!----></ui-view>
						<!---->
						<ui-view name="inquery">
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="panel panel-dashboard panel-inquiry">
								<div class="panel-heading">
									<div class="pull-left">
										<h3 class="panel-title">미답변 문의</h3>
									</div>
									<div class="pull-right">
										<a href="" role="button" class="btn-refresh font-icon-button"
											ng-click="vm.getInquiries(true)" data-nclicks-code="qna.ref"><i
											class="fn fn-refresh" aria-hidden="true"></i> <span
											class="sr-only">새로고침</span></a>
									</div>
								</div>
								<div class="panel-body">
									<ul class="panel-tap" role="tablist">
										<li role="tab"
											ng-attr-aria-selected="{{vm.tab === 'prod' &amp;&amp; 'true' || 'false'}}"
											aria-selected="true"><a href=""
											ng-click="vm.changeTab('prod', false)"
											class="product hidden-xs" data-nclicks-code="qna.prd"><p
													class="text-number">0</p>
												<span>상품문의</span></a> <a href=""
											ng-click="vm.changeTab('prod', true)"
											class="product visible-xs" data-nclicks-code="qna.prd"><p
													class="text-number">0</p>
												<span>상품문의</span></a></li>
										<li role="tab"
											ng-attr-aria-selected="{{vm.tab === 'cust' &amp;&amp; 'true' || 'false'}}"
											aria-selected="false"><a href=""
											ng-click="vm.changeTab('cust', false)"
											class="customer hidden-xs" data-nclicks-code="qna.buyer"><p
													class="text-number">0</p>
												<span>고객문의</span></a> <a href=""
											ng-click="vm.changeTab('cust', true)"
											class="customer visible-xs" data-nclicks-code="qna.buyer"><p
													class="text-number">0</p>
												<span>고객문의</span></a></li>
										
									</ul>
									<!---->
									<div class="inquiry-content hidden-xs"
										ng-if="vm.tab === 'prod'" style="">
										<ul class="panel-list has-question">
											<!---->
										</ul>
										<!---->
										<div class="result-info" ng-if="::!vm.productInquiries">
											<i
												class="fn-shopping fn-65 fn-shopping-caution1 icon-color-big"
												aria-hidden="true"></i>
											<p class="text-sub title">등록된 상품문의가 없습니다.</p>
										</div>
										<!---->
									</div>
									<!---->
									<!---->
									<div class="btn-inquiry-area hidden-xs"
										ng-if="vm.tab === 'prod'" style="">
										<a ui-sref="main.contents.comment"
											class="btn btn-default btn-block"
											data-nclicks-code="qna.prdmove" href="#/comment/">문의 관리<i
											class="fn-shopping fn-shopping-forward2 fn-auto-size text-muted"
											aria-hidden="true"></i></a>
									</div>
									<!---->
									<!---->
									<!---->
									<!---->
									<!---->
									<!---->
								</div>
								<!---->
							</div>
						</div>
						</ui-view>
						<!---->
						<ui-view name="notice">
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="panel panel-dashboard panel-notice">
								<!---->
								<div class="panel-heading">
									<div class="pull-left">
										<h3 class="panel-title">
											<a ui-sref="main.centernotice.list"
												data-nclicks-code="notice.move" href="#/center-notice/list/">공지사항
												<i class="fn-shopping fn-shopping-forward2 text-muted"
												aria-hidden="true"></i>
											</a>
										</h3>
									</div>
									<div class="pull-right">
										<a href="" role="button" class="btn-refresh font-icon-button"
											ng-click="vm.getNotices()" data-nclicks-code="notice.ref"><i
											class="fn fn-refresh" aria-hidden="true"></i> <span
											class="sr-only">새로고침</span></a>
									</div>
								</div>
								<div class="panel-body">
									<!---->
									<ul class="panel-list" ng-if="::vm.notices" style="">
										<!---->
										<li ng-repeat="notice in ::vm.notices track by notice.id">
											<!---->
											<!---->
											<a role="button"
											ui-sref="main.centernotice.detail({noticeId: notice.id})"
											ng-if="::notice.exposeMethodType !== 'LINK'"
											data-nclicks-code="notice.cont"
											ng-class="{'dimmed-area': notice.readMarkYn}"
											href="#/center-notice/detail/100005457"><div class="flex">
													<div class="flex title align-items-center">
														<p class="text-overflow mg-top-reset">
															<!---->
															<span ng-if="::notice.exposeOnTop"><span
																class="label label-danger label-outline">중요</span> [시스템]
															</span>
															<!---->
															<!---->
															&nbsp;11월 14일 정산 대금 및 충전금 출금 계좌이체 지연 예정 안내
														</p>
														<!---->
														<span ng-if="::notice.newYn"
															class="label label-new label-new-xs mg-left-sm mg-right-reset"
															aria-label="new">N</span>
														<!---->
													</div>
													<div class="flex date text-number"
														ng-bind="::notice.regDate | NcpMomentFormat: 'MM.DD.'">11.13.</div>
												</div></a>
										<!---->
										</li>
										<!---->
										<li ng-repeat="notice in ::vm.notices track by notice.id">
											<!---->
											<!---->
											<a role="button"
											ui-sref="main.centernotice.detail({noticeId: notice.id})"
											ng-if="::notice.exposeMethodType !== 'LINK'"
											data-nclicks-code="notice.cont"
											ng-class="{'dimmed-area': notice.readMarkYn}"
											href="#/center-notice/detail/100005445"><div class="flex">
													<div class="flex title align-items-center">
														<p class="text-overflow mg-top-reset">
															<!---->
															<span ng-if="::notice.exposeOnTop"><span
																class="label label-danger label-outline">중요</span> [일반]
															</span>
															<!---->
															<!---->
															&nbsp;네이버 파트너스퀘어 종로 – 메이커스 스페이스의 공간 이용 패널을 모집합니다.
														</p>
														<!---->
														<span ng-if="::notice.newYn"
															class="label label-new label-new-xs mg-left-sm mg-right-reset"
															aria-label="new">N</span>
														<!---->
													</div>
													<div class="flex date text-number"
														ng-bind="::notice.regDate | NcpMomentFormat: 'MM.DD.'">11.12.</div>
												</div></a>
										<!---->
										</li>
													
									</ul>
									<!---->
								</div>
								<!---->
							</div>
						</div>
						</ui-view>
						<!---->

					</div>
				</div>
			</div>
		</div>
		</ui-view>
	</div>
	</div>
	</div>
</body>
</html>