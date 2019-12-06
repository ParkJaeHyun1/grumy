<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/ckeditor/ckeditor.js"></script>
<div id="container">
	<div id="contents">

		<div
			class="xans-element- xans-board xans-board-writepackage-1002 xans-board-writepackage xans-board-1002 ">
			<div
				class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
				<div class="title" style="text-align: center">
					<h2>
						<font color="#555555">상품 문의</font>
					</h2>

				</div>
			</div>
			<form id="boardWriteForm" name="frm" action="create" method="post"
				onsubmit="return input(this)">
				<input type="hidden" name="id" value="${sessionScope.id }">
				<input type="hidden" name="check_read" value="${sessionScope.id }">
				<input type="hidden" name="itemno" value="${param.itemNo }">
				<input type="hidden" name="writer" value="${name}">
				
				<c:choose>
					<c:when test="${sessionScope.grade=='A' }">
						<input type="hidden" name="lev" value="S">		
					</c:when>
					<c:otherwise>
						<input type="hidden" name="lev" value="A"> 
					</c:otherwise>
				</c:choose>
				
				
				<div class="ec-base-table typeWrite ">
					<table border="1" summary="">
						<colgroup>
							<col style="width: 150px;">
							<col style="width: auto;">
						</colgroup>
						<tbody>

							<tr>
								<th scope="row">SUBJECT</th>
								<td><c:choose>
										<c:when test="${sessionScope.grade=='A' }">
											<input type="text" name="subject" style="width: 300px">
										</c:when>
										<c:otherwise>
											<select name="subject" style=width:300px>
												<option >♡문의합니다</option>
											</select>
										</c:otherwise>
									</c:choose></td>
							</tr>
							<tr>
							</tr>
							<tr>
								<td colspan="2"><textarea rows="20" cols="190"
										name="content" id="content">
										이곳은 상품문의를 위한 게시판입니다!<br><br> 
										주문건취소/주소지변경/상품변경<br>당일발송 상품 단독 구매 후 출고요청 <br>
										부분배송비 입금후 가능한 상품 당일 출고요청/합배송요청에 대한 내용은 꼭 !<br> 
										'배송 전 변경/취소' 게시판 또는 고객센터(070-7705-5595)로 당일 12시 이전 요청 해주세요!<br>
										각 게시판에 맞는 문의 부탁드리겠습니다 좋은하루되세요 감사합니다 :-)<br><br>
										----------------------------------------------------------------------<br>
										</textarea> <script type="text/javascript">
											CKEDITOR.replace('content', {
												height : 500
											});
										</script></td>
							</tr>
							<tr>
								<th scope="row">SECRET</th>
								<td><input id="secure0" name="secure" fw-filter="isFill"
									fw-label="비밀글설정" fw-msg="" value="F" type="radio" onclick="return(false);"><label
									for="secure0">공개글</label> <input id="secure1" name="secure"
									fw-filter="isFill" fw-label="비밀글설정" fw-msg="" value="T"
									type="radio" checked="checked"><label for="secure1">비밀글</label></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="ec-base-button ">
					<span class="gLeft">
						<button type="button" class="yg_btn_30 yg_btn4" alt="목록"
							onclick="location.href='list'">LIST</button>
					</span> <span class="gRight">
						<button id="save" type="submit" class="yg_btn_30 yg_btn4" alt="등록">OK</button>
						<button type="button" onclick="history.back()"
							class="yg_btn_30 yg_btn4" alt="취소">CANCEL</button>
					</span>
				</div>
			</form>
		</div>

	</div>
	<script type="text/javascript">
	function input(f) {
		if (f.subject.value == '') {
			alert("제목을 입력하세요");
			f.subject.focus();
			return false;
		}

		/* if (f.content.value == '') {
			alert("내용을 입력하세요");
			f.content.focus();
			return false;
		} */
		if (CKEDITOR.instances['content'].getData() == '') {
			window.alert('내용을 입력해 주세요.');
			CKEDITOR.instances['content'].focus();
			return false;
		}

	}
</script>

</div>

