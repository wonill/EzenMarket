<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
   
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"> <!-- 부트스트랩-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <!-- 구글 폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <!-- Swiper-->
    <script src="https://kit.fontawesome.com/c737e525de.js" crossorigin="anonymous"></script><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/> 

    <title>이젠마켓</title>
    <style>

      body {
        background-color:white;
        
      }
      
      .aside {
        position: fixed;
        top: 50%;
        left: 97%;
      }

      .sideBtn {
        /* position: fixed;
        top: 300px;
        left: 90%; */
        border: 1px solid  #373737;
        background-color: #373737;
        width: 50px;
        height: 70px;
        color: whitesmoke;
        
        margin-left: 8px;
       
      }

      .sideIcon {
        font-size: 30px;
        margin-left: 10px;
        margin-top: 5px;
      }

      .topicon {
        margin-left: 12px;
      }

      .topBtn {
        background-color: whitesmoke;
        border: 1px solid whitesmoke;
        color: #373737;
        margin-top: -15px;
      }

      .chaticon {
        margin-top: 15px;
      }

      .head {
        position: relative;
        /* margin-top: 20px;
        margin-left: 19%; */
        /* padding: 40px; */
        /* margin-right: 10%; */
        /* background-color: black; */
        /* left: 20.8%; */
        left: 11.5%;
        top: 75px;
      }

      #logo {
        font-size: 40px;
        font-weight: bold;  
        /* margin-left: -180px; */
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
      
      /* !!  수정해야함  !! */
      #search {
        width: 340px;
        height: 10px;
        border: solid 2px rgb(255, 255, 255);
        margin-left: 2%;
        
      }
      
      #searchline {
        border: 1px solid black;
        width: 400px;
        height: 1px;
        margin-left: 13%;
        margin-top: -10px;
        /* margin-top: -10px; */
      }
      
      #readglasses {
        position: relative;
        top: -30px;
        left: 32.4%;
        font-size: 23px;
        color: black
        
      }
    
      .swiper {
       position: relative;
       margin-left: 340px;
       top: 64px
       /* padding-left: 100px; */
      }

      .xLine {
        position: relative;
        border: 0.1px solid rgb(0, 0, 0);
        height: 1px;
        height: 1px;
        width: 430px;
        top: 66px;
      }

      .xLine2 {
        position: relative;
        border: 0.1px solid rgb(0, 0, 0);
        height: 1px;
        width: 360px;
        float: right;
        top: 64.6px;
        
      }

      /* .yLine {
        position: relative;
        left: 100px;
        border: 1px solid black;
        height: 1000px;
        width: 1px;
      } */

      .swiper1 {
        width: 838px;
      }

      .swiper2 {
        position: relative;
        margin-left: 66.1%;
        margin-top: -24.16%;
        
      }

      
      #Category {
        /* overflow:visible; */
        float: left;
        margin-left: 200px;
        margin-top:  50px;
        
        /* box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15); */
      }

      .dropbarBtn {
  
        font-size: 20px;
        color: hsla(0, 0%, 0%, 0.651);
      }
  
      .selling {
      /* border: solid 1px white; */
      border-radius: 10px;
      /* padding: 20px; */
      }


      .item_list {
        border: 1px solid rgb(255, 255, 255);
        width: 63%;
        height: 90%;
        margin-top: 14px;
        margin-left: 19.4%;
        /* margin-right: 12%; */
        display: flex;
        flex-wrap: wrap;
        /* justify-content: space-between; */
      }

      .item_list .item_card {
        border: solid 0.2px #f7e6e625;
        height: 350px;
        width: 230px;
        padding: 5px;
        margin-bottom: 10px;
        
      }

      .item_list .item_card img {
        
        height: 210px;
        width: 214px;
        border-radius: 3px;
      }
      
      
      .item_list .item_card .text {
        margin-top: 10px;
        font-size: 26px;
        color: black;
        
      }
      
      .item_list .item_card .text p {
        font-size: 20px;
        opacity: .8;
        color: black;
        
      }
      
      .icon {
        font-size: 39px;
        
      }
      
      .LastHead  {
        
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
      
      /* 
            .navigation {
            
              display: flex;
              justify-content: space-around;
              margin-left: 345px;
              font-size: 20px;
              padding: 20px;
             
            } */
      
            /* #rightItems {
              
              width: 20%;
              font-size: 20px;
            } */

      /* aside {
        position: fixed;
        top: 300px;
        left: 90%;
        border: solid 1px rgb(248, 244, 244);
        width: 120px;
        height: 70px;
        color: white;
        font-size: 20px;
      }
 */

      #recomend {
        
        margin-top: 200px;
        font-size: 30px;
        margin-left:380px;
        /* margin-bottom: 40px; */
      
      }

      .advertising {
        margin-left: 21%;
      }

      .link-dark {
        margin-left: 70px;
        font-size: 15px;
        color: hsla(0, 1%, 15%, 0.651);

      }
     
     .event {
        /* display: flex;
        justify-content:center; */
        margin-left: 57.3%;
      }

      .topLine {
        position: relative;
        top: 10px;
        /* border: 0.1px solid rgb(240, 239, 239); */
        width: 100%;


      }
		
	  #container{
	  	width:1900px;
	  }

    
      /* display: block; 링크를 글씨가 있는 부분 뿐만아니라 전체 영역을 클릭해도 링크가 걸리게 설정 */

    </style>
    
  </head>

  <body>
  
  <div id="container">
        <header>

          
          <div class="Top">
              <a class="top1" href="">EzenMarket 신규 가입시 <span style="color: orangered;">10%</span> 할인 쿠폰 | </a>
              <a class="top2" href="">[삼성카드]<span style="color: orangered">12만원</span> 캐시백 프로모션</a>
              <!-- <a class="top" href=""></a> -->
          </div>
          
          <nav class="topMenu">
            <ul>
              <li><a class="menuLink" href="">신고하기</a></li>
              <li><a class="menuLink" href="register">판매하기</a></li>
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
            <a id="logo" href="">EzenMarket</a>
            <input id="search" type="text">
            <div id="searchline"></div>
            <i id="readglasses" class="fa-solid fa-magnifying-glass"></i>
            </nav>
          

       
          
            <!-- <div><i class="fa-solid fa-door-open icon"></i><a class="lastHead" href="">채팅 </a></div> -->
            <a class="lastHead" href="mypage/sales_list"><i class="fa-regular fa-user icon"></i>마이페이지</a>
            <a class="lastHead like" href="mypage/zzim"><i class="fa-regular fa-heart icon Like"></i> 관심 상품 </a>
           
            
            
            <div class="xLine"></div>
            <div class="xLine2"></div>
            <div class="yLine"></div>

              <!-- 사이드 -->
              <div class="aside">
                <div class="sideBtn"><a href="chat"><i class="fa-regular fa-comment sideIcon chaticon" style="color:white;"></i></a></div>
                <div class="sideBtn"><i class="fa-regular fa-bell sideIcon"></i></div>
                <div class="sideBtn topBtn"><i class="fa-solid fa-caret-up sideIcon topicon"></i><span style="margin-left: 8.5px;">TOP</span></div>
                <!-- <div class="sideBtn">공유</div> -->
              </div>

      
        </header>

        <!-- <div style="border: 1px solid black;"></div> -->
          <!-- 부트스트랩 드롭바 -->

          <!-- <div class="b-example-divider b-example-vr"></div> -->

          <div class="flex-shrink-0 p-2 bg-white dropbar" id="Category" style="width: 220px;">
            <!-- <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom"> -->
              <svg class="bi pe-none me-2" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
              <span class="fs-5 fw-semibold"></span>
            <!-- </a> -->
            <ul class="list-unstyled ps-0">
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0= collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">
                  ALL
                </button>
                <!-- collapse show 누르기 전에 보이는 것 -->
                <div class="collapse" id="home-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Updates</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Reports</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
                 SHOES
                </button>
                <div class="collapse" id="dashboard-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">스니커즈</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">남성화</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">여성화</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button  class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
                  WOMEN
                </button>
                <div class="collapse" id="orders-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">New</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Processed</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Shipped</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Returned</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#a-collapse" aria-expanded="false">
                  MAN
                </button>
                <div class="collapse" id="a-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#sport-collapse" aria-expanded="false">
                  SPORT
                </button>
                <div class="collapse" id="sport-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#baby-collapse" aria-expanded="false">
                  BABY
                </button>
                <div class="collapse" id="baby-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#acc-collapse" aria-expanded="false">
                  ACC
                </button>
                <div class="collapse" id="acc-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#underwear-collapse" aria-expanded="false">
                  속옷
                </button>
                <div class="collapse" id="underwear-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#beauty-collapse" aria-expanded="false">
                  BEAUTY
                </button>
                <div class="collapse" id="beauty-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#pet-collapse" aria-expanded="false">
                  PET
                </button>
                <div class="collapse" id="pet-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#brand-collapse" aria-expanded="false">
                  BRAND
                </button>
                <div class="collapse" id="brand-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#bag-collapse" aria-expanded="false">
                  BAG
                </button>
                <div class="collapse" id="bag-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#new-collapse" aria-expanded="false">
                  <span style="color: red;">NEW</span>
                </button>
                <div class="collapse" id="new-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Overview</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Weekly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Monthly</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Annually</a></li>
                  </ul>
                </div>
              </li>

              <!-- border-top 클래스 안에 원래 넣어야 함 -->
              <li class=" my-3"></li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#d-collapse" aria-expanded="false">
                  문의
                </button>
                <div class="collapse" id="d-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">New...</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Profile</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Settings</a></li>
                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">Sign out</a></li>
                  </ul>
                </div>
              </li>
            </ul>
          </div>
    

            <!--   애니메이션 넣기   -->
                <!-- Swiper -->
      
            <div class="swiper mySwiper swiper1">
              <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="https://media.bunjang.co.kr/images/nocrop/951918878_w2058.jpg" width="850px" height="460px" alt="사진"></div>
                <div class="swiper-slide"><img src="https://media.bunjang.co.kr/images/nocrop/951852995_w2058.jpg" width="850px" height="460px" alt="사진"></div>
                <div class="swiper-slide"><img src="https://media.bunjang.co.kr/images/nocrop/950792743_w3087.jpg" width="850px" height="460px" alt="사진"></div>
                <div class="swiper-slide"><img src="https://media.bunjang.co.kr/images/nocrop/951918878_w2058.jpg" width="850px" height="460px" alt="사진"></div>
              </div>
              <!-- <div class="swiper-button-next"></div> -->
              <!-- <div class="swiper-button-prev"></div> -->
              <div class="swiper-pagination"></div> 
            </div>
            <!-- 두번째 스와이퍼 -->
            <div class="swiper mySwiper swiper2">
              <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="https://img.29cm.co.kr/next-edition/2023/02/10/a39ae7c9ac0d44eba638f1b52a94aa7b_20230210181851.jpg?width=500" width="300px" height="460px" alt="사진"></div>
                <div class="swiper-slide"><img src="https://img.29cm.co.kr/next-edition/2020/08/24/a9ebd1d26992499583dc838b2c753590_20200824152526.jpg?width=500" width="300px" height="460px" alt="사진"></div>
                <!-- <div class="swiper-slide"><img src="https://img.29cm.co.kr/next-edition/2023/01/10/854c48a4623b4bf5a2c373fe5ae2e623_20230110131514.jpeg?width=500" width="230px" height="250px" alt="사진"></div> -->
              </div>
              <!-- <div class="swiper-button-next"></div> -->
              <!-- <div class="swiper-button-prev"></div> -->
              <!-- <div class="swiper-pagination"></div>  -->
            </div>
         

          

            <div id="recomend"> 오늘의 상품 추천</div>

            
            
            
            <!-- 상품 사진들 넣기-->
          <div class="item_list">
		  <c:forEach items="${posts }" var="post">
            <div class="item_card">    
              <div class="item_img">
              <a href="product?id=${post.post_id }">
                <img src="${post.image_url }" alt="상품">
              </a>
              </div>
              <div class="text">
              
                <h5>
                <a href="product?id=${post.post_id }">
                <i class="fa-regular fa-heart" style="float: right;"></i>${post.title }
                 </a>
                </h5>
                <p>${post.price }</p>
                <!-- <button><i class="fas fa-check"></i>사러가기</button> -->
              </div>
             
            </div>
           
           </c:forEach>
            
          </div>

          
          <!-- footer -->
          
         
          <div class="b-example-divider"></div>

<div class="container">
  <footer class="row row-cols-1 row-cols-sm-2 row-cols-md-5 py-5 my-5 border-top">
    <div class="col mb-3">
      <a href="/" class="d-flex align-items-center mb-3 link-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
      </a>
      <p class="text-muted">&copy; 2023</p>
    </div>

    <div class="col mb-3">

    </div>

    <div class="col mb-3">
      <h5>Section</h5>
      <ul class="nav flex-column">
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
      </ul>
    </div>

    <div class="col mb-3">
      <h5>Section</h5>
      <ul class="nav flex-column">
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
      </ul>
    </div>

    <div class="col mb-3">
      <h5>Section</h5>
      <ul class="nav flex-column">
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
      </ul>
    </div>
  </footer>
</div>
          
</div>
          <!-- 부트스트랩, swiper 자바스크립트 <script src="sidebars.js"></script>-->
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
          <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

         

          <!-- 자바 스크립트 -->
          <script>
            var swiper = new Swiper(".swiper1", {
              spaceBetween: 30,
              centeredSlides: true,
              autoplay: {
                delay: 2100,
                disableOnInteraction: false,
              },
              pagination: {
                el: ".swiper-pagination",
                clickable: true,
              },
              navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
              },
            });

            var swiper = new Swiper(".swiper2", {
              spaceBetween: 30,
              centeredSlides: true,
              autoplay: {
                delay: 2600,
                disableOnInteraction: false,
              },
              pagination: {
                el: ".swiper-pagination",
                clickable: true,
              },
              navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
              },
            });

            const $moveTopBtn = document.querySelector(".topBtn");

            // 버튼 클릭 시 맨 위로 이동
            $moveTopBtn.onclick = () => {
            window.scrollTo({ top: 0, behavior: "smooth" });  
          } 

         
		/*
            
            // 웹소켓
            let websocket;
        
            //입장 버튼을 눌렀을 때 호출되는 함수
            function connect() {
                // 웹소켓 주소
                var wsUri = "ws://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/chat";
                // 소켓 객체 생성
                websocket = new WebSocket(wsUri, "protocolOne");
                
                //웹 소켓에 이벤트가 발생했을 때 호출될 함수 등록
                websocket.onopen = onOpen;
                websocket.onmessage = onMessage;
            }
            
            //웹 소켓에 연결되었을 때 호출될 함수
            function onOpen() {
            }
            
           // * 1 메시지 전송
           function sendMessage(message){
           }
           
            // * 2 메세지 수신
            function onMessage(evt) {
           }

           

            */
          </script>

        </body>
        </html>