<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
     <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/mypage/review.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>

    </style>
</head>
<body>

  <jsp:include page="../include/header.jsp"/>
 
     <!--본문(해당회원 마이페이지)-->
   <hr>
   <div class="container">
      <!--container start-->
      <div class="row">
         <!--row start-->
         <div id="profile-section" class="col-2">
            <!--profile-section start-->
            <div class="profile-img" id="imgContainer">
               <img id="img" class="profile-img-img" src="${profile.user_image }" alt="프로필이미지" />
            </div>
            <div class="profile-img" id="modifyimgContainer" onclick="fileUploadAction();" style="display: none;">
               <img id="modifyImg" class="profile-img-img" src="https://pbs.twimg.com/profile_images/1536535827257630720/VUZLhP8M_400x400.jpg" alt="">
            </div>
            <input type="file" id="input_imgs" style="display: none;" />
            <div class="profile-txt">
               <div class="row">
                  <div id="nick">${profile.nickname }</div>
                  <input id="modifyNick" type="text" style="display: none;">
               </div>

               <div  style="margin-bottom: 2em;">
                  <span></span> <span></span>
               </div>

               <div class="product">
                  <span id="left">판매상품</span> <span id="right">${profile.postCount }</span>
               </div>
               <div class="review">
                  <span id="left2">거래후기</span> 
                         <c:choose>
                          <c:when test="${profile.ratingAvg > 4.0}">
                             <span class="star" style="color:#FFC31E; font-size: 20px; padding-left:15px;">★★★★★</span>
                          </c:when>     
                          <c:when test="${profile.ratingAvg > 3.0}">
                             <span class="star" style="color:#FFC31E; font-size: 20px; padding-left:15px;">★★★★☆</span>
                          </c:when>  
                          <c:when test="${profile.ratingAvg > 2.0}">
                             <span class="star" style="color:#FFC31E; font-size: 20px; padding-left:15px;">★★★☆☆</span>
                          </c:when>   
                          <c:when test="${profile.ratingAvg > 1.0}">
                             <span class="star" style="color:#FFC31E; font-size: 20px; padding-left:15px;">★★☆☆☆</span>
                          </c:when> 
                          <c:when test="${profile.ratingAvg > 0}">
                             <span class="star" style="color:#FFC31E; font-size: 20px; padding-left:15px;">★☆☆☆☆</span>
                          </c:when>   
                          <c:when test="${profile.ratingAvg == 0}">
                             <span class="star" style="color:#FFC31E; font-size: 20px; padding-left:15px;">☆☆☆☆☆</span>
                          </c:when>         
                       </c:choose>           
                       <span id="right2">${profile.reviewCount }</span>                 
               </div>

               <div id="intro" class="intro" style="margin-left: 10px; border: 0px;">${profile.user_intro }</div>
               <textarea id="modifyIntro" class="intro" style="display: none;"></textarea>

               <c:choose>
                  <c:when test="${verified eq 'yes' }">
                     <button id="modify-btn" onclick="modifyProfile()" type="button"   class="btn btn-outline-secondary" style="width: 95%; height: 40px; margin-right: 10px;">
                        <i class="fa-solid fa-user-plus"></i> 프로필수정
                     </button>
                     <button id="userInfo-btn" onClick="location.href='management?user_number=${user_number}'" type="button" class="btn btn-outline-secondary" style="width: 95%; height: 40px; margin-right: 10px;">
                        <i class="fa-solid fa-basket-shopping"></i> 내상품관리
                     </button>
                  </c:when>
               </c:choose>
               <button id="modify-done-btn" onclick="modifyProfileDone()" style="display: none;">완료</button>
            </div>
         </div>
         <!--profile-section end-->

         <!-- 마이페이지 (본인)-->
         <div id="profile-product" class="col-10">
            <div class="container">
               <div class="row">
                  <div class="col">
                     <div class="tabmenu out-tabmenu">
                        <ul>
                           <li id="tab1" class="btnCon">
                              <input type="radio" name="tabmenu" id="tabmenu1" onclick="location.href='./?user_number=${user_number}'">
                              <label for="tabmenu1">판매상품</label>
                              <div class="tabCon"></div>
                           </li>
                           <li id="tab2" class="btnCon">
                              <input type="radio" name="tabmenu" id="tabmenu2" onclick="location.href='./buy_list?user_number=${user_number}'">
                              <label for="tabmenu2">구매내역</label>
                              <div class="tabCon"></div>
                           </li>                           
                           <li id="tab3" class="btnCon">
                              <input type="radio" name="tabmenu" id="tabmenu3" checked> 
                              <label for="tabmenu3">후기</label>
                              <div class="tabCon">
                                 <div class="review-section">
                                    <span style="font-size: 1.2em; font-weight: 700; margin-left: 18px; ">전체</span>
                                    <span style="color: crimson; font-weight: 700;">${profile.reviewCount }</span>
                                 </div>
                                                                 
                                 <div class="review-body">
                                    <div class="review-list">
                                       <ul>
                                          <li>
                                          <c:choose>
                                             <c:when test="${profile.reviewCount > 0}">
                                                <c:forEach items="${review }" var="review"> 
                                     
                                                   <div class="review-div">                                       
                                                      <div class="member-image">
                                                         <div class="member-image-box">
                                                            <img src="${review.user_image }">      
                                                         </div>
                                                         <a href="./sales_list?user_number=${review.user_number }">
                                                            <div class="title">${review.nickname }</div> <!--리뷰 작성자 닉네임-->
                                                         </a>
                                                      </div>
                                                      <div class="member-box">                                                          
                                                <c:choose>
                                                     <c:when test="${review.rating > 4.0}">
                                                        <span class="star" style="color:#FFC31E; font-size: 25px; display:block; margin-bottom: 10px;">★★★★★</span>
                                                     </c:when>     
                                                     <c:when test="${review.rating > 3.0}">
                                                        <span class="star" style="color:#FFC31E; font-size: 25px; display:block; margin-bottom: 10px;">★★★★☆</span>
                                                     </c:when>  
                                                     <c:when test="${review.rating > 2.0}">
                                                        <span class="star" style="color:#FFC31E; font-size: 25px; display:block; margin-bottom: 10px;">★★★☆☆</span>
                                                     </c:when>   
                                                     <c:when test="${review.rating > 1.0}">
                                                        <span class="star" style="color:#FFC31E; font-size: 25px; display:block; margin-bottom: 10px;">★★☆☆☆</span>
                                                     </c:when> 
                                                     <c:when test="${review.rating > 0}">
                                                        <span class="star" style="color:#FFC31E; font-size: 25px; display:block; margin-bottom: 10px;">★☆☆☆☆</span>
                                                     </c:when>   
                                                     <c:when test="${review.rating == 0}">
                                                        <span class="star" style="color:#FFC31E; font-size: 25px; display:block; margin-bottom: 10px;">☆☆☆☆☆</span>
                                                     </c:when>         
                                                </c:choose> 
                                                         <%-- <a href="../product?id=${}"> --%> 
                                                                           <!--구매한 상품 이름-->
                                                         <a href="../product?id=${review.post_id }">
                                                            <div class="item-review-title">${review.title }<i class="fa-solid fa-chevron-right" style="padding-left: 6px; font-size: 13px;"></i></div>
                                                         </a>  
                                           
                                                         <div></div>
                                                         
                                                         <!-- <span class="description" width="0"> 
                                                         <span> -->
                                                         <span class="d-inline-block text-truncate" style="max-width: 500px;">${review.review_content }</span>
                                                               <span></span>
                                                                <span></span>
                                                         <!-- </span>
                                                         </span> -->
                                                      </div>
                                                   </div> 
                                                   
                                                </c:forEach> 
                                             </c:when>
                                             <c:otherwise>
                                                <span class="noReviews">등록된 후기가 없습니다</span>
                                             </c:otherwise>                                    
                                          </c:choose>
                                             <!--<c:forEach begin="${pagination_start }" end="${pagination_end }" var="i">
                                                <a id="page" href="./review?user_number=${user_number }&page=${i }">${i }</a>
                                             </c:forEach>-->
                                             <div class="page">
                                                <nav aria-label="Page navigation example" id="page2">
                                                   <ul class="pagination">
                                                      <c:forEach begin="${pagination_start}" end="${pagination_end}" var="i" >
                                                         <li class="page-item"><a class="page-link" href="./review?user_number=${user_number }&page=${i }">${i }</a></li>
                                                      </c:forEach>   
                                                   </ul>
                                                </nav>
                                             </div>
                                          </li>
                                          <li></li>
                                          <li></li>
                                       </ul>
                                    </div>
                                 </div>
                              </div></li>

                           <li id="tab4" class="btnCon">
                           <input type="radio" name="tabmenu" id="tabmenu4" onclick="location.href='./zzim?user_number=${user_number}'">
                              <label for="tabmenu4">찜</label>
                              <div class="tabCon"></div>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

   
   <jsp:include page="../include/footer.jsp"/>

   <script>
        const imgContainer = document.getElementById('imgContainer');
    const modifyimgContainer = document.getElementById('modifyimgContainer');
    const nick = document.getElementById('nick');
    const modifynick = document.getElementById('modifyNick');
    const intro = document.getElementById('intro');
    const modifyintro = document.getElementById('modifyIntro');
    const nickbtn = document.getElementById('modify-btn');
    const nickdonebtn = document.getElementById('modify-done-btn'); 
    const modifyImg = document.getElementById('modifyImg');
    const img = document.getElementById('img');
    
    function modifyProfile(){
      
      nick.style.display="none";
      nickbtn.style.display="none";
      intro.style.display="none";
      imgContainer.style.display="none";
      modifynick.style.display="inline";
      modifynick.value=nick.innerText;
      modifyintro.style.display="inline";
      modifyintro.value=intro.innerText;
      nickdonebtn.style.display="inline";
      modifyimgContainer.style.display="block";
      modifyImg.src = img.src;
    }

    function modifyProfileDone(){
      const RegXep = /^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{2,16}$/;
      console.log('gd');
        if(!RegXep.test(modifynick.value) || modifynick.value == ""){
          alert("사용불가 2~16자 이하 영어, 숫자, 한글로 구성");
          return false;
        } else if(modifynick.value != nick.innerText){
          var nickname = modifynick.value;
          var userintro = modifyintro.value;
          var formData = new FormData();
          var fileInput = document.getElementById('input_imgs');
          formData.append('img', fileInput.files[0]); 
          formData.append('nickname', nickname);
          formData.append('userintro', userintro);
          formData.append('nickChange', 'yes');
          formData.append('user_number',${sessionScope.user_number});
            $.ajax({
                url:'./modifynick', //Controller에서 요청 받을 주소
                type:'post', //POST 방식으로 전달
                processData: false,
                contentType: false,
                data: formData,
                success:function(result){ //컨트롤러에서 넘어온 cnt값을 받는다
                    if(result == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디
                      alert("사용 가능한 닉네임입니다.");
                      modifynick.style.display="none";
                      nickdonebtn.style.display="none";
                      modifyintro.style.display="none";
                      modifyimgContainer.style.display="none";
                      nick.innerText=modifynick.value;
                      intro.innerText=modifyintro.value;
                      console.log(document.getElementById('img').src);
                      console.log(document.getElementById('modifyImg').src);
                      document.getElementById('img').src = document.getElementById('modifyImg').src;
                      console.log(document.getElementById('img').src);
                      nick.style.display="inline";
                      nickbtn.style.display="inline";
                      intro.style.display="inline";
                      imgContainer.style.display="block";
                    } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                      alert("이미 존재하는 닉네임입니다. 다시 입력해주세요.");
                    }
                },
                error:function(){
                    alert("에러입니다");
                }
            });
          return true;
        } else {
          var nickname = modifynick.value;
          var userintro = modifyintro.value;
          var formData = new FormData();
          var fileInput = document.getElementById('input_imgs');
          formData.append('img', fileInput.files[0]); 
          formData.append('nickname', nickname);
          formData.append('userintro', userintro);
          formData.append('nickChange', 'no');
          formData.append('user_number',${sessionScope.user_number});
          
          $.ajax({
                url:'./modifynick', //Controller에서 요청 받을 주소
                type:'post', //POST 방식으로 전달
                processData: false,
                contentType: false,
                data: formData,
                success:function(result){ //컨트롤러에서 넘어온 cnt값을 받는다
                    if(result == 1){ //닉네임수정을 안했기때문에 기존닉네임이 체크되므로 1이 반환됨
                      modifynick.style.display="none";
                      nickdonebtn.style.display="none";
                      modifyintro.style.display="none";
                      modifyimgContainer.style.display="none";
                      nick.innerText=modifynick.value;
                      intro.innerText=modifyintro.value;
                      console.log(document.getElementById('img').src);
                      console.log(document.getElementById('modifyImg').src);
                      document.getElementById('img').src = document.getElementById('modifyImg').src;
                      console.log(document.getElementById('img').src);
                      nick.style.display="inline";
                      nickbtn.style.display="inline";
                      intro.style.display="inline";
                      imgContainer.style.display="block";
                    } else {
                      alert('오류입니다. 다시 시도해주세요.');
                    }
                },
                error:function(){
                    alert("에러입니다");
                }
            });
        }
      }
   </script>
  
   <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/mypage/fileupload.js" charset="utf-8"></script>
   <script src="https://kit.fontawesome.com/d04567b543.js" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>