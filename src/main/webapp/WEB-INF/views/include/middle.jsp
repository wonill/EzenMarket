<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<script src="https://kit.fontawesome.com/c737e525de.js" crossorigin="anonymous"></script>
<style>

      .a-tag {
         color: black;
          text-decoration: none;
      }
      
      .a-tag:link {
         color: black;
      }
      
      .a-tag:visited {
         color:black;
      }
      
      #recomend {        
        margin-top: 70px;
        font-size: 30px;
        margin: 5% 0 2% 15%;
        /* margin-bottom: 40px; */
      
      }
      
      .item_list {
        border: 1px solid rgb(255, 255, 255);
        width: 90%;
        margin-left: 15%;
        margin-right: 15%;
        display: flex;
        flex-wrap: wrap;
        margin-top: 60px; margin-bottom: 243px;
     
      }

      .item_list .item_card {
        border: solid 0.2px #00000025;        
        height: 330px;
        width: 216px;
        padding: 0;
        margin: 0 10px 10px 0;   
        
      }

      .item_list .item_card img {        
        height: 210px;
        width: 214px;
      }
      
      .item_list .item_card .text {
        margin-top: 10px;
        margin-bottom: 10px;
        padding: 0 5px 5px 5px;
        color: black;        
     }
      
      .item_list .item_card .text #main-prod-title {
       font-size: 17px;
       color: black;  
        font-weight: 400;
        margin-bottom: 3px;
        display: block;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis; 
      }
      
      .item_list .item_card .text #main-prod-price {
       float: left;
       font-weight: 900;
       margin: 0 5px -5px 0;
        font-size: 20px;
        opacity: .8;
        color: black; 
      }
      
      .item_list .item_card .text #main-prod-time {
        float: right;
        margin: 0 0 5px 0;
        font-weight: 400;
        font-size: 15px;
        opacity: .8;
        color: rgb(123, 123, 123);
      }
   
     .item_list .item_card .text2 {
       clear: both;
        border-color: #00000025;  
        border-style: solid;  
        border-width: 1px 0 0 0;  
        padding: 5px 0 0 5px; 
     }
      
     #icon-location {
        position: relative; 
        float: left; 
        margin: 5px 5px 5px 0;
     }
      
     .item_list .item_card .text2 #main-prod-location {
       font-weight: 400;
        font-size: 15px;
        color: black;     
        float: left;   
        max-width: 170px; 
        display: block;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis; 
        margin-top: 5px;
      }
      

      .swiper1 {
         z-index: 1;
         margin-top: 85px;
        width: 1900px;
      }

     .swiper-button-next {
      color: darkgray;
   }
   
   .swiper-button-prev {
   
      color: darkgray;
   }
   
   .swiper-pagination-bullet { 
      border: 1px solid #373737;
      opacity: 1;
      
    }

    
    .swiper-pagination-bullet-active {
        width: 20px;
        transition: width .5s; 
        border-radius: 5px; 
        background: #373737; 
        border: 1px solid transparent; 
    }
    
    
</style>

</head>
<body>


                
            <div class="swiper mySwiper swiper1">
              <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="http://jogunshop.img18.kr/web/upload/main/main_visua_thanksgivin_standard_Wrinkle_free_shirt.jpg" width="1905px" height="600px" alt="사진"></div>
                <div class="swiper-slide"><img src="https://media.bunjang.co.kr/images/nocrop/951918878_w2058.jpg" width="1905px" height="600px" alt="사진"></div>
                <div class="swiper-slide"><img src="https://media.bunjang.co.kr/images/nocrop/951852995_w2058.jpg" width="1905px" height="600px" alt="사진"></div>
                <div class="swiper-slide"><img src="https://media.bunjang.co.kr/images/nocrop/951918878_w2058.jpg" width="1905px" height="600px" alt="사진"></div>
             
              </div>
               <div class="swiper-button-next"></div> 
              <div class="swiper-button-prev"></div> 
              <div class="swiper-pagination pig"></div> 
           </div>
    
            <!-- 두번째 스와이퍼 -->
    <!--         <div class="swiper mySwiper swiper2">
              <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="https://img.29cm.co.kr/next-edition/2023/02/10/a39ae7c9ac0d44eba638f1b52a94aa7b_20230210181851.jpg?width=500" width="300px" height="460px" alt="사진"></div>
                <div class="swiper-slide"><img src="https://img.29cm.co.kr/next-edition/2020/08/24/a9ebd1d26992499583dc838b2c753590_20200824152526.jpg?width=500" width="300px" height="460px" alt="사진"></div>
                <div class="swiper-slide"><img src="https://img.29cm.co.kr/next-edition/2023/01/10/854c48a4623b4bf5a2c373fe5ae2e623_20230110131514.jpeg?width=500" width="230px" height="250px" alt="사진"></div>
              </div>
              <div class="swiper-button-next"></div> 
               <div class="swiper-button-prev"></div> 
               <div class="swiper-pagination"></div>  
          </div> -->
      
     

     <div id="recomend"> 오늘의 상품 추천 <i style="color:rgb(255, 111, 45); font-size: 35px;" class="fa-solid fa-fire"></i></div>
     

            
         <!-- 상품 사진들 넣기-->
      <div class="item_list">
         <c:forEach items="${posts }" var="post">
            <div class="item_card">
               <div class="item_img">
                  <a class="a-tag" id="main-prod-img" href="product?id=${post.post_id }"><img src="${post.image_url }" alt="상품"></a>
               </div>
   
               <div class="text">                  
                  <a class="a-tag" href="product?id=${post.post_id }"><p id="main-prod-title">${post.title }</p></a>                  
                  <a class="a-tag" href="product?id=${post.post_id }"><div id="main-prod-price"><fmt:formatNumber value="${post.price}" pattern="#,###" />원</div></a>   
                  <a class="a-tag" href="product?id=${post.post_id }"><div id="main-prod-time" style="margin-left: 140px; margin-top: -20px;">${post.createdTimeAgo}</div></a>   
               </div>
               <div class="text2">
                  <a class="a-tag" href="product?id=${post.post_id }">
                     <i id="icon-location" class="fa-solid fa-location-dot"></i><span id="main-prod-location"> ${post.post_address}</span>
                  </a>
               </div>  
               
            </div>
         </c:forEach>
      </div>






   <!-- 스와이퍼 -->
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
            
            var webSocket = new WebSocket("ws://<%=request.getLocalAddr()%>:8888/ezenmarket/echo/" + ${sessionScope.user_number});
            
            webSocket.onopen = function(message) {
                  
                  
                  console.log('오픈');
                  console.log('오픈');
                  console.log('오픈');
                  console.log('오픈');
            };
                
            webSocket.onmessage = function(message) {
               const info = JSON.parse(message.data);
                  
                if(info.type == 'message'){
                  alert('메세지 알림이 왔습니다!')
                }   
            };
                
             webSocket.onerror = function(message) {
                    
                  console.log("error...\n");
             };       
                
            webSocket.onclose = function(message) {
                   
                  console.log("Server Disconnect...\n");
            };
            
            
           </script>
   
   
   

</body>
</html>