<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="util" uri="/ELFunctions"%>
<c:set var="root" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, th, td{
border:1px solid;
}
h2{
text-align:center;
}
</style>
<script>
$(document).ready(function() {
	$("#ready").click(function() {
		var formData = $("#multiForm").serialize();
	  	$.ajax({
	   	type : "POST",
	   	url : "${root }/admin/newOrder",
	   	cache : false,
	   	data : formData,
	   	success : function(data){
	   		alert("success");
	   	},
	   	error : function(data){
	   		alert("fail");
	   	}
	  	});
	});
});

</script>
</head>
<body>
<div id="container">
	<div id="contents">
<div id="container">
	<div id="contents">
		<h2>신규 주문</h2>
		<br>
		<form class="form-inline" method="post">
			<table>
				<tr>
					<th width="10%">No.</th>
					<th width="75%">Item</th>
					<th width="15%">배송 준비</th>
				</tr>
				<c:forEach items="${list}" var="dto">
				<tr>
					<td name>${dto.no}</td>
					<td>${dto.name}</td>
					<td><input id="ready" type="submit" value="배송 준비"/> </td>
				</tr>
				</c:forEach>
			</table>
		</form>
	</div>
</div>
	</div>
</div>
</body>
</html>