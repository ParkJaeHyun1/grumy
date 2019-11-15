<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="container">
	<div id="contents">

		<div
			class="xans-element- xans-board xans-board-readpackage-1002 xans-board-readpackage xans-board-1002 ">
			<div
				class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
				<div class="title" style=text-align:center>
					<h2>
						<font color="#555555">NOTICE 수정</font>
					</h2>
					
					<!--h3>공지사항입니다.</h3-->
				</div>
			</div>
			<br><br>
			<!-- 글 내용-->
			<form action="update" method="post">
			<div class="ec-base-table typeWrite ">
				<table border="1" summary="">
					<colgroup>
						<col style="width: 150px;">
						<col style="width: auto;">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">SUBJECT</th>
							
							<td><input type="text" name="subject" value="${dto.subject }"></td>
						</tr>
						<tr>
							<th scope="row">WRITER</th>
							<td>${dto.writer }</td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: center">
								<textarea rows="20" cols="150" name="content" id="content">${dto.content}</textarea>
							</td>
						</tr>
						<tr>
							<th scope="row">PASSWORD</th>
							<td><input type="password" name="passwd"></td>
						</tr>
					</tbody>
				</table>
					<p align="right">
						<button class="yg_btn_30 yg_btn4" >저장</button>
						<button class="yg_btn_30 yg_btn4" onclick="">취소</button>
					</p>
			</div>
			</form>

		</div>
	</div>


</div>

