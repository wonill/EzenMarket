<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Signin Template · Bootstrap v5.1</title>
    <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/sign-in/">   

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="https://docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="https://docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="https://docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="https://docs/5.1/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="https://docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
    <link rel="icon" href="https://docs/5.1/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#7952b3">
    
    <!-- Custom styles for this template -->
   
    <link href="<%=request.getContextPath()%>/resources/css/user/signin.css" rel="stylesheet">
    
   
    </head>
    <body class="text-center">
    
    <main class="form-signin">
    
        
        <div class="container text-center">
            <div class="row">       
              <div class="col-lg-4 col-md-6"></div>         
              <div class="col-lg-4 col-md-6">
                <a href="<%=request.getContextPath() %>"  class="logo"><h1>Ezen Market</h1></a>                
                <h3 class="h3 mb-3 fw-normal">회원 로그인</h3>
                
                <form action="signin" method="POST">
                
                <div class="form-floating">
                    <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="user_id">
                    <label for="floatingInput">이메일</label>
                </div>
                <div class="form-floating">
                    <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="user_pw">
                    <label for="floatingPassword">비밀번호</label>
                </div>
                <div id="login-search" class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me"> 자동로그인 
                    </label>
                    <label>
                        <a href="#">아이디 찾기</a>
                        <span> | </span>
                        <a href="#">비밀번호 찾기</a>
                    </label>
                </div>
                <button id="signin-btn" class="w-100 btn btn-lg btn-primary" type="submit" id="signin">로그인</button>
               
                 </form>
                
                <button id="signup-btn" class="w-100 btn btn-lg btn-primary" id="signup">회원가입</button>
                <a href="#"><img id="naver-btn" src="./images/btnW_아이콘원형.png" alt=""></a>
                <p class="mt-5 mb-3 text-muted">&copy; 2022-2023</p>
              </div>
              <div class="col-lg-4 col-md-6"></div>   
            </div>
        </div>





    </form>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
  </body>
</html>