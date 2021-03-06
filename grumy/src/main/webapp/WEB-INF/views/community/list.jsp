<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="util" uri="/ELFunctions"%>
<script type="text/javascript">
	function read(no){
		var url = "read";
		url += "?board_no="+no;
		
		location.href= url;
	}
	function create(){
		if(${sessionScope.id!=null}){
			location.href="create";
		}else{
			if(confirm("로그인을 해야 이용할 수 있습니다. 로그인창으로 이동하시겠습니까?")){
				$('#loginForm').submit();
			}else{
				return false;
			}
		}
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div id="container">
	<div id="contents">
		<form action="${pageContext.request.contextPath}/member/login"
			id="loginForm" class="form-horizontal" method="post"
			enctype="application/x-www-form-urlencoded;charset=UTF-8"
			style="display: none">
			<input type="hidden" name="url" value="/community/list"></input>
		</form>

		<div
			class="xans-element- xans-board xans-board-listpackage-4 xans-board-listpackage xans-board-4 ">
			<div
				class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
				<div class="title" style="text-align: center">
					<h2>
						<font color="333333">상품 문의</font>
					</h2>
				</div>
				<br> <br>

			</div>


			<div class="ec-base-table typeList gBorder crema-hide">
				<table border="1" summary="">
					<thead
						class="xans-element- xans-board xans-board-listheader-4 xans-board-listheader xans-board-4 ">
						<tr>
							<th style="width: 70px;">NO</th>
							<th style="width: 70px;">PRODUCT</th>
							<th style="width: auto;">SUBJECT</th>
							<th style="width: 135px">WRITER</th>
							<th style="width: 84px">DATE</th>
						</tr>
					</thead>
					<tbody
						class="xans-element- xans-board xans-board-notice-4 xans-board-notice xans-board-4 center">
						<c:if test="${nowPage==1 }">
							<c:forEach var="dto" items="${list_ }">
								<tr style="background-color: #FAFAFA">
									<td></td>
									<td></td>
									<td class="subject left txtBreak"><a
										href="javascript:read(${dto.board_no })">${dto.subject } <c:if
												test="${util:newImg(fn:substring(dto.wdate,0,10)) }">
												<img alt=""
													src="${pageContext.request.contextPath }/images/new.gif">
											</c:if></a></td>
									<td>${dto.writer }</td>
									<td><span class="txtNum">${dto.wdate}</span></td>
							</c:forEach>
						</c:if>
						<c:choose>
							<c:when test="${empty list }">
								<tr>
									<td></td>
									<td></td>
									<td>등록된 글이 없습니다.</td>
									<td></td>
									<td></td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="dto" items="${list }" varStatus="status">
									<tr style="background-color: #FFFFFF; color: #555555;"
										class="xans-record-">
										<td>${total-status.index-((nowPage-1)*10) }</td>
										<td><c:if test="${not empty dto.itemPicture }">
												<img
													onclick="location.href='${pageContext.request.contextPath}/item/read?itemNo=${dto.itemno}'"
													style="width: 64px; height: 64px;"
													src="${pageContext.request.contextPath }/images/${dto.itemPicture }" />
											</c:if></td>
										<td class="subject left txtBreak"><c:if
												test="${not empty dto.itemTitle }">
												<span class="txtNum">${dto.itemTitle }</span>
												<br>
											</c:if> <a href="javascript:read(${dto.board_no });"> <c:if
													test="${dto.indent ==1 }">
													<img
														src="${pageContext.request.contextPath }/images/re.gif" />
												</c:if> <img
												src="${pageContext.request.contextPath }/images/secret.png" />${dto.subject }
												<c:if test="${util:newImg(fn:substring(dto.wdate,0,10)) }">
													<img alt=""
														src="${pageContext.request.contextPath }/images/new.gif">
												</c:if></a></td>
										<td><script type="text/javascript">
										var len = ('${dto.writer}'.length);
										var name = '${dto.writer}'.replace(
												'${dto.writer}'.substr(1,
														len), "****");
										if(${dto.indent}==1){
											name = '${dto.writer}'
										}
											document.write(name);
										</script></td>
										<td><span class="txtNum">${dto.wdate}</span></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>


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
			<p align="right">
				<button class="yg_btn_30 yg_btn4" onclick="javascript:create();">WRITE</button>
			</p>
			${paging }

		</div>

	</div>
	<hr class="layout">
</div>