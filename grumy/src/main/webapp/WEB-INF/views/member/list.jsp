<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script>
	function read(id) {
		var url = "${pageContext.request.contextPath}/member/read";
		url += "?id=" + id;

		location.href = url;
	}
</script>


<div id="container">

	<div id="contents">

		<div
			class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002 ">

			<div
				class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">

				<div class="title" style="text-align: center;">

					<h2>
						<font color="#555555">MEMBER LIST</font>
					</h2>
					<br>
					<br>

				</div>

				<p class="imgArea"></p>
			</div>

			<div class="ListSort">
				<span
					class="xans-element- xans-board xans-board-replysort-1002 xans-board-replysort xans-board-1002 "></span>
			</div>

			<div class="ec-base-table typeList gBorder">
				<table border="1" summary="">

					<caption>게시판 목록</caption>

					<colgroup
						class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">

						<col style="width: 70px;">
						<col style="width: 100px;">
						<col style="width: 100px;">
						<col style="width: 100px;" class="">

					</colgroup>

					<thead
						class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 ">

						<tr style="">
							<th scope="col">NO</th>
							<th scope="col">ID</th>
							<th scope="col">NAME</th>
							<th scope="col" class="">GRADE</th>
						</tr>

					</thead>

					<tbody
						class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 center">
						<c:if test="${nowPage==1 }">
							<c:forEach var="dto" items="${list_ }">

								<tr style="background-color: #FAFAFA; color: #555555;"
									class="xans-record-">

									<td></td>
									<td align=center><strong> <a
											href="javascript:read('${dto.id }')" style="color: #555555;">${dto.id }</a>
											<span class="txtEm"></span></strong></td>
									<td>${dto.name }</td>
									<td class=""><span class="txtNum"> <c:choose>
												<c:when test="${dto.grade=='A'}">
		관리자
		</c:when>
												<c:when test="${dto.grade=='H'}">
		일반회원 
		</c:when>
												<c:when test="${dto.grade=='S'}">
		VIP
		</c:when>
											</c:choose>
									</span></td>

								</tr>

							</c:forEach>
						</c:if>

						<c:choose>
							<c:when test="${empty list }">
								<tr>

									<td></td>
									<td align=center>검색 조건에 맞는 회원이 존재 하지 않습니다.</td>
									<td></td>
									<td></td>
							</c:when>

							<c:otherwise>

								<c:forEach var="dto" items="${list}" varStatus="status">

									<tr style="background-color: #FFFFFF; color: #555555;"xans-record-">

										<td>${((status.index)+1)+((nowPage-1)*5)}</td>
										<td align=center><strong> <a
												href="javascript:read('${dto.id }')" style="color: #555555;">
													${dto.id } </a> <span class="txtEm"></span>
										</strong></td>
										<td>${dto.name }</td>
										<td class=""><span class="txtNum"> <c:choose>
													<c:when test="${dto.grade=='A'}">
		관리자
		</c:when>
													<c:when test="${dto.grade=='H'}">
		일반회원 
		</c:when>
													<c:when test="${dto.grade=='S'}">
		VIP
		</c:when>
												</c:choose>
										</span></td>

									</tr>

								</c:forEach>

							</c:otherwise>

						</c:choose>

					</tbody>

				</table>

				<p
					class="xans-element- xans-board xans-board-empty-1002 xans-board-empty xans-board-1002 message displaynone "></p>

			</div>
			<br>
			<br>

			<form action="list">

				<div
					class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 ">

					<fieldset class="MemberSearch">

						<p>

							<select id="col" name="col" fw-filter="" fw-label="" fw-msg="">

								<option value="id" <c:if test="${col == 'id' }">selected</c:if>>
									ID</option>

								<option value="name"
									<c:if test="${col == 'name' }">selected</c:if>>NAME</option>

								<option value="email"
									<c:if test="${col == 'email' }">selected</c:if>>EMAIL
								</option>

							</select> <input id="word" name="word" type="text">

							<button class="yg_btn_28 yg_btn3">SEARCH</button>

						</p>

					</fieldset>

				</div>

			</form>

			${paging}

		</div>

	</div>

</div>