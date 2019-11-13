<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="container">
	<div id="contents">

		<div
			class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002 ">
			<div
				class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
				<div class="title" style="text-align: center;">
					<h2>
						<font color="#555555">NOTICE</font>
					</h2>
					<br>
					<br>
					<!--h3>공지사항입니다.</h3-->
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
							<th scope="col" class="displaynone">CATEGORY</th>
							<th scope="col">SUBJECT</th>
							<th scope="col">WRITER</th>
							<th scope="col" class="">DATE</th>
							<th scope="col" class="displaynone">VIEWED</th>
							<th scope="col" class="displaynone">RECOMMEND</th>
							<th scope="col" class="displaynone">POINT</th>
						</tr>
					</thead>
					<tbody
						class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
						<!--
                    $count = 
                    $login_page_url = /member/login.html
                    $deny_access_url = /index.html
                -->
						<c:set var="dto"></c:set>
						<c:choose>
							<c:when test="${empty list }">
								<tr>
									<td></td>
									<td>등록된 글이 없습니다.</td>
									<td></td>
									<td></td>
							</c:when>
							<c:otherwise>
								<c:forEach var="dto" items="${list}">
									<tr style="background-color: #FFFFFF; color: #555555;"
										class="xans-record-">
										<td>${dto.no}</td>
										<td class="displaynone"></td>
										<td class="subject left txtBreak"><strong> <a
												href="javascript:read(${dto.no })" style="color: #555555;">
													${dto.subject }</a> <span class="txtEm"></span></strong></td>
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
			<form action="${pageContext.request.contextPath}/notice/list">
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

			<div
				class="xans-element- xans-board xans-board-paging-1002 xans-board-paging xans-board-1002 ec-base-paginate">
				${paging}
			
			</div>


		</div>


	</div>
	<hr class="layout">
</div>