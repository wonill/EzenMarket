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
        
        margin-top: 200px;
        font-size: 30px;
        margin-left: 420px;
        /* margin-bottom: 40px; */
      
      }
      
	  .selling {
    	  /* border: solid 1px white; */
    	  border-radius: 10px;
      	  /* padding: 20px; */
      }
     
      	 
      .swiper {
       position: relative;
       margin-left: 340px;
       top: 50px
       /* padding-left: 100px; */
      }
      .swiper1 {
        width: 870px;
      }
      .swiper2 {
        position: relative;
        margin-left: 75.75%;
        margin-top: -27.05%;
        
      }
       .xLine {
        position: relative;
        border: 0.1px solid rgb(0, 0, 0);
        height: 1px;
        width: 430px;
        top: 54px;
      }
      .xLine2 {
        position: relative;
        left: 89.4%;
        border: 0.1px solid rgb(0, 0, 0);
        height: 1px;
        width: 382px;
        top: 51.7px;
        
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
	 
	 .footer_item {
        position : relative;
  		transform : translateY(-100%);
  		bottom: -500px;
    	display: flex;
        flex-direction: column;
        padding-bottom: 20px;
        padding-top: 20px;
        width: 1902px;
        color: white; 
        background-color:  darkgray;
        text-align: center;
    	font-size: 13px;
    }
    
  
    .section1 {
      
        list-style: none;
    }
	
    .section2 {
		
        padding-bottom: 20px;
    }
    
	
	.sns-icon {
		font-size: 20px;
	}
	
	.a-tag-section2:link {
		text-decoration: none;
		
	}
	
	.a-tag-section2 {
		color:white;
		
	}
	
	.a-tag-section2:hover {
		color:white;
	}
	
	.section3 {
		color: gray;
	}
	
	
	
	a:link {
        text-decoration: none;
      }

      a {
        color: black;
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
        border: solid 0.2px #00000025;        
        height: 340px;
        width: 200px;
        padding: 0;
        margin: 0 10px 10px 0;        
      }

      .item_list .item_card img { 
        height: 220px;
        width: 198px;
        border-color: #00000025;  
        border-style: solid;  
        border-width: 0 0 1px 0;  
        object-fit: cover; 
      }
      
      
      .item_list .item_card .text {
        margin-top: 10px;
        padding: 0 5px 0 5px;
        color: black;        
      }

      .item_list .item_card .text #title {
        font-size: 15px;
        opacity: .8;
        color: black;  
        font-weight: 400;
        display: block;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;          
      }

      .item_list .item_card .text #price {     
        font-weight: 900;
        font-size: 17px;
        opacity: .8;
        color: black;        
      }

      
      .item_list .item_card .text #created {
        float: right;
        margin: 7px 5px 0 0;
        font-weight: 400;
        font-size: 12px;
        opacity: .8;
        color: rgb(123, 123, 123);        
      }


      .item_list .item_card .text2 {
        border-color: #00000025;  
        border-style: solid;  
        border-width: 1px 0 0 0;  
        padding: 10px 0 0 5px; 
      }

      .item_list .item_card .text2 #address {
        font-weight: 400;
        font-size: 12px;
        color: black;   
        max-width: 120px;
        overflow: hidden;        
        text-overflow: ellipsis;     
        white-space: nowrap;       
        word-break:break-all;
      }

      .item_list .item_card .text2 i {
        color: rgb(207, 207, 207);     
      }


      
      #recomend {        
        margin-top: 200px;
        font-size: 30px;
        margin-left:380px;
        /* margin-bottom: 40px; */
      
      }
	
	
        
</style>

</head>
<body>

		    <div class="xLine"></div>
            <div class="xLine2"></div>
           
            
            <!--   애니메이션 넣기   -->
                <!-- Swiper -->
      
            <div class="swiper mySwiper swiper1">
              <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="https://media.bunjang.co.kr/images/nocrop/951918878_w2058.jpg" width="900px" height="460px" alt="사진"></div>
                <div class="swiper-slide"><img src="https://media.bunjang.co.kr/images/nocrop/951852995_w2058.jpg" width="900px" height="460px" alt="사진"></div>
                <div class="swiper-slide"><img src="https://media.bunjang.co.kr/images/nocrop/950792743_w3087.jpg" width="900px" height="460px" alt="사진"></div>
                <div class="swiper-slide"><img src="https://media.bunjang.co.kr/images/nocrop/951918878_w2058.jpg" width="900px" height="460px" alt="사진"></div>
              </div>
               <div class="swiper-button-next"></div> 
              <div class="swiper-button-prev"></div> 
              <div class="swiper-pagination pig"></div> 
           </div>
            <!-- 두번째 스와이퍼 -->
            <div class="swiper mySwiper swiper2">
              <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="https://img.29cm.co.kr/next-edition/2023/02/10/a39ae7c9ac0d44eba638f1b52a94aa7b_20230210181851.jpg?width=500" width="300px" height="460px" alt="사진"></div>
                <div class="swiper-slide"><img src="https://img.29cm.co.kr/next-edition/2020/08/24/a9ebd1d26992499583dc838b2c753590_20200824152526.jpg?width=500" width="300px" height="460px" alt="사진"></div>
                <!-- <div class="swiper-slide"><img src="https://img.29cm.co.kr/next-edition/2023/01/10/854c48a4623b4bf5a2c373fe5ae2e623_20230110131514.jpeg?width=500" width="230px" height="250px" alt="사진"></div> -->
              </div>
             <!--  <div class="swiper-button-next"></div> 
               <div class="swiper-button-prev"></div>  -->
               <div class="swiper-pagination"></div>  
          </div>
		
	  

	  <div id="recomend"> 오늘의 상품 추천</div>

            
         <!-- 상품 사진들 넣기-->
          <div class="item_list">
		   <c:forEach items="${posts}" var="post">   
         <div class="item_card">
         
            <div class="item_img">
               <a href="product?id=${post.post_id }">
               <img src="${post.image_url }" alt="상품">
               </a>
            </div>
            
            <div class="text">
               <h5>
               <a href="product?id=${post.post_id }">
                  <p id="title">${post.title }</p>
               </a>            
               <a href="product?id=${post.post_id }">
                  <span id="price"><fmt:formatNumber value="${post.price }" pattern="#,###" />원</span>
               </a>   
               <a href="product?id=${post.post_id }">   
                  <span id="created">${post.createdTimeAgo }</span>
               </a>

               <!-- <button><i class="fas fa-check"></i>사러가기</button> -->
            </div>   
                  
                     
            <div class="text2">
               <a href="product?id=${post.post_id }">
                  <i class="fa-solid fa-location-dot"></i>
                  <span id="address">${post.post_address}</span>
               </a>
            </div>   
               
         </div>   
      </c:forEach>
            
          </div>        
         
         
        
         
         
         
         
         
         
         
         
     <footer class="footer_item">
	
        <ul class="section1">
            <li class="text">
                (주)EzenMarket
                대표이사 : 3조    |   개인정보보호책임자 : 이윤배
            <li class="text">
                사업자등록번호 : 123-45-67890   |   통신판매업신고 : 2019-서울서초-1126
            </li>    
            <li class="text">
                호스팅서비스 제공자 : Amazon Web Services (AWS)
            </li>   
            <li class="text">
                EMAIL : ezen@ezen.co.kr   |   FAX : 02-123-1234
            </li>
            <li class="text">
                주소 : 서울특별시 서초구 서초대로 38길 12,10층(서초동, 마제스타시티, 힐스테이트 서리풀)
            </li>    
        </ul>
        
        <div class="sns-icon">
    	    <i class="fa-brands fa-instagram"></i>
			<i class="fa-brands fa-facebook"></i>
			<i class="fa-brands fa-twitter"></i>
        </div>
		
 	   	<nav class="section2">
       	     <a class="a-tag-section2" href="">이용약관</a>
       	     <a class="a-tag-section2" href="">개인정보처리방침</a>
  	    </nav>
    
    	<div class="section3">“Ezenmarket” 상점의 판매상품을 제외한 모든 상품들에 대하여 (주)Ezenmarket는 통신판매중개자로서 거래 당사자가 아니며 판매 회원과 
          구매 회원 간의 상품거래 정보 및 거래에 관여하지 않고 어떠한 의무와 책임도 부담하지 않습니다.
   	    </div>

    </footer>
          
          
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
