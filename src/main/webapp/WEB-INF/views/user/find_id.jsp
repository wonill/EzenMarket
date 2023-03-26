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

<title>아이디 찾기</title>


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
    .card-title {
        margin-left: 30px;
    }
	 .links {
        text-align: center;
        margin-bottom: 10px;
    }

    a { 
    	color: #f58b34; text-decoration: none; 
    }
    .text2 {
    	color : blue;
    }
    
    #check_id {
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
  <form id="find-id-form" action="<%=request.getContextPath()%>/find_id" class="form-signin" method="POST">
    <input type="text" name="user_name" id="user_name" class="form-control" placeholder="이름" required autofocus><BR>
    <input type="text" name="email" id="email" class="form-control" placeholder="이메일" required><br>
    <button id='check_id' type="submit" class="btn btn-lg btn-dark btn-block" >ID 확인하기</button>
    <button id="btn-cancel" type="button" onclick="history.go(-1);" class="btn btn-lg btn-secondary btn-block">취 소</button>
  </form>
  </div>
</div>
<script>

</script>
</body>

</html>