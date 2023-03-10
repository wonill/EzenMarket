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
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/mypage/review.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
        <div id="profile-product" class="col-9">
          <div class="container">
            <div class="row">
              <div class="col">
                <div class="tabmenu out-tabmenu">
                  <ul>
                    <li id="tab1" class="btnCon"> 
                      <input type="radio" name="tabmenu" id="tabmenu1" onclick="location.href='./?user_number=${user_number}'">
                      <label for="tabmenu1">상품</label>
                      <div class="tabCon" >
              
                      </div>
                      
                    </li>
                    <li id="tab2" class="btnCon">
                      <input type="radio" name="tabmenu" id="tabmenu2" checked>
                      <label for="tabmenu2">후기</label>
                      <div class="tabCon" >
                        <div class="review-section">
                          <span style="font-size: 1.2em; font-weight: 700;">후기</span>
                          <span style="color: crimson; font-weight: 700;">1</span> <!--후기 등록될 때마다 숫자 증가해야 함-->
                        </div>
                        <hr>
                        <div class="review-body">
                          <div class="review-list">
                            <ul>
                              <li>
                              	<c:forEach items="${review }" var="review">
	                                <div class="member-image">
	                                  <div class="member-image-box">
	                                      <img src="${review.user_image }" >
	                                    
	                                  </div>
	                                  <a href="./sales_list?user_number=${review.user_number }">
	                                    <div class="title">${review.nickname }</div> <!--리뷰 작성자 닉네임-->
	                                  </a>
	                                </div>
	                                <div class="member-box">
	                                  <div class="item-review-title">${review.title }</div> <!--구매한 상품 이름-->
	                                  <span class="description" width="0">
	                                    <span> 
	                                      <span class="d-inline-block text-truncate" style="max-width: 300px;">${review.review_content }</span>
	                                      <span></span>
	                                      <span></span>                                    
	                                    </span>
	                                  </span>
	                                </div>
	                             </c:forEach>
	                             <c:forEach begin="${pagination_start }" end="${pagination_end }" var="i">
			                      <a href="./review?user_number=${user_number }&page=${i }">${i }</a>
			                    </c:forEach>
                              </li>
                              <li></li>
                              <li></li>
                            </ul>
                          </div>
                        </div>                  
                      </div>
                    </li> 
                        
                    <li id="tab3" class="btnCon"><input type="radio" name="tabmenu" id="tabmenu3" onclick="location.href='./zzim?user_number=${user_number}'">
                      <label for="tabmenu3">찜</label>
                      <div class="tabCon" >
                      
                      </div>
                      
                    </li>
                  </ul>
                </div>
              </div>
            </div>
       </div>
    </div>


    <script src="https://kit.fontawesome.com/d04567b543.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
  </html>