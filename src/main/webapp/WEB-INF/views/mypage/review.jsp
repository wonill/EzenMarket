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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
    
    /*부트스트랩 기본 css*/
   .bd-placeholder-img { font-size: 1.125rem; text-anchor: middle; -webkit-user-select: none; -moz-user-select: none; user-select: none; }
   @media (min-width: 768px) { .bd-placeholder-img-lg {font-size: 3.5rem;} }
         
    
    /* 탭메뉴 */
   * { margin:0; padding:0; font-size:15px; line-height:1.3;  }
   ul { list-style:none; }
   .tabmenu { max-width:1000px; margin: 0 auto; position:relative; }
   .tabmenu ul { position: relative; }
   .tabmenu ul li { display: inline-block; width:calc(100%/4); float:left; text-align:center; background :white; line-height:40px; }
   .tabmenu label { display:block; width:100%; height:40px; line-height:40px; }
   .tabmenu input { display:none; }
   .tabCon { display:none; width: 100%; text-align:left; padding: 20px; position:absolute; left:0; top:40px; box-sizing: border-box; border : 0px solid #f9f9f9; }
   .tabmenu input:checked ~ label { border-bottom: 3px black solid; }
   .tabmenu input:checked ~ .tabCon { display:block; }   
    
    
    /* 전체 적용 */
   a { text-decoration: none; color: black; }
   a:hover { text-decoration: none; color: black; } 
   .container { margin-top: 50px; margin-bottom: 0; padding-bottom: 0; }
      
     /* 프로필 단 */
   .intro { width: 260px; height: 70px; box-sizing: border-box; border: solid 2px #1E90FF; border-radius: 5px; font-size: 16px; resize: both; }
   #modify-btn{ margin: 0 0 10px 3px; padding: 0 5px 0 5px; color: black; font-size: 16px; }      
   #modify-btn:hover { background-color: black; color: white; }      
   #userInfo-btn { margin: 0 0 0 3px; padding: 0 5px 0 5px; color: black; font-size: 16px; }
   #userInfo-btn:hover { background-color: black; color: white; }      
   #profile-section { border: 0px solid black; width: 300px; margin-left:90px; }      
   #profile-product { border: 0px solid black; width: 1000px; height: 1800px; margin-right:-200px; }  
   .profile-img { margin-top : 100px; }
   /*프로필*/
   #profile-section { border: 0px solid black; padding: 30px; }   
   #profile-section .profile-img { width: 150px; height: 150px; border-radius: 70%; overflow: hidden; margin-left: 60px }   
   #profile-section .profile-img-img { width: 100%; height: 100%; object-fit: cover; }   
   .profile-txt div { margin: 1em;}   
   .profile-txt div:first-child { text-align: center; font-weight: 900; margin-bottom: 2em; }   
   .profile-txt div:nth-child(2) { text-align: center; margin-bottom: 3em; }   
   .product #left { text-align: left; }
   .product #right { float: right; text-align: right; }
   .review #left2 { text-align: left; }
   .review #right2 { float: right; text-align: right; }
   /* 탭메뉴 단 (전체) */
   
   
   /* 탭메뉴 단 (세부내용) */  
   .review-section {margin-top: 50px; margin-left: 10px; padding-bottom: 20px; }   
   .review-div { border-color: #d7d7d7; border-style: solid; border-width: 0 0 0.5px 0; width: 870px; margin-left: -40px; }
   .noReviews { float: left; margin-left: -10px;}
   
   /*리뷰 작성자 프로필 동그랗게 만들기*/
   .member-image { position: relative; border: 0px solid black; padding: 30px; }   
   .member-image .member-image-box { width: 70px; height: 70px; border-radius: 70%; overflow: hidden; margin-left: 10px; margin-top: 10px; }   
   .member-image img { width: 100%; height: 100%; object-fit: cover; float: left; }
      
   /*작성자 닉네임, 작성날짜, 내용 위치*/
   .member-image .title {color: #363333; font-weight: 600; font-size: 1.1em; text-align: left; margin-top: -60px; margin-left: 5em; }   
   .member-image .time-ago { text-align: left; margin-top: 0; margin-left: 10em; }   
   .member-box { text-align: left; /* margin-top: 2em; */ margin-left: 7em; margin-bottom: 2em; }   
   .item-review-title {display: inline-block; border: 1px solid lightgray; padding: 7px; padding-right: 10px; color: gray; margin-bottom: 1em; /* margin-top: -1em; */}   
   .text-truncate { margin-top: 30px;  font-weight: 600; font-size: 1em;}
   .review-list { max-width:100%; margin: 0 auto; position:relative; }
   .review-list ul{ position: relative; }   
   .review-list ul li { width: 90%; } 
   /* 탭메뉴 단 (페이징) */      
   /*   
   #page { border: solid 1px #d7d7d7; border-radius: 0.2rem; color: #7d7d7d; text-decoration: none; text-transform: uppercase;
      display: inline-block; text-align: center; padding: 0.5rem 0.9rem; }  
   .pagination { justify-content: center; margin: 30px 0 50px 0; } 
   .pagination > li > a { margin-right: 5px; color: black; } 
   */
   .page { margin-top: 60px; margin-bottom: 243px;   }
   #page2 {position: absolute; left: 50%; }
   .pagination { justify-content: center;}  
   .pagination > li > a {  color: black; text-align: center; width:40px; }
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
               <img id="img" class="profile-img-img" src="http://localhost:8888/ezenmarket/tmpFiles/${profile.user_image }" alt="프로필이미지" />
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

               <div>
                  <span></span> <span></span>
               </div>

               <div class="product">
                  <span id="left">상품</span> <span id="right">${profile.postCount }</span>
               </div>
               <div class="review">
                  <span id="left2">거래후기</span> <span id="right2">${profile.reviewCount }</span>
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
                                    <span style="font-size: 1.2em; font-weight: 700; margin-left: -2px; ">상점 후기</span>
                                    <span style="color: crimson; font-weight: 700;">${profile.reviewCount }</span>
                                 </div>
                                 <hr>                                 
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