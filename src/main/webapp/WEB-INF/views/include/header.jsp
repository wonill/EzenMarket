<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"> <!-- 부트스트랩-->
<link rel="preconnect" href="https://fonts.googleapis.com">
    
<!-- Swiper-->
<script src="https://kit.fontawesome.com/c737e525de.js" crossorigin="anonymous"></script><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/> 
<style>
   
   
      body {
        background-color:white;
      
      }

    
      .head {
       
        /* position: fixed; */
        position: relative;
        left: 11.5%;
        top: 30px;
        margin-left: 25px;
      }

      .logo {
         position: relative;
         top: 49px;
        font-size: 45px;
        font-weight: bold;  

      }
      
      .logo:hover{
        color: black;
      }

      .LastHead  {

        display: flex;
        flex-wrap: wrap;
        margin-left: 87%;
       
      }

      .lastHead {
        display: block;
        font-size: 13px;
      
        margin-top: 13px;
         
      }
      
      .lastHead:hover{
      	color:black;
      }
      
      
      
      .like {
        margin-left: 40px;
        
        
      }
  /*     
      .Like {
      
          position:relative;
         right: 40px;
        
      } */

       
      .icon {
        font-size: 34px;
        position:relative;
         top: -25px;
         left: 46px;
        
      }
      
      .Mypage {
         margin-right: -42px;
      }


      a:link {
        text-decoration: none;
      }

      a {
        color: black;
      }

      .Top {
    

        border: 7px solid black;
        background-color: black;
        width: 1900px;
 
      }

      .top1 {

        margin-left: 35%;
        color: white;
        font-size: 15px;
        font-weight: bold;   
      }
      
      .top2 {
        font-weight: bold;   
        color: white;
        font-size: 15px;   
      }

      /* topMenu의 ID를 가진 태그 안에 <ul> 태그 안에 <li> 태그의 스타일을 지정 */
      .topMenu ul li {   

        list-style: none;
        color: hsl(0, 1%, 27%);
        float: right;
        margin-right: 20px;
        font-size: 14px;
        margin-top: -10px;
      }
      
      .topMenu {
         position: relative;
         left: 40px;
         margin-left: 50px;
      }
      
      #searchline {
        border: 1px solid black;
        width: 400px;
        height: 1px;
        margin-left: 13%;
        margin-top: -10px;
        /* margin-top: -10px; */
      }
      

      
      .topLine {
        position: relative;
        top: 10px;
        /* border: 0.1px solid rgb(240, 239, 239); */
        width: 100%;

      }
      
      input:-ms-input-placeholder {
         color:black;
      
      }
      
       input::-webkit-input-placeholder {
         color:gray;
      
      }
      
       input::-moz-placeholder {
         color:black;
      
      }
      
      .searchbox {
         height: 43px;
         width: 450px;
         border: 2px solid black;
         position: relative;
         left : 480px;
      }
      
      #search {
         margin-top: 5px;
         width : 350px;
         border : 0px;
         outline : none;
         
      }
      
      #searchBtn {
      position: relative;
         width : 50px;
         height: 40px;
         border: 0px;
         background : black;
         outline: none;
         color: white;
         float: right;

      }
      
       #box {
         width: 1700px;
         height: auto;
      }
	
	
	   .menuLink:hover{
	   	 color:black;
	   }
	   
     
      
      
      

      
</style>
</head>
<body>
    
       <header>
        <div id="box">
          <div class="Top">
              <a class="top1" href="">EzenMarket 신규 가입시 <span style="color: orangered;">10%</span> 할인 쿠폰 | </a>
              <a class="top2" href="">[삼성카드]<span style="color: orangered">12만원</span> 캐시백 프로모션</a>
              <!-- <a class="top" href=""></a> -->
          </div>
          
          <nav class="topMenu">
            <ul>
               <c:choose>
              <c:when test="${sessionScope.login eq 'yes' }">
              <li><a class="menuLink" href="logout">로그아웃</a></li>
              </c:when>
           <c:otherwise>              
              <li><a class="menuLink" href="signup">회원가입</a></li>
              <li><a class="menuLink" href="signin">로그인</a></li>
               </c:otherwise>
              </c:choose>
            </ul>
          </nav>

          <div class="topLine"></div>

          <nav class="head">
            <a class="logo" href="<%=request.getContextPath()%>">Ezen<i class="fa-brands fa-monero logoIcon"></i>arket</a>
           <div class="searchbox">
            <input id="search" type="search" placeholder=" 검색어 입력">
            <button id="searchBtn">검색</button>
           </div>
           <!--  <i id="readglasses" class="fa-solid fa-magnifying-glass"></i> -->
          </nav>

       
          <div class="LastHead">
            <!-- <div><i class="fa-solid fa-door-open icon"></i><a class="lastHead" href="">채팅 </a></div> -->
            <div><a class="lastHead Mypage" href=""><i class="fa-regular fa-user icon mypage"></i>마이페이지</a></div>
            <div><a class="lastHead like" href="register"><i class="fa-solid fa-won-sign icon Like"></i>판매하기</a></div>
          </div>

        </header>


</body>
</html>