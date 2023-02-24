<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"> <!-- 부트스트랩-->
<link rel="preconnect" href="https://fonts.googleapis.com">
    
 
<style>
   
      body {
        background-color:white;
      }

    
      .head {
       
        /* position: fixed; */
        position: relative;
        left: 11.5%;
        top: 80px;
        /* margin-top: 20px;
        margin-left: 19%; */
        /* padding: 40px; */
        /* margin-right: 10%; */
        /* background-color: black; */
        /* left: 20.8%; */
      }

      #logo {
         position: relative;
         top: 50px;
        font-size: 40px;
        font-weight: bold;  
        /* margin-left: -180px; */
      }

      .LastHead  {
        
      /*   position: fixed; */
        display: flex;
        flex-wrap: wrap;
        margin-left: 71%;
        /* font-size: 30px; */
  
      }

      .lastHead {
        display: block;
        font-size: 13px;
        margin-top: 5px;
        margin-left: -16px;
      }
      
      .like {
        margin-left: 24px;
        
      }
      
      .Like {
        margin-left: 34px;
      }

       
      .icon {
        font-size: 39px;
        
      }


      a:link {
        text-decoration: none;
      }

      a {
        color: black;
      }

      .Top {
        /* display: flex;
        justify-content: space-around; */
        /* margin-left: 80%;         */
        /* margin-top: 15px; */

        border: 5px solid black;
        background-color: black;
     
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
      
      
      #searchline {
        border: 1px solid black;
        width: 400px;
        height: 1px;
        margin-left: 13%;
        margin-top: -10px;
        /* margin-top: -10px; */
      }
      
/*       #readglasses {
        position: relative;
        top: -30px;
        left: 32.4%;
        font-size: 23px;
        color: black
        
      } */

      
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
         color:black;
      
      }
      
       input::-moz-placeholder {
         color:black;
      
      }
      
      .searchbox {
         height: 40px;
         width: 400px;
         border: 1px solid black;
         position: relative;
         left : 300px;
      }
      
      #search {
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
         top: -28px
      }
      
      
      #container{
      	width: 1900px;
      }

      
</style>
</head>
<body>
		
		
       <header>

          <div class="Top">
              <a class="top1" href="">EzenMarket 신규 가입시 <span style="color: orangered;">10%</span> 할인 쿠폰 | </a>
              <a class="top2" href="">[삼성카드]<span style="color: orangered">12만원</span> 캐시백 프로모션</a>
              <!-- <a class="top" href=""></a> -->
          </div>
          
          <nav class="topMenu">
            <ul>
              <li><a class="menuLink" href="">신고하기</a></li>
              <li><a class="menuLink" href="">판매하기</a></li>
              <li><a class="menuLink" href="">회원가입</a></li>
              <li><a class="menuLink" href="">로그인</a></li>
            </ul>
          </nav>

          <div class="topLine"></div>

          <nav class="head">
            <a id="logo" href="">EzenMarket</a>
           <div class="searchbox">
            <input id="search" type="search" placeholder="검색어입력">
            <button id="searchBtn">검색</button>
           </div>
           <!--  <i id="readglasses" class="fa-solid fa-magnifying-glass"></i> -->
          </nav>

       
          <div class="LastHead">
            <!-- <div><i class="fa-solid fa-door-open icon"></i><a class="lastHead" href="">채팅 </a></div> -->
            <div><i class="fa-regular fa-user icon"></i><a class="lastHead" href="">  마이페이지 </a></div>
            <div><i class="fa-regular fa-heart icon Like"></i><a class="lastHead like" href=""> 관심 상품 </a></div>
            </div>

        </header>
        




</body>
</html>