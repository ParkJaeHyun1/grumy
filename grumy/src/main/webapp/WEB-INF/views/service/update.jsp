<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/ckeditor/ckeditor.js"></script>
<div id="container">
	<div id="contents">

		<div
			class="xans-element- xans-board xans-board-readpackage-1002 xans-board-readpackage xans-board-1002 ">
			<div
				class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
				<div class="title" style="text-align: center">
					<h2>
						<font color="#555555">고객센터</font>
					</h2>

					<!--h3>공지사항입니다.</h3-->
				</div>
			</div>
			<br>
			<br>
			<!-- 글 내용-->
			<form action="update" method="post" id="frm"
				onsubmit="return input(this)" enctype="multipart/form-data">
				<input type="hidden" name="no" value="${param.no}">
				<div class="ec-base-table typeWrite ">
					<table border="1" summary="">
						<colgroup>
							<col style="width: 150px;">
							<col style="width: auto;">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">SUBJECT</th>

								<td><select id="subject" name="subject" style="width:300px">
									<option>♡답변합니다</option>
								</select></td>
							</tr>
							<tr>
								<th scope="row">WRITER</th>
								<td>${dto.writer }</td>
							</tr>
							<tr>
								<td colspan="2" style="text-align: center"><textarea
										rows="20" cols="150" name="content" id="content">${dto.content}</textarea>
										 <script
										type="text/javascript">
											CKEDITOR.replace('content', {
												height : 500
											});
										</script>
								</td>
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
					<br>
					<p align="right">
						<button type="submit" class="yg_btn_30 yg_btn4" id="save">OK</button>
						<button type="button" class="yg_btn_30 yg_btn4"
							onclick="history.back()">CANCEL</button>
					</p>
				</div>
			</form>

		</div>
	</div>


</div>

<script type="text/javascript">


	function input(f) {
		if (f.subject.value == '') {
			alert("제목을 입력하세요");
			f.subject.focus();
			return false;
		}
/* 		if (f.content.value == '') {
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