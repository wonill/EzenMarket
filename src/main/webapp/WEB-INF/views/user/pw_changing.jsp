<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>새 비밀번호 설정</title>

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
     #update_pw {
    	background-color: #00A8DB;
  		border-color: #00A8DB;
    }

}
</style>

</head>

<body>
<div class="card align-middle" style="width:25rem; margin-top: -50px;">

	<div class="py-5 text-center" id="logo">
  		<a href="<%=request.getContextPath()%>">
    <img src="resources/images/로고.png" width="250" height="70">
  		</a>
	</div>

 <div class="card-body">
  <form id="find-pw-form" modelAttribute="user" action="<%=request.getContextPath()%>/pw_confirmation" class="form-signin" method="POST">
    <input type="password" name="user_pw" id="user_pw" class="form-control" placeholder="새 비밀번호" required autofocus><br>
    <input type="hidden" name="user_id" value="${user_id}" />
    
    <input type="password" name="user_pw_confirm" id="user_pw_confirm" class="form-control" placeholder="새 비밀번호 확인" required autofocus><br>
    <button id='update_pw' type="submit" value = "Confirm Password Change" class="btn btn-lg btn-dark btn-block" >비밀번호 변경</button>
    <button id="btn-cancel" type="button" onclick="history.go(-2);" class="btn btn-lg btn-secondary btn-block">취 소</button>
  </form>
</div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
  $(function() {
    $('#find-pw-form').submit(function(event) {
      var password = $('#user_pw').val();
      var passwordConfirm = $('#user_pw_confirm').val();
      if (password !== passwordConfirm) {
        event.preventDefault();
        alert('비밀번호를 다시 입력해주세요.');
      }
    });
  });
</script>

</body>
</html>