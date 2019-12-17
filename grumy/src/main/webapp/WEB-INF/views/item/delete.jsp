<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function delete1(itemNo) {

    if (confirm("정말 삭제하시겠습니까??") == true) { //확인

       var url = "delete";
       url += "?itemNo="+itemNo;

       location.href = url;
  
    } else { //취소

       return false;

    }

 }
 
</script>
</head>
<body>

    <div class="ec-base-button ">

                            <span class="gRight">
                            <a href="javascript:delete1(${dto.itemNo})" class="yg_btn_30 yg_btn4" alt="삭제">DELETE</a>
                           </span>

    </div>
</body>
</html>