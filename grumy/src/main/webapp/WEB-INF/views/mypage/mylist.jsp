<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="util" uri="/ELFunctions"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript">
	function readc(no) {
		var url = "${pageContext.request.contextPath}/community/read";
		url += "?board_no=" + no;

		location.href = url;
	}

	function readd(no) {
		var url = "${pageContext.request.contextPath}/delivery/read";
		url += "?board_no=" + no;

		location.href = url;
	}

	function read_replyd(no) {
		var url = "${pageContext.request.contextPath}/delivery/read_reply";
		url += "?board_no=" + no;

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
						<font color="#555555">BOARD LIST</font>
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
					<thead
						class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">
						<tr style="">
							<th style="width: 70px;">NO</th>
							<th style="width:150px;">CATEGORY</th>
							<th style="width: auto;">SUBJECT</th>
							<th style="width: 134px;">WRITER</th>
							<th style="width: 84px;">DATE</th>
						</tr>
					</thead>
					<tbody
						class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
						<c:choose>
							<c:when test="${empty list}">
								<tr>
									<td></td>
									<td></td>
									<td>등록된 글이 없습니다.</td>
									<td></td>
									<td></td>
							</c:when>
							<c:otherwise>
								<c:forEach var="list" items="${list}" varStatus="status">
									<tr style="background-color: #FFFFFF; color: #555555;"
										class="xans-record-">
										<td>${total-status.index-((nowPage-1)*10)}</td>
										<td>${list.category }</td>
										<td class="subject left txtBreak"><strong> 
										       <c:choose>
													
													<c:when test="${list.indent==0 }">
													
													<c:choose>
														<c:when test="${list.type=='상품' }">
														<a href="javascript:readc(${list.board_no })"
															style="color: #555555;">
														</c:when>
														<c:otherwise>
														<a href="javascript:readd(${list.board_no })"
															style="color: #555555;">
														</c:otherwise>
													</c:choose>
														 <img src="${pageContext.request.contextPath }/images/secret.png" />${list.subject }</a>
													 	<c:if test="${util:newImg(fn:substring(list.wdate,0,10)) }"> 
															<img alt=""
																src="${pageContext.request.contextPath }/images/new.gif">
															
														</c:if>
													</c:when>
													<c:otherwise>
														<c:choose>
														<c:when test="${list.type=='상품' }">
														<a href="javascript:readc(${list.board_no })"
															style="color: #555555;">
														</c:when>
														<c:otherwise>
														<a href="javascript:read_replyd(${list.board_no })"
															style="color: #555555;">
														</c:otherwise>
													</c:choose> &nbsp;<img
															src="${pageContext.request.contextPath }/images/re.gif" />
															<img
															src="${pageContext.request.contextPath }/images/secret.png" />${list.subject }</a>
														<c:if test="${util:newImg(fn:substring(list.wdate,0,10)) }">
															<img alt=""
																src="${pageContext.request.contextPath }/images/new.gif">
														</c:if>
													</c:otherwise>

												</c:choose> <span class="txtEm"></span></strong></td>
										<td><script type="text/javascript">
										var len = ('${list.writer}'.length);
										var name = '${list.writer}'.replace(
												'${list.writer}'.substr(1,
														len), "****");
										if(${list.indent==1}){
											name = '${list.writer}'
										}
											document.write(name);
										</script></td>
										<td class=""><span class="txtNum">${list.wdate }</span></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>



					</tbody>
				</table>
				<p
					class="xans-element- xans-board xans-board-empty-1002 xans-board-empty xans-board-1002 message displaynone "></p>
			</div>
			<form action="mylist">
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


			${paging}




		</div>


	</div>
	<hr class="layout">
</div>