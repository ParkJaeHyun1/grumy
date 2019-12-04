<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript">
	function read(communityNo) {
		var url = "read";
		url += "?communityNo=" + communityNo;

		location.href = url;
	}
	function create_reply(communityNo) {
		var url = "create_reply";
		url += "?communityNo=" + communityNo;

		location.href = url;
	}
	function update(communityNo) {
		var url = "update";
		url += "?communityNo=" + communityNo;

		location.href = url;
	}
	function delete1(communityNo) {

		if (confirm("정말 삭제하시겠습니까??") == true) { //확인

			var url = "delete";
			url += "?no=" + no;

			location.href = url;

		} else { //취소

			return false;

		}

	}
</script>

<div id="container">
	<div id="contents">

		<div
			class="xans-element- xans-board xans-board-readpackage-1002 xans-board-readpackage xans-board-1002 ">
			<div
				class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
				<div class="title" style="text-align: center">
					<h2>
						<font color="#555555">상품 문의</font>
					</h2>

					<!--h3>공지사항입니다.</h3-->
				</div>
			</div>
			<br> <br>
			<!-- 글 내용-->
			<div class="ec-base-table typeWrite ">
				<table border="1" summary="">
					<colgroup>
						<col style="width: 150px;">
						<col style="width: auto;">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">SUBJECT</th>
							<td>${dto.subject}</td>
						</tr>
						<tr>
							<th scope="row">WRITER</th>
							<td>${dto.id }</td>
						</tr>
						<tr>
							<td colspan="2">
								<ul class="etcArea">
									<li class="displaynone">
									<li class="" style="text-align: right"><span>DATE</span> <span
										class="txtNum">${dto.wdate }</span></li>

								</ul>
								<div class="detail">${dto.content }</div>
								<c:if test="${not empty dto.picture }">
								<img width="200px"
								height="150px" class="img-thumbnail"
								src="${pageContext.request.contextPath}/storage/${dto.picture}">
								</c:if>
								 
							</td>
						</tr>
						<tr>
							<td colspan="2"><div class="ec-base-button ">
									<span class="gLeft">
									 <a href="list"	class="yg_btn_30 yg_btn4" alt="목록">LIST</a>
									</span>
									<c:if test="${sessionScope.id=='admin'&&sessionScope.grade=='A' }">
									 <span class="gRight">	 
									 <a href="javascript:update(${param.communityNo })" class="yg_btn_30 yg_btn4" alt="수정">MODIFY</a>
									 <a href="javascript:delete1(${param.communityNo })" class="yg_btn_30 yg_btn4" alt="삭제">DELETE</a>
									</span>
									</c:if>
								</div></td>
							
						</tr>
					</tbody>
				</table>

			</div>

		</div>
	</div>


</div>

