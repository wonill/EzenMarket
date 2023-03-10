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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/mypage/zzim.css">
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
      
      .container {
        margin-top: 50px;
      }
      #zzim{
        z-index: 1;
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
                    <input type="radio" checked name="tabmenu" id="tabmenu1" onclick="location.href='./?user_number=${user_number}'">
                    <label for="tabmenu1">상품</label>
                    <div class="tabCon" >                      
                    </div>                    
                  </li>
                  <li id="tab2" class="btnCon"><input type="radio" name="tabmenu" id="tabmenu2" onclick="location.href='./review?user_number=${user_number}'">
                    <label for="tabmenu2">후기</label>
                    <div class="tabCon" >                      
                    </div>                    
                  </li>    
                  <li id="tab3" class="btnCon"><input type="radio" name="tabmenu" id="tabmenu3" checked>
                    <label for="tabmenu3">찜</label>
                    <div class="tabCon" >                        
                        <div class="zzim-section">
                          <span style="font-size: 1.2em; font-weight: 700;">전체</span>
                          <span style="color: crimson; font-weight: 700;">1</span> <!--후기 등록될 때마다 숫자 증가해야 함-->
                        </div>
                        <br> 
                      <div class="container">
                        <div class="row">
                        	<c:forEach items="${zzim }" var="zzim">
	                          <div class="col-4">
	                            <a class="product" href="../product?id=${zzim.post_Id }">
	                              <div class="card" style="width: 18rem;">
	                                <img src="${zzim.image_URL }" class="card-img-top" alt="...">
	                                <a href="./deleteZzim" onclick="deleteZzim()"><i id="zzim" class="fa-solid fa-heart"></i></a> <!--찜 목록 해제시 색상변경되어야 함-->                                                                                                
	                                <div class="card-body">
	                                  <span class="d-inline-block text-truncate card-text" style="max-width: 150px;">${zzim.title }</span>
	                                  <h3>${zzim.price }</h3>
	                                </div>
	                              </div>
	                            </a>
                              <br>
                          	  </div>
                          	</c:forEach>
                          	<c:forEach begin="${pagination_start }" end="${pagination_end }" var="i">
	                          <a id="page" href="./zzim?user_number=${user_number }&page=${i }">${i }</a>
	                        </c:forEach>
                        </div>
                      </div>                      
                    </div>
                  </li>
              </ul>              
            </div>
          </div>
        </div>
      </div>
    </div>
    <script>
      function deleteZzim() {
        alert('찜이 해제되었습니다.')
      }
    </script>
    <script src="https://kit.fontawesome.com/d04567b543.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
  </html>