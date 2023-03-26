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
<title>비밀번호 변경 완료</title>

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
  <h3 style="text-align: center;"><span style="color: #00A8DB;">${user_id}</span>님의 비밀번호가<br> 변경되었습니다.</h3><br>
  <button id="btn-back" type="button" onclick="history.go(-2);" class="btn btn-lg btn-secondary btn-block">뒤로 가기</button>
</div>
</div>

</body>
</html>