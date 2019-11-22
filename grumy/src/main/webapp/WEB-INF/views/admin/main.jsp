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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>


<script type="text/javascript">
function read(no){
	var url = "read";
	url += "?no="+no;
	
	location.href="../notice/"+url;
}

$(function () {
	  $('#myTab a:first').tab('show')
})
</script>
</head>
<body style="background-color:#EFF8FB">
	<div id="container">
			<div id="contents">
			
		<h3>관리자 페이지 입니다</h3>
		<div id="seller-content" class="seller-sub-frame">
		<!---->

		<ui-view>	
			<!---->
			<ui-view name="important-notice"><!---->
			<div>
				<!---->
				<!---->
				<div class="panel panel-dashboard panel-deposit">
						<!---->
					<div class="panel-body"
						ng-if="vm.paymentInfo &amp;&amp; vm.paymentInfo.$resolved"
						style="border:1px solid">
						<a href="javascript:read(${noticetr.no })" style="color: #555555;">
							<div>
								<span class="label label-danger label-outline">공지</span>
								<span style="font-size:20px;">${noticetr.subject }</span>&nbsp&nbsp 
								<span>${noticetr.wdate }</span>
							</div>
						</a>
					</div>
				</div>
				<!---->
			
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
									style="border:1px solid">
									
									<ul class="panel-list" >
										<li ><span class="info-title">입금대기</span> <span
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
									ng-if="vm.delivery &amp;&amp; vm.delivery.$resolved" style="border:1px solid">
									
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
												<!---->`
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
									ng-if="vm.claim &amp;&amp; vm.claim.$resolved" style="border:1px solid">
									
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
									style="border:1px solid">
									
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
						<div class="col-lg-6 col-md-12 col-sm-12" ng-if="!vm.isMobile" >
							<div class="panel panel-dashboard panel-stats" style="border:1px solid">
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
											
											<div class="container" style="width:500px; height:600px">
												<canvas id="line-chart" width="20" height="10"></canvas>
												</div>
					<!-- =============================== -->
											
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
							<div class="panel panel-dashboard panel-inquiry" style="border:1px solid">
								<div class="panel-heading">
									<div class="pull-left">
										<h3 class="panel-title">미답변 문의</h3>
									</div>
									
								</div>
								<div class="panel-body">
									
									<ul class="nav nav-tabs" role="tablist" id="myTab">
									  <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Home</a></li>
									  <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Profile</a></li>
									</ul>
									
									<div class="tab-content">
									  <div role="tabpanel" class="tab-pane active" id="home">123</div>
									  <div role="tabpanel" class="tab-pane" id="profile">456</div>
									</div>
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
							<div class="panel panel-dashboard panel-notice" style="border:1px solid">
								<!---->
								<div class="panel-heading">
									<div class="pull-left">
										<h3 class="panel-title">
											<a ui-sref="main.centernotice.list"
												data-nclicks-code="notice.move" href="${root }/notice/list"><b>공지사항</b>
												<i class="fn-shopping fn-shopping-forward2 text-muted"
												aria-hidden="true"></i>
											</a>
										</h3>
									</div>
								</div>
								<div class="panel-body">
									<!---->

					<!-- ================================================== -->
						<ul class="panel-list">
						<c:choose>
							<c:when test="${empty noticel }">
								
									<li>등록된 글이 없습니다.</li>

							</c:when>
							<c:otherwise>
								<c:forEach var="dto" items="${noticel}">
									<a href="javascript:read(${dto.no })" style="color: #555555;">
									<li>
										<span>${dto.subject }</span>
									</li>
									
									<li style="text-align:right">
									<span>${dto.wdate }</span>
									</li>
									</a>
									
								</c:forEach>
								<br>
								<a href="${root }/notice/list" style="text-align:right"><li>더보기</li></a>
							</c:otherwise>
						</c:choose>
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
	
	<script>
new Chart(document.getElementById("line-chart"), {
  type: 'line',
  data: {
    labels: ['a','b','c','d','e','f','g','h','i','j'],
    datasets: [{ 
        data: [1,2,3,4,5,6,7,10,15,30],
        label: "Africa",
        borderColor: "#3e95cd",
        fill: false
      }
    ]
  },
  options: {
    title: {
      display: true,
      text: 'World population per region (in millions)'
    }
  }
});

</script>
</body>
</html>