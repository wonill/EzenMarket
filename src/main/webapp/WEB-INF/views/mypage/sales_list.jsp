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
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/mypage/product.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-2.2.4.min.js" ></script>
    <style>
      .intro {
      	  width: 260px;
          height: 70px;
          box-sizing: border-box;
          border: solid 2px #1E90FF;
          border-radius: 5px;
          font-size: 16px;
          resize: both;
      }
      #modify-btn{
        margin-top: 5px;
        margin-left: 5px;
        padding: 0 5px 0 5px;
        float: right;
        border: 1px black solid;
        border-radius: 3px;
        color: white;
        background-color: black;
      }
      
      .container{
        margin-top: 50px;
      }
      #page {
        border: solid 1px #d7d7d7;
        border-radius: 0.2rem;
        color: #7d7d7d;
        text-decoration: none;
        text-transform: uppercase;
        display: inline-block;
        text-align: center;
        padding: 0.5rem 0.9rem;
      }
    </style>
</head>
<body>
  <jsp:include page="../include/header.jsp"/> 
  <!--본문(해당회원 마이페이지)-->
  <hr>
  <div class="container"> <!--container start-->
    <div class="row"> <!--row start-->

      <div id="profile-section" class="col-3"> <!--profile-section start-->
        <div class="profile-img" id="imgContainer" >
          <img id="img" class="profile-img-img" src="https://pbs.twimg.com/profile_images/1536535827257630720/VUZLhP8M_400x400.jpg" alt="프로필이미지"/>
        </div>
        <div class="profile-img" id="modifyimgContainer" onclick="fileUploadAction();" style="display: none;">
        	<img id="modifyImg" class="profile-img-img" src="https://pbs.twimg.com/profile_images/1536535827257630720/VUZLhP8M_400x400.jpg" alt="">
    	  </div>
    	  <input type="file" id="input_imgs" style="display: none;"/>
        <div class="profile-txt">
          <div class="row">
            <div id="nick">${profile.nickname }</div>
            <input id="modifyNick" type="text" style="display: none;">
          </div>

          <div>
            <span></span>
            <span></span>
          </div>

          <div class="product">
            <span id="left">상품</span>
            <span id="right">${profile.postCount }</span>
          </div>
          <div class="review">
            <span id="left2">거래후기</span>
            <span id="right2">★★★★★ ${profile.reviewCount }</span>
          </div>
          
          <div id="intro" class="intro" style="margin-left: 10px; border: 0px;">${profile.user_intro }</div>
          <textarea id="modifyIntro"class="intro" style="display: none;"></textarea>
		  <c:choose>
		  <c:when test="${verified eq 'yes' }">
		  <button id="modify-btn" onclick="modifyProfile()" type="button" class="btn btn-outline-secondary" style="width: 95%; height: 40px; margin-right: 10px;">
            <i class="fa-solid fa-user-plus"></i>프로필수정
          </button>
		  </c:when>
		  </c:choose>
          
          <button id="modify-done-btn" onclick="modifyProfileDone()" style="display: none;">완료</button>
        </div>
      </div> <!--profile-section end-->
        

      <!-- 마이페이지 (본인)-->
      <div id="profile-product" class="col-9"> <!--tab start-->
        <div class="container">
          <div class="row">
            <div class="col">
              <div class="tabmenu out-tabmenu">

                <ul>
                  <li id="tab1" class="btnCon">
                    <input type="radio" checked name="tabmenu" id="tabmenu1">
                    <label for="tabmenu1">상품</label>
                    <div class="tabCon" >
                    <div class="container">

                      <div class="row"> 
                        <div class="col">
                          <div class="product-section" style="margin-bottom: 1em;">
                            <span style="font-size: 1.2em; font-weight: 700;">전체</span>
                            <span style="color: crimson; font-weight: 700;">1</span> <!--후기 등록될 때마다 숫자 증가해야 함-->
                          </div>
                        </div>                                               
                      </div>
                          
                      <div class="row">
                        <c:forEach items="${post }" var="post">
	                        <div class="col-4"> <!-- 1 of 3 start -->
	                          <a class="product">
	                            <div class="card" style="width: 18rem;">
	                              <img src=${post.image_URL } class="card-img-top" alt="..." style="width: 100%; height: 400px;">
	                              <div class="card-body">
	                                <span class="d-inline-block text-truncate card-text" style="max-width: 150px;">${post.title }</span><br>
	                                <b>${post.price }</b>
	                                <button class="up-btn" onclick="location.href='./update?post_Id=${post.post_Id }&user_number=${user_number }'">Up</button>
	                                <button class="up-btn" onclick="location.href='./product'">수정</button>
	                                <button class="up-btn" onclick="location.href='./delete?post_Id=${post.post_Id }&user_number=${user_number }'">삭제</button>
	                              </div>
	                            </div>
	                          </a>
	                          <br>
	                        </div> <!-- 1 of 3 end-->
                        </c:forEach>
                        <c:forEach begin="${pagination_start }" end="${pagination_end }" var="i">
                          <a id="page" href="./sales_list?user_number=${user_number }&page=${i }">${i }</a>
                        </c:forEach>
                      </div>

                    </div>               
                    </div>                      
                  </li>

                  <li id="tab2" class="btnCon"><input type="radio" name="tabmenu" id="tabmenu2" onclick="location.href='review?user_number=${user_number}'">
                    <label for="tabmenu2">후기</label>
                    <div class="tabCon">
                    </div>
                  </li>  

                  <li id="tab3" class="btnCon"><input type="radio" name="tabmenu" id="tabmenu3" onclick="location.href='zzim\?user_number=${user_number}'">
                    <label for="tabmenu3">찜</label>
                    <div class="tabCon">
                    </div>                    
                  </li>

                </ul>

              </div>
            </div>
          </div>
        </div>
      </div> <!--tab end-->
    </div> <!--container end-->
  </div> <!--row end-->

  <script>
    const imgContainer = document.getElementById('imgContainer');
    const modifyimgContainer = document.getElementById('modifyimgContainer');
    const nick = document.getElementById('nick');
    const modifynick = document.getElementById('modifyNick');
    const intro = document.getElementById('intro');
    const modifyintro = document.getElementById('modifyIntro');
    const nickbtn = document.getElementById('modify-btn');
    const nickdonebtn = document.getElementById('modify-done-btn');  
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
    }
    
    function modifyProfileDone(){
      const RegXep = /^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{2,16}$/;
        if(!RegXep.test(modifynick.value) || modifynick.value == ""){
          alert("사용불가 2~16자 이하 영어, 숫자, 한글로 구성");
          return false;
        } else if(modifynick.value != nick.innerText){
          var nickname = modifynick.value;
          var userintro = modifyintro.value;
            $.ajax({
                url:'./modifynick', //Controller에서 요청 받을 주소
                type:'post', //POST 방식으로 전달
                data:{name:nickname, intro:userintro, img:document.getElementById('modifyImg').src},
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
              modifynick.style.display="none";
              nickdonebtn.style.display = "none";
              modifyintro.style.display= "none";
              modifyimgContainer.style.display="none";
              nick.innerText = modifynick.value;
              intro.innerText = modifyintro.value;
              document.getElementById('img').src = document.getElementById('modifyImg').src;
              nick.style.display = "inline";
              nickbtn.style.display = "inline";
              intro.style.display = "inline";
              imgContainer.style.display="block";
        }
      }
  </script>
  
  <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/mypage/fileupload.js" charset="utf-8"></script>
  <script src="https://kit.fontawesome.com/d04567b543.js" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>