<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="util" uri="/ELFunctions" %>
<c:set var="size" value="${fn:length(list) }"></c:set>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript">
	function read(no) {
		var url = "read";
		url += "?no=" + no;

		location.href = url;
	}
	function read_reply(no) {
		var url = "read_reply";
		url += "?no=" + no;

		location.href = url;
	}
</script>
<div id="container">
	<div id="contents">

		<div
			class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002 ">
			<div
				class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
				<div class="title" style="text-align: center">
					<h2>
						<font color="#555555">배송 문의</font>
					</h2>
					<br> <br>

				</div>
				<p class="imgArea"></p>
			</div>
			<div class="boardSort">
				<span
					class="xans-element- xans-board xans-board-replysort-1002 xans-board-replysort xans-board-1002 "></span>
			</div>
			<div class="ec-base-table typeList gBorder">
				<table border="1" summary="">
					<caption>게시판 목록</caption>
					<colgroup
						class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
						<col style="width: 70px;">
						<col style="width: 135px;" class="displaynone">
						<col style="width: auto;">
						<col style="width: 134px;">
						<col style="width: 84px;" class="">
						<col style="width: 60px;" class="displaynone">
						<col style="width: 77px;" class="displaynone">
						<col style="width: 80px;" class="displaynone">
					</colgroup>
					<thead
						class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
						<tr style="">
							<th scope="col">NO</th>
							<th scope="col">SUBJECT</th>
							<th scope="col">WRITER</th>
							<th scope="col" class="">DATE</th>
						</tr>
					</thead>
					<tbody
						class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
						<!--
                    $count = 
                    $login_page_url = /member/login.html
                    $deny_access_url = /index.html
                -->
						<c:choose>
							<c:when test="${empty list }">
								<tr>
									<td></td>
									<td>등록된 글이 없습니다.</td>
									<td></td>
									<td></td>
							</c:when>
							<c:otherwise>
								<c:forEach var="dto" items="${list}" varStatus="status">
									<tr style="background-color: #FFFFFF; color: #555555;"
										class="xans-record-">
										<td>${total-status.index}</td>
										<td class="displaynone"></td>
										<td class="subject left txtBreak"><strong>
										<c:choose>
											<c:when test="${dto.indent==0 }">
											<a href="javascript:read(${dto.no })" style="color: #555555;">
												<img src="${pageContext.request.contextPath }/images/secret.png" />${dto.subject }</a>
												<c:if test="${util:newImg(dto.wdate) }">
													<img alt="" src="${pageContext.request.contextPath }/images/new.gif">
													</c:if>
											</c:when>
											<c:otherwise>
											<a href="javascript:read_reply(${dto.no })" style="color: #555555;">
														&nbsp;<img
															src="${pageContext.request.contextPath }/images/re.gif" />
													<img
													src="${pageContext.request.contextPath }/images/secret.png" />${dto.subject }</a>
													<c:if test="${util:newImg(dto.wdate) }">
													<img alt="" src="${pageContext.request.contextPath }/images/new.gif">
													</c:if>
											</c:otherwise>
										
										</c:choose>
												<span class="txtEm"></span></strong></td>
										<td>${dto.writer }</td>
										<td class=""><span class="txtNum">${dto.wdate }</span></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>



					</tbody>
				</table>
				<p
					class="xans-element- xans-board xans-board-empty-1002 xans-board-empty xans-board-1002 message displaynone "></p>
			</div>
			<form action="list">
				<div
					class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 ">
					<fieldset class="boardSearch">
						<p>
							<select id="col" name="col" fw-filter="" fw-label="" fw-msg="">
								<option value="subject"
									<c:if test="${col == 'subject' }">selected</c:if>>제목</option>
								<option value="content"
									<c:if test="${col == 'content' }">selected</c:if>>내용</option>
								<option value="writer"
									<c:if test="${col == 'writer' }">selected</c:if>>글쓴이</option>
							</select> <input id="word" name="word" type="text">
							<button class="yg_btn_28 yg_btn3">SEARCH</button>
						</p>
					</fieldset>
				</div>
			</form>
			<c:if test="${not empty sessionScope.id }">
			<p align="right">
				<button class="yg_btn_30 yg_btn4" onclick="location.href='create'">WRITE</button>
			</p>
			</c:if>

			${paging}




		</div>


	</div>
	<hr class="layout">
</div>