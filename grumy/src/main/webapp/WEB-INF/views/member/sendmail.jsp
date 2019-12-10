<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="util" uri="/ELFunctions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<!-- 필수 입력창 확인  -->

<script language="javascript">
   
   function validate() {
       

	   var ph1 = /^01([0|1|6|7|8|9]{1})$/;
	   var re = /^[a-zA-Z0-9]{8,16}$/ 
	   var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	   var re3 =  /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$/
	   

	   var id = document.getElementById("id");
	   var passwd = document.getElementById("passwd");
	   var email = document.getElementById("email");
	   
       if(!check(re,id,"아이디는 8~16자의 영문 대소문자와 숫자로만 입력")) {
           return false;
       }

       if(!check(re3,passwd,"패스워드는 8~16자의 영문,숫자,특수문자로 입력")) {
           return false;
       }


       if(user_passwd_confirm.value.length==0){
   		alert("비밀번호을 입력하세요");
   		user_passwd_confirm.focus();
   		return false;
   		}

   	   if(passwd.value != user_passwd_confirm.value){
   		alert("비밀번호가 일치하지 않습니다.");
		passwd.focus();
   		return false;
   	   }

	   if(joinForm.name.value.length==0){
         alert("이름을 입력해 주세요");
         joinForm.name.focus();
         return false;
       }
	   
       if(joinForm.postcode.value.length==0){
   		alert("주소를 입력하세요")
   		joinForm.postcode.focus();
   		return false;
   	   }
       
   	   if(joinForm.address.value.length==0){
   		alert("주소를 입력하세요")
   		joinForm.address.focus();
   		return false;
   	   }
   	   
   	   if(joinForm.detailaddress.value.length==0){
   		alert("주소를 입력하세요")
   		joinForm.detailaddress.focus();
   		return false;
   	   }
   	   
   	
   	  
   	   if(joinForm.phone1.value.length==0){
   		alert("전화번호를 입력하세요");
   		joinForm.phone1.focus();
   		return false;
   	   }
   	   if(joinForm.phone2.value.length==0){
   		alert("전화번호를 입력하세요");
   		joinForm.phone2.focus();
   		return false;
   	   }
   	   if(joinForm.phone3.value.length==0){
   		alert("전화번호를 입력하세요");
   		joinForm.phone3.focus();
   		return false;
   	   }
   	   
   	   if(!check(ph1,phone1,"유효하지 않은 전화번호 형태입니다.")) {
           return false;
        }
   	   
       if(email.value.length==0) {
        alert("이메일을 입력해 주세요");
        email.focus();
        return false;
       }

       if(!check(re2, email, "적합하지 않은 이메일 형식입니다.")) {
        return false;
       }
     
       if(joinForm.birth1.value.length==0){
    	   alert("생년월일을 입력해 주세요")
    	   joinForm.birth1.focus();
    	   return false;
       }
       if(joinForm.birth2.value.length==0){
    	   alert("생년월일을 입력해 주세요")
    	   joinForm.birth2.focus();
    	   return false;
       }
       if(joinForm.birth3.value.length==0){
    	   alert("생년월일을 입력해 주세요")
    	   joinForm.birth3.focus();
    	   return false;
       }

	   if(agree.checked==false){
		alert("약관 동의를 하셔야 가입이 완료 됩니다.")
		return false;
	   }  
	  
	   
	   var phone1 = document.joinForm.phone1.value;
	   var phone2 = document.joinForm.phone2.value;
	   var phone3 = document.joinForm.phone3.value;
	   var phone = phone1 + phone2 + phone3;
	   document.getElementById("phone").value = phone;
	   
	    
	   var birth1 = document.joinForm.birth1.value;
	   var birth2 = document.joinForm.birth2.value;
	   var birth3 = document.joinForm.birth3.value;
	   var birth = birth1 + birth2 + birth3;
	   document.getElementById("birth").value = birth;
	   
	   

	  
	   
}

   function check(re, what, message) {
       if(re.test(what.value)) {
           return true;
       }
       alert(message);
       what.value = "";
       what.focus();
       //return false;
    }
   
</script>


</head>

<body id="cmn">

${id }
${email }
${passwd }

</body>
</html>