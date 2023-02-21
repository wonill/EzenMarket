<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">


    <style>

.Top {
        /* display: flex;
        justify-content: space-around; */
        /* margin-left: 80%;         */
        /* margin-top: 15px; */

        border: 4px solid black;
        background-color: black;
     
      }

      .top1 {

        margin-left: 35%;
        color: white;
        font-size: 15px;
        font-weight: bold;   
      }
      
      .top2 {
        font-weight: bold;   
        color: white;
        font-size: 15px;   
      }
      
      /* topMenu의 ID를 가진 태그 안에 <ul> 태그 안에 <li> 태그의 스타일을 지정 */
      .topMenu ul li {   

        list-style: none;
        color: hsl(0, 1%, 27%);
        float: right;
        margin-right: 30px;
      }

     #logo {
        font-size: 40px;
        font-family: 'Knewave', cursive;
      }
      

      a:link {
        text-decoration: none;
      }

      a {
        color: black;
      }





    #logo > img{
      
      top: 50%;
      left: 50%;
      width: 20%;
      height: 20%;
      
      
    }  

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
          
        }
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: white;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      
      #sign_up_box{

        margin-left: 430px;

      }

    </style>

    
</head>

<header>
      
   <div class="Top">
      <a class="top1" href="">EzenMarket 신규 가입시 <span style="color: orangered;">10%</span> 할인 쿠폰 | </a>
      <a class="top2" href="">[삼성카드]<span style="color: orangered">12만원</span> 캐시백 프로모션</a>
      <a class="top" href=""></a>
   </div>
   
   <nav class="topMenu">
     <ul>
      <li><i class="fa-solid fa-door-open"></i><a class="menuLink" href="signin"> 로그인</a></li>
      <li><i class="fa-solid fa-user"></i><a class="menuLink" href="mypage/">  마이페이지</a></li>
      <li><i class="fa-solid fa-heart"></i><a class="menuLink" href=""> 관심 상품</a></li>
      <!-- <li>SHOPPING BAG</li> -->
     </ul>
   </nav>

   <nav class="head">
     <a id="logo" href="">EzenMarket</a>
     <input id="search" type="search">
   </nav>


   </header>





<body class="white" >
    
    <div class="container">
      <main>
        <div class="py-5 text-center" id="logo">
          <img class="d-block mx-auto mb-4" src="https://t4.ftcdn.net/jpg/03/48/11/53/360_F_348115379_nLV6ulz8NDrY7McW2z6J6m7AI5ciBN3p.jpg" alt="" width="72" height="57">
          <h2>Ezen Market</h2>
        </div>


          <div class="col-md-7 col-lg-8" id="sign_up_box">
            <form class="needs-validation" novalidate>
              
                <div class="col-sm-6">
                  <label for="firstName" class="form-label">아이디</label>
                  <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                  <div class="invalid-feedback">
                    Valid first name is required.
                  </div>
                </div>
                
                <div class="col-sm-6">

                  <label for="lastName" class="form-label">비밀번호</label>
                  <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                  <div class="invalid-feedback">
                    Valid last name is required.
                  </div>
                </div>
    
                <div class="col-sm-6">
                  <label for="username" class="form-label">비밀번호 확인</label>
                  <div class="input-group has-validation">
                    <input type="text" class="form-control" id="username" required>
                  <div class="invalid-feedback">
                      Your username is required.
                    </div>
                  </div>
                </div>
    
                <div class="col-sm-6">
                  <label for="name" class="form-label">이름 <span class="text-muted"></span></label>
                  <input type="name" class="form-control" id="name">
                </div>

                <div class="col-sm-6">
                  <label for="name" class="form-label">휴대폰 번호 <span class="text-muted"></span></label>
                  <input type="name" class="form-control" id="name">
                </div>


                <div class="6">
                  <label for="email" class="form-label">이메일 인증 <span class="text-muted"></span></label>
               

                  <div class="col-sm-8">
                  <div class="row"> 
                  <div class="col">
                <input type="email" class="form-control" id="email" placeholder="you@example.com">
                  </div>
                  <div class="col">
                <button type="submit" class="btn btn-secondary">인증번호 받기</button>
                  </div>
                  </div>
                </div>
              </div>

                <div class="col-sm-6">
                  <label for="name" class="form-label"><span class="text-muted"></span></label>
                  <input type="name" class="form-control" id="name" placeholder="인증번호를 입력하세요">
                </div><br>

                <div class="sign_up_btn">
              <button class="col-sm-6 btn btn btn-dark btn-lg" type="submit">가입하기</button>
                </div>  
            </form>
          </div>

        </div>
      </main>
    
      <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">&copy; 2017–2022 Company Name</p>
        <ul class="list-inline">
          <li class="list-inline-item"><a href="#">Privacy</a></li>
          <li class="list-inline-item"><a href="#">Terms</a></li>
          <li class="list-inline-item"><a href="#">Support</a></li>
        </ul>
      </footer>
    
    
    
        <script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    
          <script src="checkout.js"></script>


          <script type="text/javascript">
            /**
             * 멀티파일 업로드
             */
            function readMultipleImage(input) {
                const multipleContainer = document.getElementById('multipleContainer')
                
                if(input.files) {
                    console.log(input.files)
                    const fileArr = Array.from(input.files)
                    const $colDiv1 = document.createElement('div')
                    const $colDiv2 = document.createElement('div')
                    $colDiv1.classList.add('column')
                    $colDiv2.classList.add('column')
                    fileArr.forEach((file, index) => {
                        const reader = new FileReader()
                        const $imgDiv = document.createElement('div')   
                        const $img = document.createElement('img')
                        $img.classList.add('image')
                        const $label = document.createElement('label')
                        $label.classList.add('image-label')
                        $label.textContent = file.name
                        $imgDiv.appendChild($img)
                        $imgDiv.appendChild($label)
                        reader.onload = e => {
                            $img.src = e.target.result
                            
                            //$imgDiv.style.width = ($img.naturalWidth) * 0.2 + "px"
                            //$imgDiv.style.height = ($img.naturalHeight) * 0.2 + "px"
                        }
                        
                        console.log(file.name)
                        if(index % 2 == 0) {
                            $colDiv1.appendChild($imgDiv)
                        } else {
                            $colDiv2.appendChild($imgDiv)
                        }
                        
                        reader.readAsDataURL(file)
                    })
                    multipleContainer.appendChild($colDiv1)
                    multipleContainer.appendChild($colDiv2)
                }
            }
            // 이벤트 리스너
            document.getElementById('inputMultipleImage').addEventListener('change', (e) => {
                readMultipleImage(e.target);
            })
            </script>





    
  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>