<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="util" uri="/ELFunctions"%>
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
</head>
<body>
<div id="container">
	<div id="contents">
		<h2>입금 대기</h2>
		<br>
		<table>
			<tr>
				<th width="10%">No.</th>
				<th width="75%">Item</th>
				<th width="15%">상태</th>
			</tr>
			<c:forEach items="${list}" var="dto">
			<tr>
				<td>${dto.no}</td>
				<td>${dto.name}</td>
				<td>입금 대기 </td>
			</tr>
			</c:forEach>
		</table>
	</div>
</div>
</body>
</html>