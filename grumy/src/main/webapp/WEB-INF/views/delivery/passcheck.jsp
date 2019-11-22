<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript">

</script>

<div id="container">
	<div id="contents">

		<div align="center"
			class="xans-element- xans-board xans-board-securepackage-1002 xans-board-securepackage xans-board-1002 ">
			<div
				class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
				<div class="title">
					<h2>
						<font color="#555555">배송 문의</font>
					</h2>
					<br><br>
					<!--h3>배송문의 Q&A 입니다 :)</h3-->
				</div>
			</div>
			<form id="boardSecureForm" name="frm"
				action="passcheck" method="post" 
				enctype="multipart/form-data">
				<input id="no" name="no" value="${param.no}" type="hidden">
				<div
					class="xans-element- xans-board xans-board-secure-1002 xans-board-secure xans-board-1002 ">
					<div class="secret">
						<fieldset >
							<legend>비밀글보기</legend>
							<p class="info">
								이 글은 비밀글입니다. <strong class="txtEm">비밀번호를 입력하여 주세요.</strong><br>관리자는
								확인버튼만 누르시면 됩니다.
							</p>
							<br><br>
							<p class="password">
								<label for="secure_password">PASSWORD</label> <input
									id="passwd" name="passwd" fw-filter=""
									fw-label="비밀번호" fw-msg="" value="" type="password">
							</p>
							<br><br>
							<button class="yg_btn_80 yg_btn3" type="button" onclick="location.href='list'">LIST</button>
							<button class="yg_btn_80 yg_btn5" type="submit">OK</button>		
						</fieldset>
					</div>
				</div>
			</form>
		</div>
	</div>
	<hr class="layout">
</div>