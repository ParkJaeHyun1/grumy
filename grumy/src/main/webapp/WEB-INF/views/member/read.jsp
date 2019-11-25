<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="util" uri="/ELFunctions"%>

<!DOCTYPE html>
<html>
<head>
  <title>회원</title>
  <meta charset="utf-8">
  <script>
  
 
  function updatePw(){
	  var url = "updatePw";
	  url += "?id=${param.id}"
	  
	  location.href = url;
  }
  function updateM(){
	  var url = "update";
	  url += "?id=${dto.id}";
	  
	  location.href = url;  
  }
  function deleteM(){
	  var url = "delete";
	  url += "?id=${dto.id}";
	  url += "&oldfile=${dto.fname}";
	  location.href = url;  
  }
  
  </script>
  </head>
<body>

<div class="container">
	<h1 class="col-sm-offset-2 col-sm-10">${dto.name}의 회원정보</h1>
	<table class="table table-bordered">

			<th>아이디</th>
			<td>${dto.id}</td>			
		</tr>
		<tr>
			<th>성명</th>
			<td>${dto.name}</td>			
		</tr>
		<tr>
			<th>전화번호</th>
			<td>${dto.phone}</td>			
		</tr>
		<tr>
			<th>이메일</th>
			<td>${dto.email}</td>			
		</tr>
		<tr>
			<th>우편번호</th>
			<td>${dto.postcode}</td>			
		</tr>
		<tr>
			<th>주소</th>
			<td>${dto.address}<br> ${dto.detailaddress}</td>			
		</tr> 

	</table>
		<div style="text-align:center">
		<button class="btn btn-default" onclick="updateM()">정보수정</button>
		<c:if test="${not empty sessionScope.id && sessionScope.grade !='A'}">
		
		<button class="btn btn-default" onclick="updatePw()">패스워드변경</button>

     </c:if>
        <button class="btn btn-default" onclick="deleteM()">회원탈퇴</button>
       <c:if test="${not empty sessionScope.id && sessionScope.grade =='A'}">
        <button class="btn btn-default" onclick="location.href='${pageContext.request.contextPath}/member/list'">회원목록</button>
	</c:if>
	</div>
	
</div>
</body>
</html>