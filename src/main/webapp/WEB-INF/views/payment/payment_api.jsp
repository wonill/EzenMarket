<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charSet="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>결제 위젯</title>
  <script src="https://js.tosspayments.com/v1/payment-widget"></script>
  <style>
    #payment-button{ width:100%; padding:15px; background-color:#3065AC; color:white; border-radius:3px; font-size:16px; border:none; margin-top:10px}
	.title {margin: 0 0 4px; font-size: 24px; font-weight: 600;color: #4e5968;}
  </style>
</head>
<body>
  <!-- 상품 정보 영역-->
  <div class="title">상품 정보</div>
  <p>토스 티셔츠</p>
  <p>결제 금액: 15,000원</p>
  <form id="discount-coupon">
    <input type="checkbox" id="coupon"/>5,000원 할인받기 
  </form>
  <hr>	

  <!-- 결제 방법 영역-->
  <div class="title">결제 방법</div>
  <div id="payment-method"></div>
  <div id="agreement"></div> 
  <button id="payment-button">결제하기</button>
</body>

<script>
  const clientKey = 'test_ck_BE92LAa5PVb944lXMoP37YmpXyJj' // 상점을 특정하는 키
  const customerKey = 'YbX2HuSlsC9uVJW6NMRMjads' // 결제 고객을 특정하는 키
  const amount = 15_000 // 결제 금액
  const couponAmount = 5_000 // 할인 쿠폰 금액

  /*결제위젯 영역 렌더링*/
  //const paymentWidget = PaymentWidget(clientKey, customerKey) // 회원 결제
   const paymentWidget = PaymentWidget(clientKey, PaymentWidget.ANONYMOUS) // 비회원 결제
  paymentMethods = paymentWidget.renderPaymentMethods('#payment-method', amount)
  
  /*약관 영역 렌더링*/
  const paymentAgreement = paymentWidget.renderAgreement('#agreement')
  
  /*결제창 열기*/
  document.querySelector("#payment-button").addEventListener("click",()=>{
    paymentWidget.requestPayment({
      orderId: 'AD8aZDpbzXs4EQa-UkIX6asdfasdf',
      orderName: '토스 티셔츠',
      successUrl: 'http://localhost:8888/success',
      failUrl: 'http://localhost:8888/fail',
      customerEmail: 'customer123@gmail.com', 
      customerName: '김토스'
      }).catch(function (error) {
          if (error.code === 'USER_CANCEL') {
          // 결제 고객이 결제창을 닫았을 때 에러 처리
          } if (error.code === 'INVALID_CARD_COMPANY') {
            // 유효하지 않은 카드 코드에 대한 에러 처리
          }
      })  
  })

  /*할인 쿠폰 적용*/
  document.querySelector("#coupon").addEventListener("click", applyDiscount)
	
  function applyDiscount(e) {
    if (e.target.checked) {
      paymentMethods.updateAmount(amount - couponAmount, "쿠폰")
    } else {
      paymentMethods.updateAmount(amount)
    }
  }
</script>
</html>