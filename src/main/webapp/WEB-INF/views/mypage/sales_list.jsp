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
</head>
<body>
    
  <header>
    <div class="Top">
        <a class="top1" href="">EzenMarket 신규 가입시 <span style="color: orangered;">10%</span> 할인 쿠폰 | </a>
        <a class="top2" href="">[삼성카드]<span style="color: orangered">12만원</span> 캐시백 프로모션</a>
        <a class="top" href=""></a>
    </div>    
    <nav class="topMenu">
      <ul>
        <li><i class="fa-solid fa-door-open"></i><a class="menuLink" href=""> 로그인</a></li>
        <li><i class="fa-solid fa-user"></i><a class="menuLink" href="">  마이페이지</a></li>
        <li><i class="fa-solid fa-heart"></i><a class="menuLink" href=""> 관심 상품</a></li>
        <!-- <li>SHOPPING BAG</li> -->
      </ul>
    </nav>
    <nav class="head">
      <a id="logo" href="">EzenMarket</a>
      <input id="search" type="search">
    </nav>    
  </header>

  <header>
    <div class="container">
      <div id="header" class="row">header</div>
    </div>
  </header>

  <!--본문(해당회원 마이페이지)-->
  <div class="container"> <!--container start-->
    <div class="row"> <!--row start-->

      <div id="profile-section" class="col-3"> <!--profile-section start-->
        <div class="profile-img">
          <img class="profile-img-img" src="https://pbs.twimg.com/profile_images/1536535827257630720/VUZLhP8M_400x400.jpg" alt="프로필이미지"/>
        </div>
        <div class="profile-txt">
          <div>춘식이</div>
          <div>
            <span>팔로워 0</span>
            <span class="vr"></span>
            <span>팔로잉 0</span>
          </div>
          <div class="product">
            <span id="left">상품</span>
            <span id="right">2</span>
          </div>
          <div class="review">
            <span id="left2">거래후기</span>
            <span id="right2">★★★★★ 3</span>
          </div>
          <div>
            네고 안받아요<br>
            택배 얘기 안할시 착불로 보내요<br>
            여러개 사시면 무료배송<br>
            환불x 사이즈문의 찔러보기 차단<br>
          </div>
        </div>
        <div>
          <button id="follow-btn" type="button" class="btn btn-outline-secondary" onclick = "location.href = '' ">
            <i class="fa-solid fa-user-plus"></i>팔로우</button>
          <button id="setting-btn" type="button" class="btn btn-outline-secondary" onclick = "location.href = '' ">상점관리</button>        
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
                    <input type="radio" checked name="tabmenu" id="tabmenu1" onclick="location.href='mypage-상품.html'">
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
                        <div class="col-4"> <!-- 1 of 3 start -->
                          <a class="product" href="#">
                            <div class="card" style="width: 18rem;">
                              <img src="https://media.bunjang.co.kr/product/214435342_1_1676043519_w360.jpg" class="card-img-top" alt="...">
                              <div class="card-body">
                                <span class="d-inline-block text-truncate card-text" style="max-width: 150px;">갤럭시S9+</span><br>
                                <b>60,000원</b>
                                <button class="up-btn" onclick="location.href='#'">Up</button>
                                <button class="modify-btn" onclick="location.href='#'">수정/삭제</button>
                              </div>
                            </div>
                          </a>
                        </div> <!-- 1 of 3 end-->
                        <div class="col-4"> <!-- 2 of 3 start-->
                          <a class="product" href="#">
                            <div class="card" style="width: 18rem;">
                              <img src="https://media.bunjang.co.kr/product/182745803_1_1675078485_w360.jpg" class="card-img-top" alt="...">
                              <div class="card-body">
                                <span class="d-inline-block text-truncate card-text" style="max-width: 150px;">비바스튜디오 숏패딩</span><br>
                                <b>50,000원</b>
                                <button class="up-btn" onclick="location.href='#'">Up</button>
                                <button class="modify-btn" onclick="location.href='#'">수정/삭제</button>
                              </div>
                            </div>
                          </a>
                        </div> <!-- 2 of 3 end-->
                        <div class="col-4"> <!-- 3 of 3 start-->
                          <a class="product" href="#">
                            <div class="card" style="width: 18rem;">
                              <img src="https://media.bunjang.co.kr/product/200107753_1_1663933815_w360.jpg" class="card-img-top" alt="...">
                              <div class="card-body">
                                <span class="d-inline-block text-truncate card-text" style="max-width: 150px;">인테리어 스탠드</span><br>
                                <b>20,000원</b>
                                <button class="up-btn" onclick="location.href='#'">Up</button>
                                <button class="modify-btn" onclick="location.href='#'">수정/삭제</button>
                              </div>
                            </div>
                          </a>
                        </div>  <!-- 3 of 3 end-->
                      </div>

                    </div>               
                    </div>                      
                  </li>

                  <li id="tab2" class="btnCon"><input type="radio" name="tabmenu" id="tabmenu2" onclick="location.href='mypage-후기.html'">
                    <label for="tabmenu2">후기</label>
                    <div class="tabCon" >                      
                    </div>                    
                  </li>  

                  <li id="tab3" class="btnCon"><input type="radio" name="tabmenu" id="tabmenu3" onclick="location.href='mypage-찜.html'">
                    <label for="tabmenu3">찜</label>
                    <div class="tabCon" >                    
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


<br><br><br><br><br>
<hr>
<br><br><br><br><br>


<!--본문(마이페이지 타인이 볼때 내정보수정 버튼 안보이게)-->
<div class="container"> <!--container start-->
  <div class="row"> <!--row start-->
  <!--본문(해당회원 마이페이지)-->
  <div class="container">
    <div class="row"> 

      <div id="profile-section" class="col-3"> <!--profile-section start-->
        <div class="profile-img">
          <img class="profile-img-img" src="https://pbs.twimg.com/profile_images/1536535827257630720/VUZLhP8M_400x400.jpg" alt="프로필이미지"/>
        </div>
        <div class="profile-txt">
          <div>춘식이</div>
          <div>
            <span>팔로워 0</span>
            <span class="vr"></span>
            <span>팔로잉 0</span>
          </div>
          <div class="product">
            <span id="left">상품</span>
            <span id="right">2</span>
          </div>
          <div class="review">
            <span id="left2">거래후기</span>
            <span id="right2">★★★★★ 3</span>
          </div>
          <div>
            네고 안받아요<br>
            택배 얘기 안할시 착불로 보내요<br>
            여러개 사시면 무료배송<br>
            환불x 사이즈문의 찔러보기 차단<br>
          </div>
        </div>
        <div>
          <button id="follow-btn" type="button" class="btn btn-outline-secondary" onclick = "location.href = '' " style="margin-left: 75px;">
            <i class="fa-solid fa-user-plus"></i>
            팔로우
          </button>                 
        </div>
      </div> <!--profile-section end-->
    

    <!-- 마이페이지 (타인이 볼 때 상품목록만 띄우기)-->
    <div id="profile-product" class="col-9">
      <div class="container">
        <div class="row">
          <div class="col"> 
            <div class="container">
              <div class="row">
                <div class="col">
                  <div class="product-section">
                    <span style="font-size: 1.2em; font-weight: 700;">전체</span>
                    <span style="color: crimson; font-weight: 700;">1</span> <!--후기 등록될 때마다 숫자 증가해야 함-->
                  </div>
                </div>                                               
              </div>
              <br>  
              <div class="row">
                <div class="col-4">
                  <a class="product" href="#">
                    <div class="card" style="width: 18rem;">
                      <img src="https://media.bunjang.co.kr/product/214435342_1_1676043519_w360.jpg" class="card-img-top" alt="...">
                      <div class="card-body">
                        <span class="d-inline-block text-truncate card-text" style="max-width: 150px;">갤럭시S9+</span>
                        <h3>60,000원</h3>
                      </div>
                    </div>
                  </a>
                </div>
                <div class="col-4">
                  <a class="product" href="#">
                    <div class="card" style="width: 18rem;">
                      <img src="https://media.bunjang.co.kr/product/182745803_1_1675078485_w360.jpg" class="card-img-top" alt="...">
                      <div class="card-body">
                        <span class="d-inline-block text-truncate card-text" style="max-width: 150px;">비바스튜디오 숏패딩</span>
                        <h3>50,000원</h3>
                      </div>
                    </div>
                  </a>
                </div>
                <div class="col-4">
                  <a class="product" href="#">
                    <div class="card" style="width: 18rem;">
                      <img src="https://media.bunjang.co.kr/product/200107753_1_1663933815_w360.jpg" class="card-img-top" alt="...">
                      <div class="card-body">
                        <span class="d-inline-block text-truncate card-text" style="max-width: 150px;">인테리어 스탠드</span>
                        <h3>20,000원</h3>
                      </div>
                    </div>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>







  <!--푸터-->
  <footer>

    <div class="container">
      <div id="footer" class="row">footer</div>
    </div>

  </footer>


  <script src="https://kit.fontawesome.com/d04567b543.js" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>