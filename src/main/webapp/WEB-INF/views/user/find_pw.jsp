<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap CSS -->

<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
   integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
   crossorigin="anonymous">

<title>비밀번호 찾기</title>

<style>
html {
   height: 100%;
}


body {
   width: 100%;
   height: 100%;
   margin: 0;
   padding-top: 200px;
   padding-bottom: 40px;
   font-family: "Nanum Gothic", arial, helvetica, sans-serif;
   background-repeat: no-repeat;
}


.card {
        margin: 0 auto; /* Added */
        float: none; /* Added */
        margin-bottom: 10px; /* Added */
   }

    #find_id{
        background-color: #e4932b;
        border: none;
    }
   
   .form-signin .form-control {
        position: relative;
        height: auto;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
            box-sizing: border-box;
        padding: 10px;
        font-size: 16px;
   }
    .card-title{
        margin-left: 30px;
    }
    .links{
        text-align: center;
        margin-bottom: 10px;
    }

    a{ 
       color: #f58b34; text-decoration: none; 
    }
    .text2{
       color : blue;
    }
    
     #check_pw {
       background-color: #00A8DB;
        border-color: #00A8DB;
    }
    
    #mail-Check-Btn{
       background-color: #00A8DB;
        border-color: #00A8DB;
        float: right;
        margin-top: 6px;
        
    }
    
    #mail-Check-Num{
       background-color: #00A8DB;
        border-color: #00A8DB;
        float: right;
        margin-top: 6px;
        
    }
    
    .form-signin input,
   .form-signin button {
        margin-bottom: 13px;
}

}
        
</style>

</head>

<body>
 
   <div class="card align-middle" style="width:28rem; margin-top: -50px;">
   
   <div class="py-5 text-center" id="logo">
        <a href="<%=request.getContextPath()%>">
    <img src="<%=request.getContextPath()%>/resources/images/이젠마켓.png" width="250" height="70">
        </a>
   </div>
     
  <div class="card-body">
    <form id="find-pw-form" action="<%=request.getContextPath()%>/pw_changing" class="form-signin" method="POST">
    <input form="find-pw-form" type="text" name="user_id" id="user_id" class="form-control" placeholder="아이디" required autofocus><br>
    <input form="find-pw-form" type="text" name="user_name" id="user_name" class="form-control" placeholder="이름" required autofocus><br>
   
  <div class="row">
  <div class="col-sm-8">
    <input type="text" name="email" form="find-pw-form" class="form-control" id="userEmail" placeholder="you@example.com">
  </div>
  <div class="col-sm-4">
    <button type="button" class="btn btn-secondary" id="mail-Check-Btn" onclick="checkEmail()">인증번호 받기</button>
  </div>
</div>


 <div class="row">
  <div class="col-sm-8">
   <input form="find-pw-form" type="text" class="form-control mail-check-input" id="certification" placeholder="인증번호를 입력하세요"/>
     </div>
     <div class="col-sm-4">
   <input id="code" type="hidden" value ="">
   <button type="button" class="btn btn-secondary" id="mail-Check-Num" onclick="checkNum()">인증번호 확인</button>
       </div>
   </div>
      <button form="find-pw-form" type="submit" class="btn btn-lg btn-dark btn-block" >비밀번호 변경</button>
      
    <button id="btn-cancel" type="button" onclick="history.go(-1);" class="btn btn-lg btn-secondary btn-block">취 소</button>
  </form>
  </div>
   </div>

</body>
<script>
let checkNumber = false;
function checkNum(){
  let code = document.getElementById('code').value;
  let certificateNum = document.getElementById('certification').value;
  console.log('code:' + code);
  console.log('certificateNum:' + certificateNum)
  if (code == certificateNum){
    console.log(certificateNum);
    alert('인증 성공하셨습니다.')
    checkNumber = true;
    return true;
  } else {
    alert('인증 실패하셨습니다. 메일을 다시 확인해주세요!');
    return false;
  }
}

function checkEmail() {
    let email = $('#userEmail').val();
    let certificateNum = $('certification').val;
    let certification = $('certification');
    let container = document.getElementById('container');
    let code = document.getElementById('code')
    const RegExp = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
    
    if (!RegExp.test(email) || email == ""){
      alert('올바른 이메일을 입력해주세요')
      return false;
    } else {
      alert('인증메일 전송!')
      $.ajax({
      type : "POST",
      url : "./noticeMail",
      headers : {
        'Content-Type' : 'application/json'
      },
      dataType : "text",
      data : email,
      async: false,
      success : function(result){
        code.value = result;
        return true;
      },
      error : function(){
        alert('전송 요청 실패: 이메일이 존재하지 않습니다.');
        return false;
      }
    });
    }
  }
  
</script>



</html>