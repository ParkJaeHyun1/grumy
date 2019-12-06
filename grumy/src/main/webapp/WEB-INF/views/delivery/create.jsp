<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
						<font color="#555555">배송 문의</font>
					</h2>
					<!--h3>배송문의 Q&A 입니다 :)</h3-->
				</div>
			</div>
			<form id="boardWriteForm" name="frm" action="create" method="post"
				enctype="multipart/form-data" onsubmit="return input(this)">
				<input type="hidden" name="writer" value="${name }">
				<input type="hidden" name="check_read" value="${sessionScope.id }">
				
				<c:choose>
					<c:when test="${sessionScope.grade=='A' }">
						<input type="hidden" name="lev" value="S">
					</c:when>
					<c:otherwise>
						<input type="hidden" name="lev" value="A">
					</c:otherwise>
				</c:choose>
				<input type="hidden" name="id" value="${sessionScope.id }">
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
										<c:when
											test="${sessionScope.grade=='A' }">
											<input type="text" name="subject" style=width:300px>
										</c:when>
										<c:otherwise>
											<select id="subject" name="subject" style=width:300px>
												<option >문의합니다 ♡</option>
											</select>
										</c:otherwise>
									</c:choose></td>
							</tr>
							<tr>
								<td colspan="2"><textarea rows="20" cols="190"
										name="content" id="content">배송전 상품 변경/취소/환불 처리는 '배송전 변경/취소' 게시판에 꼭 남겨주세요!<br><br>
																	*원단공장&거래처에서 겨울원단 시즌오프로 갑작스러운 지연/품절이 불가피하게<br> 
																	생길 수 있는점 너그럽게 양해부탁드리겠습니다ㅠ.ㅠ!<br>
																	---------------------------------------------<br>
																	주문번호:
										</textarea>
										 <script
										type="text/javascript">
											CKEDITOR.replace('content', {
												height : 500
											});
										</script></td>
							</tr>
							<tr class="">
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

