<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"> <!-- 부트스트랩-->
    

<style>
      a:link {
        text-decoration: none;
      }
      a {
        color: black;
      }
      
      
      
       .link-dark {
        margin-left: 70px;
        font-size: 15px;
        color: hsla(0, 1%, 15%, 0.651);
      } 
      .dropbarBtn {
  
        font-size: 20px;
        color: hsla(0, 0%, 0%, 0.651);
      }
  
	 #Category {
        /* overflow:visible; */
        float: left;
        margin-left: 200px;
        margin-top:  50px;
        
        /* box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15); */
      }
	
</style>
<title>카테고리</title>
</head>
<body>
 
		
	   <div class="flex-shrink-0 p-2 bg-white dropbar" id="Category" style="width: 220px;">
            <!-- <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom"> -->
              <svg class="bi pe-none me-2" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
              <span class="fs-5 fw-semibold"></span>
            <!-- </a> -->
            <ul class="list-unstyled ps-0">
            
               <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0= collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">
                의류
                </button>
              <li class="mb-1">
                <!-- collapse show 누르기 전에 보이는 것 -->
                <div class="collapse" id="home-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="category?category_id=1" class="link-dark d-inline-flex text-decoration-none rounded">남성의류</a></li>
                    <li><a href="category?category_id=2" class="link-dark d-inline-flex text-decoration-none rounded">여성의류</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
                 패션잡화
                </button>
                <div class="collapse" id="dashboard-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="category?category_id=3" class="link-dark d-inline-flex text-decoration-none rounded">신발</a></li>
                    <li><a href="category?category_id=4" class="link-dark d-inline-flex text-decoration-none rounded">가방</a></li>
                    <li><a href="category?category_id=5" class="link-dark d-inline-flex text-decoration-none rounded">시계</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button  class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
                  가구생활
                </button>
                <div class="collapse" id="orders-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="category?category_id=6" class="link-dark d-inline-flex text-decoration-none rounded">주방용품</a></li>
                    <li><a href="category?category_id=7" class="link-dark d-inline-flex text-decoration-none rounded">인테리어</a></li>
                    <li><a href="category?category_id=8" class="link-dark d-inline-flex text-decoration-none rounded">생필품</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#a-collapse" aria-expanded="false">
                 취미 컬렉션
                </button>
                <div class="collapse" id="a-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="category?category_id=9" class="link-dark d-inline-flex text-decoration-none rounded">건강용품</a></li>
                    <li><a href="category?category_id=10" class="link-dark d-inline-flex text-decoration-none rounded">반려용품</a></li>
                    <li><a href="category?category_id=11" class="link-dark d-inline-flex text-decoration-none rounded">사무용품</a></li>
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#sport-collapse" aria-expanded="false">
                  스포츠레저
                </button>
                <div class="collapse" id="sport-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="category?category_id=12" class="link-dark d-inline-flex text-decoration-none rounded">아웃도어</a></li>
                    <li><a href="category?category_id=13" class="link-dark d-inline-flex text-decoration-none rounded">운동화</a></li>
                  
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#baby-collapse" aria-expanded="false">
                 디지털기기
                </button>
                <div class="collapse" id="baby-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                  <li><a href="category?category_id=14" class="link-dark d-inline-flex text-decoration-none rounded">노트북/PC</a></li>
                    <li><a href="category?category_id=15" class="link-dark d-inline-flex text-decoration-none rounded">휴대전화</a></li>
                    <li><a href="category?category_id=15" class="link-dark d-inline-flex text-decoration-none rounded">주변기기</a></li>
                   
                  </ul>
                </div>
              </li>
              <li class="mb-1">
                <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed dropbarBtn" data-bs-toggle="collapse" data-bs-target="#acc-collapse" aria-expanded="false">
                  기타
                </button>
                <div class="collapse" id="acc-collapse">
                  <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                    <li><a href="category?category_id=17" class="link-dark d-inline-flex text-decoration-none rounded">기타용품</a></li>
                    
                  </ul>
                </div>
              </li>
            </ul>
          </div>
    
       
           <!-- 부트스트랩 자바스크립트-->
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        
          
    
	

</body>
</html>