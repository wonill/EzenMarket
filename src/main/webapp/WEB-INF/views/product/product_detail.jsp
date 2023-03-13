<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Shop Item - Start Bootstrap Template</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="<%=request.getContextPath()%>/resources/css/product/product_detail.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        .box {
            width: 70px;
            height: 70px; 
            border-radius: 70%;
            overflow: hidden;
        }
        .profile {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
     
       .swiper-container {
          width:450px;
          height:450px;
          border:1px solid silver;
          border-radius:7px;
          margin-left: -100px;
      }
      
      .swiper-slide {
        
          display:flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
          align-items:center; /* 위아래 기준 중앙정렬 */
          justify-content:center; /* 좌우 기준 중앙정렬 */
      }
      
      .swiper-slide img {
         width:450px;
          height:450px;
         box-shadow:0 0 5px #555;
      }
      
      .py-5 {
         margin: 50px 0 0 0;
           border-color: #00000025;  
           border-style: solid;  
           border-width: 1px 0 1px 0;  
      }
      
      .py-3 {
         margin: 50px 0 0 0;
           border-color: #00000025;  
           border-style: solid;  
           border-width: 1px 0 0 0;  
      }
      
      .fs-5 {
         width: 500px;
      
      }

      #icon-text {
         color: black;
      }
      
      #cntWishlist {
         color : black;      
      }

      .icons > i:first-child {
         color: #FF8E99; 
         margin: 10px 0 10px 10px;         
      }
      
      .icons > i:nth-child(2) {
         color: #50C785; 
         border-left: 1px solid rgb(209, 209, 209); 
         padding-left: 10px;

      }
      
      .icons > i:nth-child(3) {
         color: #dda0dd;
         border-left: 1px solid rgb(209, 209, 209);  
         padding-left: 10px;
      }
      

      
      .explain {
         color: rgb(147, 147, 147);     
      }
      
      .explain span {
         color: black;      
      }
      
      #settingBtn {
         width: 400px; 
         height: 55px; 
         background:black; 
         color:white;
         margin: 0 0 0 130px;
      }
      
      #zzimBtn {
         background:#a0a0a0; 
         color: black;
         width: 200px; 
         height: 55px;
         margin: 0 15px 0 30px;
         border: solid black 0px;
         border-radius: 5px;
      }
      
      #zzimIcon {
         color: white;
      }
      
      #zzimText {
         color: white;
      }
      
      
      #chatBtn {
         background: #FFA500;
         color: black;
         width: 200px; 
         height: 55px;
         margin: 0 0 0 0;
         border: solid black 0px;
         border-radius: 5px;
      }
      
      #location {
         color: #FF3232;
      }
      
      
      #prodInfo {
         float: left;
         border-color: #00000025;  
           border-style: solid;  
           border-width: 0 1px 0 0; 
           margin: -52px 0 -78px 0;
      }
      
      #prodInfo2 {
         margin: 50px 30px 50px 0;      
      }
      
      #prodInfo3 {
         margin: 20px 30px 50px 0;      
      }
      
      
      #sellerInfo {
         float: right;
      }
         
      #nickname {
         font-size: 1.2em;
         font-weight: 600;
         margin-left: 20px;
      }
      
      #cntProd {
        color: rgb(147, 147, 147); 
        font-size: 1.1em;
        margin-left: 20px;
      }      
      
      #relatedProd {
        border: solid red 0px;        
      }
      
      #relatedTitle {     
        font-size: 16px;  
        overflow: hidden;        
        text-overflow: ellipsis;     
        white-space: nowrap;       
        word-break:break-all;  
      }
      
      #relatedPrice {
         font-size: 20px; 
         font-weight: 900;
      }
      
      
        
    </style>
    <script src="https://kit.fontawesome.com/d04567b543.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>

<body>

   <jsp:include page="../include/header.jsp"/>
   
    <jsp:include page="./product_category.jsp" />          
   


          
   <!-- Product section-->               
       
    <div style="width: 1200px; clear: right; margin-left: 500px;">
        <section class="py-5">  
            <div class="container px-lg-5 my-5" style="width: 1050px;">
                <div class="row gx-4 gx-lg-5 m-auto">
                    <div class="col-md-5">
                        <div class="swiper-container swiper1">
                          
                          <div class="swiper-wrapper">
                             <c:forEach items="${postImages }" var="postImage">
                              <div class="swiper-slide"><img src="${postImage.image_url }" alt="..." ></div>
                             </c:forEach>
                              
                        </div>
                        
                       <div class="swiper-button-next"></div>
                       <div class="swiper-button-prev"></div>
                       <div class="swiper-pagination"></div> 
                        </div>
                    </div>
                    &emsp;
                    &emsp;
                    &emsp;
                    <div class="col-md-6" style="margin-left: 15px;">
                        <div class="fs-5 large mb-1 fw-bolder">${post.title}</div>
                        <h3 class="display-6 fw-bolder"><fmt:formatNumber value="${post.price}" pattern="#,###" />원</h3>               
                        <hr style="width: 580px; color: rgb(209, 209, 209); margin">
       
                        <div class="fs-5 mb-4 icons">
                            <i class="fa-solid fa-heart" style="font-style: normal">&nbsp;<span id="cntWishlist" >${cntWishlist}</span>&nbsp;</i>    
                            <i class="fa-solid fa-eye">&nbsp;<span id="icon-text">${post.post_view}</span>&nbsp;</i>
                            <i class="fa-solid fa-clock">&nbsp;<span id="icon-text">${post.createdTimeAgo }</span></i>
                        </div>
                        <ul class="explain">
                            <li>상품상태&emsp;&emsp;<span>중고</span></li>
                            <br>
                            <li>교환여부&emsp;&emsp;<span>교환불가능</span></li>
                            <br>
                            <li>배송비&emsp;&emsp;&emsp;<span>배송비 포함</span></li>
                            <br>
                            <li>거래지역&emsp;&emsp;<span><i id="location" class="fa-solid fa-location-dot"></i> ${post.post_address}</span></li>
                        </ul>
                        <div class="d-flex justify-content-around" style="margin-right: 50px; margin-top: 50px;">
                           <c:choose>
                              <c:when test="${sessionScope.user_number eq post.user_number }">
                               <button id="settingBtn" class="btn flex-shrink-0 opacity-75" type="button" 
                           onclick="location.href='<%=request.getContextPath()%>/mypage/management?user_number=${sessionScope.user_number}'"">
                                   내 상점 관리
                               </button>
                               </c:when>
                               <c:otherwise>
                               <button id="zzimBtn" type="button">
                                   <i id="zzimIcon"class="bi bi-heart-fill"></i> <span id="zzimText">찜</span> 
                               </button>                        
                               <button id="chatBtn" type="button">
                                   <i class="bi bi-messenger"></i> 채팅
                               </button>
                               <jsp:include page="../report.jsp"/>
                               </c:otherwise>
                            </c:choose> 
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
     
        
       
        <!-- Related items section-->

        <section class="py-1 ">
            <div class="container px-4 px-lg-5 mt-5 d-flex">
                <div id="prodInfo" style="width: 60%;">
                    <h4 id="prodInfo2" class="fw-bolder mb-4">상품정보</h4>
                   <!-- <hr style="opacity: 25%;"> --> 
                    <p id="prodInfo3">${post.post_content}</p>
                </div>
                &emsp;
                <!-- <div>
                    <hr style="width: 1px; height: 80%;"> 
                </div>-->
                &emsp;
                <div id="sellerInfo" style="width: 40%;">
                    <h4 class="fw-bolder mb-4">판매자정보</h4>
                   <!-- <hr style="opacity: 25%;"> --> 
                    <div class="d-flex">
                        <div class="box" style="background: #BDBDBD;">
                        
                            <img class="profile" src="${profileImg.user_image}">
         
                        </div>
                        &emsp;
                        <div>
                        <p id="nickname"><a style="color:black; text-decoration:none;" href="mypage/?user_number=${post.user_number}">${post.nickname }</a></p>
                        <p id="cntProd">상품 ${cntProd}</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
     
        <br>

      <section class="py-3 ">
         <div class="container px-3 px-lg-5 mt-5">
            <h4 class="fw-bolder mb-4">${post.nickname }님의 판매상품</h4>
            <div
               class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center"">
               <c:forEach items="${lists}" var="list">
                  <div class="col mb-5" onclick="location.href='product?id=${list.post_id }'" style="cursor:pointer;">
                     <div id="relatedProd" class="card h-80">
                        <!-- Product image-->
                        
                        <img id="profile" class="card-img-top" src="${list.image_url }" alt="..." style="height: 240px"/>
                           
                        <!-- Product details-->
                        <div>
                        <div class="card-body p-3">
                           <div class="text-center">
                              <!-- Product name-->
                              <div id="relatedTitle">${list.title }</div>
                              <!-- Product price-->
                              <div id="relatedPrice"><fmt:formatNumber value="${list.price }" pattern="#,###" />원</div>
                           </div>
                        </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-1 pt-0 border-top-0 bg-transparent"></div>
                     </div>
                  </div>
               </c:forEach>
            </div>
         </div>
      </section>
          
     </div>

   
    <input name="currentPage"  value="0"  type="hidden"/>
	</form> 
   
    


      <!-- Footer
    <div style="width: 100%; clear: both; margin: 0 5% 0 5%;">
        <footer class="py-5 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p>
            </div>
        </footer>
  
    </div>-->
   

   <jsp:include page="../include/footer.jsp"/>
    
    
    
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- 스와이퍼 -->
     <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
  
     
 
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
   
      const zzimBtn = document.getElementById('zzimBtn');
      
      if(${zzim eq 'yes'}){
         zzimBtn.style.backgroundColor = 'black';
         zzimIcon.style.color = 'red';
         zzimText.style.color = 'white';
      }
      
      zzimBtn.addEventListener('click', (e) => {
         
         if(${sessionScope.login ne 'yes'}){
            alert('찜은 로그인 후 가능합니다.')
            return;
         }
         
          
          // AJAX 요청 인스턴스 생성
          const xhttp = new XMLHttpRequest();
          

          xhttp.addEventListener('readystatechange', (e) => {
              /*
                  readystate 1 : open()이 성공
                  readystate 2 : 요청에 대한 응답이 도착함
                  readystate 3 : 도착한 응답을 처리중
                  readystate 4 : 준비 완료


                  console.log('readyState:', e.target.readyState);
              */
             //console.log('readyState', xhttp.readyState);
             //console.log('httpStatus', xhttp.status);

             // 준비도 다 되었고, httpStatus도 ok인 상황
             let cntWishlist = document.getElementById("cntWishlist");
             
             if(xhttp.readyState == 4 && xhttp.status == 200){
                  // RestController에서 응답한 데이터(body)가 responseText에 들어있다
                  console.log('요청 성공!', xhttp.responseText);
                  if(xhttp.responseText == "0"){                     
                   zzimBtn.style.backgroundColor = 'black';
                   zzimIcon.style.color = 'red';
                   zzimText.style.color = 'white';
                     cntWishlist.innerText = ' ' + (parseInt(cntWishlist.innerText) + 1)+ ' ';
                     console.log('찜이 등록되었습니다.');
                  } else if(xhttp.responseText == "1"){
                     zzimBtn.style.backgroundColor = '#a0a0a0';   
                   zzimIcon.style.color = 'white';
                   zzimText.style.color = 'white';
                     cntWishlist.innerText = ' ' + (parseInt(cntWishlist.innerText) - 1)+ ' ';
                     console.log('찜이 해제되었습니다.');                     
                  }                  
             }
        
          });


          // 요청을 어떤 방식(method), 어디로 보낼지(url) 설정
          xhttp.open('GET', '<%=request.getContextPath()%>/product/zzim?user_number='+ ${sessionScope.user_number} + '&post_id=' + ${post.post_id});

          // 설정이 모두 끝난 요청을 보낸다
          xhttp.send();
      });
      
      const chatBtn = document.getElementById('chatBtn');
      
      chatBtn.addEventListener('click', (e)=>{
         if(${sessionScope.login ne 'yes'}){
            alert('채팅은 로그인 후 가능합니다.')
            return;
         }
         
         location.href = 'chat_from_post?buyer_user_number=' + ${sessionScope.user_number} +  '&seller_user_number=' +${post.user_number} +'&post_id=' + ${post.post_id}
      });
      
      
		  	function show() {
				document.querySelector(".background").className = "background show";
			}
			function close() {
				document.querySelector(".background").className = "background";
			}
			document.querySelector("#show").addEventListener("click", show);
			document.querySelector("#close").addEventListener("click", close);
   
   </script>
</body>

</html>