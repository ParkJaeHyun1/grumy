<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdn.bootpay.co.kr/js/bootpay-3.0.2.min.js"
   type="application/javascript"></script>
</head>
<body>
<script>
BootPay.request({
   price: 0, // 0으로 해야 한다.
   application_id: "5dd11c974f74b4002fc15ac8",
   name: '정기적인 결제', //결제창에서 보여질 이름
   pg: '',
   method: '', // 빌링키를 받기 위한 결제 수단
   show_agree_window: 0, // 부트페이 정보 동의 창 보이기 여부
   user_info: {
      username: '사용자 이름',
      email: '사용자 이메일',
      addr: '사용자 주소',
      phone: '010-1234-4567'
   },
   order_id: '고유order_id_1234', //고유 주문번호로, 생성하신 값을 보내주셔야 합니다.
   params: {callback1: '그대로 콜백받을 변수 1', callback2: '그대로 콜백받을 변수 2', customvar1234: '변수명도 마음대로'},
   extra: {
      start_at: '2020-05-10', // 정기 결제 시작일 - 시작일을 지정하지 않으면 그 날 당일로부터 결제가 가능한 Billing key 지급
      end_at: '2022-05-10' // 정기결제 만료일 -  기간 없음 - 무제한
   }
}).error(function (data) {
   //결제 진행시 에러가 발생하면 수행됩니다.
   console.log(data);
}).cancel(function (data) {
   //결제가 취소되면 수행됩니다.
   console.log(data);
}).done(function (data) {
   // 빌링키를 정상적으로 가져오면 해당 데이터를 불러옵니다.
   console.log(data);
});
</script>
</body>
</html>