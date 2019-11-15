<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
function read(no){
	var url = "read";
	url += "?no="+no;
	
	location.href = url;
}
function update(no){
	var url = "update";
	url += "?no="+no;
	
	location.href = url;
}
</script>
<div id="container">
	<div id="contents">

		<div
			class="xans-element- xans-board xans-board-readpackage-1002 xans-board-readpackage xans-board-1002 ">
			<div
				class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
				<div class="title" style=text-align:center>
					<h2>
						<font color="#555555">NOTICE</font>
					</h2>
					
					<!--h3>공지사항입니다.</h3-->
				</div>
			</div>
			<br><br>
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
							<td colspan="2" style="text-align: center">
								<ul class="etcArea">
									<li class="displaynone">
									<li class="" style="text-align: right"><span>DATE</span> <span
										class="txtNum">${dto.wdate }</span></li>

								</ul>
								<div class="detail">${dto.content }</div>
							</td>
						</tr>
						<tr>
							<td><div class="ec-base-button ">
									<span class="gleft"> <a href="list"
										class="yg_btn_30 yg_btn4" alt="목록">LIST</a>
									</span>
								</div></td>
							<td></td>
						</tr>
						
							<c:choose>
								<c:when test="${empty noArr[0] }">
								<tr>
									<td>NEXT</td>
									<td><a href="javascript:read(${noArr[1]})">${subjectArr[1]}</a></td>
								</tr>
								</c:when>
								<c:when test="${empty noArr[1] }">
								<tr>
									<td>PREV</td>
									<td><a href="javascript:read(${noArr[0]})">${subjectArr[0]}</a></td>
								</tr>
								</c:when>
								<c:otherwise>
								<tr>
									<td>PREV</td>
									<td><a href="javascript:read(${noArr[0]})">${subjectArr[0]}</a></td>
								</tr>
								<tr>
									<td>NEXT</td>
									<td><a href="javascript:read(${noArr[1]})">${subjectArr[1]}</a></td>
								</tr>
								</c:otherwise>
							</c:choose>
						</tbody>
				</table>
				<div class="ec-base-button ">
									<p  align="right">
									<button class="yg_btn_30 yg_btn4" onclick="javascript:update(${param.no})">수정</button>
									</p>
								</div>
			</div>

		</div>
	</div>


</div>

