<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!--PG크로스브라우징필수내용 시작-->
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<!--PG크로스브라우징필수내용 끝-->
<!--해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!--해당 CSS는 쇼핑몰 전체 슬라이드 배너에 영향을 줍니다. 삭제와 수정에 주의해주세요.-->
<!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. -->
<script type="text/javascript" src="/ec-js/common.js"></script>
<!-- 해당 JS는 플래시를 사용하기 위한 스크립트입니다. -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="/yangji/js/jquery.bxslider.min.js"></script>
<link rel="stylesheet"
href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />
<link rel="shortcut icon"
	href="/web/upload/favicon_20170717165926.ico" />
<script type="text/javascript"
	src="/app/Eclog/js/cid.generate.js?vs=3d0b473968a0ec4ec41e3bf59df3aa51"></script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<link rel="stylesheet" type="text/css" 
href="/ind-script/optimizer.php?filename=tZWxcsMgDIZ3J2ufQ5e0d907d2qeALBqKwGJIriL3740ydA0S882Izr0gX6hHxglIOz2CWKSIZkACVVKcghOFT6TcAYnIQhva-AJ_rMfXafiSybhzsp5ZmLJee6h3kyY5qVmYz3-SkW3KYpJwTDjfvf6DLFYT24z5uBBe9z0qDQw6In45QIN0hePEDBYTHAU4vm8WomUDNYouQv8oRdLgdfAisCqZl1gV6gBNIv4TLEBeUTfAlufXV9cC32jGYhNxhYqG9uA-jDRq4HvPGZFEXwLcesuNx87GR6OdDWv6l2rgI5fBdO0tWf11N8Z53zmu8myCuhgWFfx41tDJNUS34yeMDspSxR8ZN-G_QMdcouR__uvLb5wKNVNdZR4GClG4uEH_g0&type=css&k=c8951a22d67e6928bfd2473018d48b09764ee7ce&t=1547093551" />
<link rel="stylesheet" type="text/css"
href="/ind-script/optimizer.php?filename=rY9BDsIwDAQfUK68wyog8R43cVOXxI7iBNTfU4r4AO1lL6sdzcKkiYBc14yKAYrQpb9fIbchsuummiKYp86TcRCwB8sNnBkk9S0SRFy0VXAqz3XPKtmd1voMO7mJ0kAFZmXpVvjIJf3PXVDCzBt-IvRUDlH8XcdKQctyiN6oWvfoYc4GLFYxFEwv9oHqVvXf_JDf&type=css&k=1e2335c9cbed207b4adaf5b11233170ae273ee5d&t=1566806466" />



<title>grumy</title>
		
</head>

<body id="cmn">

<input type="hidden" name="id" id="id" value="${dto.id }"/>
<input type="hidden" name="name" id="name" value="${dto.name }"/>
<input type="hidden" name="grade" id="grade" value="${dto.grade }"/>
<input type="hidden" name="email" id="email" value="${dto.email }"/>


<div id="container">
	
<div id="contents"> 

<div class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002 ">

<div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">

<div class="title" style="text-align: center;">

<h2> <font color="#555555">MEMBER LIST</font> </h2>
<br> <br>
					
</div>
				

</div>
			
<div class="listSort">

<span class="xans-element- xans-board xans-board-replysort-1002 xans-board-replysort xans-board-1002 "></span>

</div>

<div class="ec-base-table typeList gBorder">

<table border="1" summary="">

<caption>회원 목록</caption>

<thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">

	<tr>
	<th>NO</th>
	<th class="displaynone">GRADE</th>
	<th>ID</th>
	<th>NAME</th>
	</tr>

</thead>
					
<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
					
	<tr style="background-color: #FAFAFA; color: #555555;">
	<td></td>
	<td class="displaynone">${dto.grade}</td>
	<td>
	<strong> 
	<a href="" style="color: #555555;">
	${dto.id }
	</a> 
	<span></span>
	</strong>
	</td>
	<td>${dto.name }</td>
	</tr>
<!--  
	
	<c:choose>
	
	<c:when test="${empty list }">
	<tr>
	<td></td>
	<td>가입된 회원이 없습니다.</td>
	<td></td>

	</c:when>
	
	<c:otherwise>
	<c:forEach var="dto" items="${list}" varStatus="status">
	<tr style="background-color: #FFFFFF; color: #555555;" class="xans-record-">
	<td>${total-status.index-((nowPage-1)*10)}</td>
	<td class="displaynone"></td>
	<td class="subject left txtBreak"><strong> 
	<a href="" style="color: #555555;">
	${dto.subject }
	</a> 
	<span class="txtEm"></span>
	</strong>
	</td>
	<td>${dto.writer }</td>
	<td class=""><span class="txtNum">${dto.wdate }</span></td>
	</tr>
	</c:forEach>
	</c:otherwise>
</c:choose>

-->

</tbody>

</table>

<p class="xans-element- xans-board xans-board-empty-1002 xans-board-empty xans-board-1002 message displaynone "></p>

</div>
			
<form action="list">

<div class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 ">

<fieldset class="MemberSearch">

<p>
<select id="col" name="col" fw-filter="" fw-label="" fw-msg="">
<option value="id"
<c:if test="${col == 'id' }">selected</c:if>>아이디</option>
<option value="name"
<c:if test="${col == 'name' }">selected</c:if>>이름</option>
<option value="email"
<c:if test="${col == 'email' }">selected</c:if>>이메일</option>
</select> 
<input id="word" name="word" type="text">
<button class="yg_btn_28 yg_btn3">SEARCH</button>
</p>

</fieldset>

</div>

</form>

${paging}

</div>

</div>

</div>
</body>
</html>