<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript">

	function create_reply(no) {
		var url = "create_reply";
		url += "?board_no=" + no;

		location.href = url;
	}
	function update(no) {
		var url = "update";
		url += "?board_no=" + no;

		location.href = url;
	}
	function delete1(ref) {

		if (confirm("정말 삭제하시겠습니까??") == true) { //확인

			var url = "delete";
			url += "?ref="+ref;

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
							<td>${dto.writer }</td>
						</tr>
						<tr>
							<td colspan="2">
								<ul class="etcArea">
									<li class="displaynone">
									<li class="" style="text-align: right"><span>DATE</span> <span
										class="txtNum">${dto.wdate }</span></li>

								</ul>
								<div class="detail">${dto.content }</div>
																 
							</td>
						</tr>
						<tr>
							<td colspan="2"><div class="ec-base-button ">
									<span class="gLeft">
									 <a href="list"	class="yg_btn_30 yg_btn4" alt="목록">LIST</a>
									</span>
									 <span class="gRight">
									 <c:if test="${sessionScope.grade=='A' }">
									 <a href="javascript:create_reply(${param.board_no })" class="yg_btn_30 yg_btn4" alt="답변">REPLY</a>
									 </c:if>
									 <a href="javascript:update(${param.board_no })" class="yg_btn_30 yg_btn4" alt="수정">MODIFY</a>
									 <a href="javascript:delete1(${dto.ref })" class="yg_btn_30 yg_btn4" alt="삭제">DELETE</a>
									</span>

								</div></td>
							
						</tr>
						

					</tbody>
				</table>

			</div>

		</div>
	</div>


</div>

