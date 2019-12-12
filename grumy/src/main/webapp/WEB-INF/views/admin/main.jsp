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
<link rel="stylesheet" type="text/css"
	href="https://www.slowand.com/ind-script/optimizer.php?filename=tZXPbsMgDMbv6a57DivtpD0Pf9yEjmCGjdq8_SjtYVUvWwoXJAz-Jf4sf8BMC8K4TxATTUktkJApJ4NgmOGYKAgYWhYKbyXwDn-5j2Zg8lkchUHTZWNiFtn6Ua9WTNtSRWmPv1LR7DJjYlAh4H78PEDM2juzm2XxwBZ3FtlNAfjLhQ9YVZhOrrJnVPbhL_6JujIWstkjlHoolz4owYnSup2pYmSIMwmxdxb3NXxfmxStrxmpCepIJK-gaq0usKhr38_OTij1aLytXVQ8bKfem6wVO1MFeBq7V4G3QENgGZyywSG7DlAh8uJiB_KMvge2OIzNpoe-UU0ulOHvobLSHahP5t0M_PCcNBTB9xC33DKNvDBIE9DpO2N5QPSlOld11x8&type=css&k=dda47177a62c2ed097a4e997d8e506b783c567e7&t=1566806466" />
<link rel="stylesheet" type="text/css"
	href="https://www.slowand.com/ind-script/optimizer.php?filename=rc49DsIwDAXgvWXlHBY_EjszEz1B6litaWpHcYLU25MiTkC7-cl6nw2jzgSEbTFKBk6EzqfbBWLpA2M75jmAeWo9GQ8CNrFcYXEyvBjQDB4u66EOR9gIdU7sf2gVZvUlEAS3aMmgyVO6O5sooxbJe9ox1Yj5SUhb4J_WO2P8XiFsaqCmLijt-fBcQmYbNXYjx8gy7Imjyrv2WSXi6n4A&type=css&k=9cab3c762c992913864605f00b0a184752d883c5&t=1543392667" />
<link rel="icon" href="data:;base64,iVBORw0KGgo=">

<script type="text/javascript">
function readn(no){
	var url = "read";
	url += "?no="+no;
	
	location.href="../notice/"+url;
}
function readd(board_no){
	var url = "read";
	url += "?board_no="+board_no;
	
	location.href="../delivery/"+url;
}
function readd2(board_no){
	var url = "read";
	url += "?board_no="+board_no;
	
	location.href="../community/"+url;
}

$(function () {
	  $('#myTab a:first').tab('show')
})

</script>
<script>
	
	
$(document).ready(function(){
	var gchange = "";
	var a = ${wait};
	var glabels = ['19/12/01','19/12/02','c','d','e','f','g','h','i','j'];
	var gdata = [a,2,3,4,5,6,7,10,15,30];
	var pos = "결제건수";
	$(".payb").on('click',function(){
		gchange = $(this).val();

		$.get('main', function(){
			if(gchange == "payb1"){
				pos="결제건수";
				glabels = ['a1','b','c','d','e','f','g','h','i','j'];
				gdata = [a,20,3,4,5,15,7,10,15,30];
				chart1();
			}else if(gchange == "payb2"){
				pos="결제자수";
				glabels = ['a2','b','c','d','e','f','g','h','i','j'];
				gdata = [a,2,3,24,5,6,7,10,15,30];
				chart1();
			}else if(gchange == "payb3"){
				pos="결제금액";
				glabels = ['a3','b','c','d','e','f','g','h','i','j'];
				gdata = [a,2,35,4,5,6,7,20,15,30];
				chart1();
			}
			
		});
	});
	function chart1(){
	new Chart(document.getElementById("line-chart"), {
	  type: 'line',
	  data: {
	    labels: glabels,
	    datasets: [{ 
	        data: gdata,
	        label: pos,
	        borderColor: "#3e95cd",
	        fill: false
	      }
	    ]
	  },
	  options: {
	    title: {
	      display: false,
	      text: ""
	    }
	  }
	});
	}
	chart1();
});
</script>
</head>
<body style="background-color:#EFF8FB">
	<div id="container">
			<div id="contents">
			
		<h3>관리자 페이지 입니다</h3><br>
		<div id="seller-content" class="seller-sub-frame">
		<!---->
		<ui-view>	
			<!---->
			<ui-view name="important-notice"><!---->
			<div>
				<!---->
				<div class="panel panel-dashboard panel-deposit">
						<!---->
					<div class="panel-body"
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
			
			<!----></ui-view>
			<div class="seller-sub-content">
				<div style="position: relative">
					<!---->
					<div class="row">
						<!---->
						<ui-view name="naverpay-salesinfo">
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="panel panel-dashboard panel-deposit">
								<!---->
								<div class="panel-body"
									style="border:1px solid">
									
									<ul class="panel-list" >
										<li ><span class="info-title">입금대기</span> <span
											class="number-area aa">
												<a class="text-number"
												href="${root }/admin/mwait/list">${wait}</a>
											
												<span>건</span>
										</span>
										&nbsp;&nbsp;&nbsp;
										<span><a class="text-number"
												href="${root }/admin/read">read테스트</span>
										</li>
										<li><span class="info-title">신규주문</span> <span
											class="number-area">
												<!---->
												<a class="text-number"
												href="${root }/admin/newOrder/list">${newOrder}</a>
											<!---->
												<span>건</span>
										</span></li>
										<span>&nbsp</span>
									</ul>
								</div>
								<!---->
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="panel panel-dashboard panel-delivery">
								<!---->
								<div class="panel-body" style="border:1px solid">
									
									<ul class="panel-list">
										<li><span class="info-title">배송준비</span> <span
											class="number-area">
												<!---->
												<a class="text-number"
												href="${root }/admin/sendReady">${sReady}</a>
											<!----> 
												<span>건</span>
										</span></li>
										<li ><span class="info-title">배송중</span> <span
											class="number-area" >
												<!---->
												<a class="text-number" 
												href="${root }/admin/sending">${sIng}</a>
											<!---->
												<span>건</span>
										</span></li>
										<li><span class="info-title">배송완료</span> <span
											class="number-area">
												<!---->
												<a class="text-number" 
												href="${root }/admin/sendFin">${sFin}</a>
											<!---->
												<span>건</span>
										</span></li>
									</ul>
								</div>
								<!---->
							</div>
						</div>
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="panel panel-dashboard panel-return">
								<!---->
								<div class="panel-body" style="border:1px solid">
									
									<ul class="panel-list">
										<li><span class="info-title">취소요청</span> <span
											class="number-area">
												<!---->
												<a class="text-number" 
												href="#/naverpay/claim/cancel?summaryInfoType=CANCEL_REQUEST">0</a>
											<!----> 
												<span>건</span>
										</span></li>
										<li><span class="info-title">반품요청</span> <span
											class="number-area">
												<!---->
												<a class="text-number" 
												href="#/naverpay/claim/return?summaryInfoType=RETURN_REQUEST">0</a>
											<!----> 
												<span>건</span>
										</span></li>
										<li><span class="info-title">교환요청</span> <span
											class="number-area">
												<!---->
												<a class="text-number" 
												href="#/naverpay/claim/exchange?summaryInfoType=EXCHANGE_REQUEST">0</a>
											<!----> 
												<span>건</span>
										</span></li>
									</ul>
								</div>
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
									style="border:1px solid">
									
									<ul class="panel-list">
										<li><span class="info-title">오늘정산</span> <span
											class="number-area">
												<!---->
												<a class="text-number"
												href="#/naverpay/settlemgt/sellerdailysettle?searchType=settleToday">0</a>
											<!----> <!---->
												<span>원</span>
										</span></li>
										<li><span class="info-title">정산예정</span> <span
											class="number-area">
												<!---->
												<a class="text-number" 
												href="#/naverpay/settlemgt/sellerdailysettle?searchType=settleExpect">0</a>
											<!----> 
												<span>원</span>
										</span></li>
										<span>&nbsp</span>
									</ul>
								</div>
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
										<h3 class="panel-title"><b>스토어 매출 통계</b></h3>
									</div>
									
								</div>
								<form id="frm">
								<div class="panel-body">
									<div class="text-center">
										<div data-toggle="buttons"
											class="btn-group btn-group-customize">
											<button type="button" class="btn btn-default payb" value="payb1">결제건수</button>
											<button type="button" class="btn btn-default payb" value="payb2">결제자수</button>
											<button type="button" class="btn btn-default payb" value="payb3">결제금액</button>
											
										</div>
									</div>
									<br>
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

									</div>
								</div>
								</form>
								<!---->
							</div>
						</div>
						<!----></ui-view>
						<ui-view name="inquery">
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="panel panel-dashboard panel-inquiry" style="border:1px solid; height:380px;">
								<div class="panel-heading">
									<div class="pull-left">
										<h2 class="panel-title"><b>답변 문의</b></h2>
									</div>
									
								</div>
								<br>
								<div class="panel-body">
									
									<ul class="nav nav-tabs" role="tablist" id="myTab">
									  <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">배송문의</a></li>
									  <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">상품문의</a></li>
									  <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">review</a></li>
									</ul>
									
									<div class="tab-content">
									  <div role="tabpanel" class="tab-pane active" id="home">
									  <ul class="panel-list">
									  	<br>
											<c:choose>
												<c:when test="${empty deliveryl }">
													
														<li>등록된 답변이 없습니다.</li>
					
												</c:when>
												<c:otherwise>
													<c:forEach var="dto" items="${deliveryl}">
														<a href="javascript:readd(${dto.board_no })" style="color: #555555;">
														<li>
															<span>${dto.subject }</span>
														</li>
														
														<li style="text-align:right">
														<span>${dto.wdate }</span>
														</li>
														</a>
														
													</c:forEach>
													<br>
													<a href="${root }/delivery/list" style="text-align:right"><li>더보기</li></a>
												</c:otherwise>
											</c:choose>
										</ul>
									  
									  </div>
									  <div role="tabpanel" class="tab-pane" id="profile" style="height:270px;">
									  <ul class="panel-list">
									  	<br>
											<c:choose>
												<c:when test="${empty communityl }">
													
														<li>등록된 답변이 없습니다.</li>
					
												</c:when>
												<c:otherwise>
													<c:forEach var="dto" items="${communityl}">
														<a href="javascript:readd2(${dto.board_no })" style="color: #555555;">
														<li>
															<span>문의 합니다</span>
														</li>
														
														<li style="text-align:right">
														<span>${dto.wdate }</span>
														</li>
														</a>
														
													</c:forEach>
													<br>
													<a href="${root }/community/list" style="text-align:right"><li>더보기</li></a>
												</c:otherwise>
											</c:choose>
										</ul>
									  
									  </div>
									</div>
									<!---->
									<div class="inquiry-content hidden-xs"
										ng-if="vm.tab === 'prod'" style="">
										<ul class="panel-list has-question">
											<!---->
										</ul>
										<!---->					
									</div>
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
											<a href="${root }/notice/list"><b>공지사항</b>
												<i class="fn-shopping fn-shopping-forward2 text-muted"
												aria-hidden="true"></i>
											</a>
										</h3>
									</div>
								</div>
								<div class="panel-body" style="height:355px;">
								<br>
					<!-- ================================================== -->
						<ul class="panel-list">
						<c:choose>
							<c:when test="${empty noticel }">					
									<li>등록된 글이 없습니다.</li>
							</c:when>
							<c:otherwise>
								<c:forEach var="dto" items="${noticel}">
									<a href="javascript:readn(${dto.no })" style="color: #555555;">
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

					<!-- ====================================================== -->
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