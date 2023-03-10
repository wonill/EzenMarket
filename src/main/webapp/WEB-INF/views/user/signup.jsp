<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!DOCTYPE html>
    <html lang="ko">

    <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
      <script src="https://code.jquery.com/jquery-2.2.4.min.js" ></script>

      <style>
       
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
        #logo>img {
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
        #sign_up_box {
          margin-left: 430px;
        }
      </style>


    </head>
    <body class="white">
      <div class="container">
        <main>
          <div class="py-5 text-center" id="logo">
            <img class="d-block mx-auto mb-4"
              src="https://t4.ftcdn.net/jpg/03/48/11/53/360_F_348115379_nLV6ulz8NDrY7McW2z6J6m7AI5ciBN3p.jpg" alt=""
              width="72" height="57">
            <h2>Ezen Market</h2>
          </div>


          <div class="col-md-7 col-lg-8" id="sign_up_box">
            <form class="needs-validation" novalidate>
            
              <div class="col-sm-6">
                <label for="name" class="form-label">이름 <span class="text-muted"></span></label>
                <input type="text" name="user_Name" form="user_signup" class="form-control" id="name">
              </div>

              <div class="6">
                <label for="firstName" class="form-label">아이디<span class="text-muted"></span></label>
                <div class="col-sm-8">
                  <div class="row">
                    <div class="col">
                      <input type="text" name="user_ID" form="user_signup" class="form-control" id="user_ID">
                    </div>
                    <div class="col">
                      <button type="button" class="btn btn-secondary" onclick="testID();">아이디 검사</button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="col-sm-6">
                <label for="lastName" class="form-label">비밀번호</label>
                <input type="password" name="user_PW" form="user_signup" class="form-control" id="user_PW" placeholder="" value="" required>
                <div id="checkPW" style="color:red;"></div>
                <div class="invalid-feedback">
                  Valid last name is required.
                </div>
              </div>

              <div class="col-sm-6">
                <label for="check_PW" class="form-label">비밀번호 확인</label>
               
                  <input type="password" class="form-control" id="check_PW" required>
                  <div id="check_PW2" style="color:red;"></div>
                  <div class="invalid-feedback">
                    Your username is required.
                  </div>
                
              </div>

              <div class="6">
                <label for="nickName" class="form-label">닉네임<span class="text-muted"></span></label>
                <div class="col-sm-8">
                  <div class="row">
                    <div class="col">
                      <input type="text" name="nickname" form="user_signup" class="form-control" id="nickname">
                    </div>
                    <div class="col">
                      <button type="button" class="btn btn-secondary" onclick="testNickname();">닉네임 검사</button>
                    </div>
                    <div class="invalid-feedback">
                      Valid last name is required.
                    </div>
                  </div>
                </div>
              </div>
				
              <div class="col-sm-6">
                <label for="name" class="form-label">휴대폰 번호<span class="text-muted"></span></label>
                <input type="text" name="phoneNumber" form="user_signup" class="form-control" id="phoneNumber">
                <div id="checkPhone" style="color:red;"></div>
              </div>
			
              <div class="6">
                <label for="email" class="form-label">주소입력 <span class="text-muted"></span></label>
                <div class="col-sm-8">
                  <div class="row">
                    <div class="col">
                      <input type="text" name="address" form="user_signup" class="form-control" id="sample5_address" placeholder="주소">
                      <div id="map" style="width:300px;height:300px;margin-top:10px;display:none"></div>
                    </div>
                    <div class="col">
                 		  <input type="button" class="btn btn-secondary" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>   
                    </div>
                  </div>
                </div>
              </div>
              
              
                <div class="6">
                  <label for="email" class="form-label">이메일 인증 <span class="text-muted"></span></label>
                  <div class="col-sm-8">
                    <div class="row">
                      <div class="col">
                        <input type="text" name="email" form="user_signup" class="form-control" id="userEmail" placeholder="you@example.com">
                      </div>
                      <div class="col">
                        <button type="button" class="btn btn-secondary" id="mail-Check-Btn" onclick="checkEmail()">인증번호 받기</button>
                      </div>
                    </div>
                  </div>
                </div>
                <br>
                <div class="6">
                  <div class="col-sm-8">
                    <div class="row"> 
                      <div class="col">
                        <input type="text" class="form-control mail-check-input" id="certification" placeholder="인증번호를 입력하세요"/>
                      </div>
                      <div class="col">
                        <input id="code" type="hidden" value ="">
                        <button type="button" class="btn btn-secondary" id="mail-Check-Num" onclick="checkNum()">인증번호 확인</button>
                      </div>
                    </div>
                  </div>
                </div>
              
                
              
              <br>
			  
            </form>
            <form id="user_signup" action="./signup" method="POST">
              <div class="sign_up_btn">
                <button id="checkInfo" class="col-sm-6 btn btn btn-dark btn-lg" type="submit">가입하기</button>
              </div>
            </form>
          </div>
        </main>
      </div>
      

      <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">&copy; 2017–2022 Company Name</p>
        <ul class="list-inline">
          <li class="list-inline-item"><a href="#">Privacy</a></li>
          <li class="list-inline-item"><a href="#">Terms</a></li>
          <li class="list-inline-item"><a href="#">Support</a></li>
        </ul>
      </footer>

	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=e47856cfcf539f7992f903a405faeb07&libraries=services"></script>
    
    <script>
      let checkNumber = false;
      function checkNum(){
        let code = document.getElementById('code').value;
        let certificateNum = document.getElementById('certification').value;
        console.log('code:' + code);
        console.log('certificateNum:' + certificateNum)
        if (code == certificateNum){
          console.log(certificateNum);
          alert('인증 성공하셨습니다.')
          checkNumber = true;
          return true;
        } else {
          alert('인증 실패하셨습니다. 메일을 다시 확인해주세요!')
          return false;
        }
      }
      function checkEmail() {
        let email = $('#userEmail').val();
        let certificateNum = $('certification').val;
        let certification = $('certification');
        let container = document.getElementById('container');
        let code = document.getElementById('code')
        const RegExp = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
        
        if (!RegExp.test(email) || email == ""){
          alert('올바른 이메일을 입력해주세요')
          return false;
        } else {
          alert('인증메일 전송!')
          $.ajax({
          type : "POST",
          url : "./noticeMail",
          headers : {
            'Content-Type' : 'application/json'
          },
          dataType : "text",
          data : email,
          async: false,
          success : function(result){
            alert('전송성공!');
            code.value = result;
            return true;
          },
          error : function(){
            alert('전송 요청 실패: 이메일이 존재하지 않습니다.');
            return false;
          }
        });
        }
      }
      let checkNick = false;
      let nickName = document.getElementById('nickname');
      function testNickname(){
        const RegXep = /^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{2,16}$/;
      
        if(!RegXep.test(nickName.value) || nickName.value == ""){
          alert("사용불가 2~16자 이하 영어, 숫자, 한글로 구성");
          return false;
        } else {
          var nickname = $('#nickname').val();
            $.ajax({
                url:'./nickCheck', //Controller에서 요청 받을 주소
                type:'post', //POST 방식으로 전달
                headers : {
         			 'Content-Type' : 'application/json'
         		    },
                dataType: 'text',
                data:nickname,
                async: false,
                success:function(result){ //컨트롤러에서 넘어온 cnt값을 받는다 
                    if(result == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
                      alert("사용 가능한 닉네임입니다.");
                      checkNick = true;
                      return true;
                    } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                      alert("이미 존재하는 닉네임입니다. 다시 입력해주세요.");
                      return false;
                    }
                },
                error:function(){
                    alert("에러입니다");
                    return false;
                }
            });
        }
      }
      let checkID = false;
      let userID = document.getElementById('user_ID');
      function testID(){
        const RegExp = /^[a-zA-Z0-9]{4,12}$/;
        
        if(!RegExp.test(userID.value) || userID.value == ""){
          alert("사용불가 4~12자의 영문 대소문자와 숫자로만 입력하세요.");
          return false;
        } else {
          var id = $('#user_ID').val();
            $.ajax({
                url:'./idCheck', //Controller에서 요청 받을 주소
                type:'post', //POST 방식으로 전달
                headers : {
         			 'Content-Type' : 'application/json'
         		    },
                dataType:'text',
                data: id,
                async: false,
                success:function(result){ //컨트롤러에서 넘어온 cnt값을 받는다 
                    if(result == '0'){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
                      alert("사용 가능한 아이디입니다.");
                      status.ID = true;
                      checkID = true;
                      return true;
                    } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                      alert("이미 존재하는 아이디입니다. 다시 입력해주세요.");
                      status.ID = false;
                      return false;
                    }
                },
                error:function(){
                    alert("에러입니다");
                    return false;
                }
            });
        }
      }
      let phoneNum = document.getElementById('phoneNumber');
      let checkPhone = document.getElementById('checkPhone');
      let checkPn = false;
      phoneNum.onblur = function phoneNumber(){
        const RegExp = /^(01[016789]{1})[0-9]{3,4}[0-9]{4}$/;
        if(!RegExp.test(phoneNum.value) || phoneNum.value == ""){
          checkPhone.innerHTML = '올바른 번호를 입력해주세요';
          return false;
        } else if(RegExp.test(phoneNum.value)){
          checkPhone.innerHTML = '';
          checkPn = true;
          return true;
        }
      }
        let userPW = document.getElementById('user_PW');
        let checkPW = document.getElementById('checkPW');
        let checkPw = false;
        userPW.onblur = function checkPw(){
          const RegExp = /^[a-zA-Z0-9]{4,12}$/;
          if(!RegExp.test(userPW.value) || userPW.value == ""){
            checkPW.innerHTML = '사용불가 4~12자의 영문 대소문자와 숫자로만 입력하세요.';
            return false;
          } else {
            checkPW.innerHTML = '';
            checkPw = true;
            return true;
          }
        };
        let check_PW = document.getElementById('check_PW');
        let check_PW2 = document.getElementById('check_PW2');
        check_PW.onblur = function matchPw(){
          if(userPW.value != "" && userPW.value == check_PW.value){
            check_PW2.innerHTML = '비밀번호가 일치합니다.';
            return true;
          } else {
            check_PW2.innerHTML = '비밀번호가 일치하지 않습니다.';
            return false;
          }
        };
        const address = document.getElementById('sample5_address');
        const name = document.getElementById('name');
        document.getElementById('user_signup').addEventListener('submit', function(e) {
          if(name.value == ''){
            e.preventDefault();
            name.focus();
            alert('이름을 입력해주세요');
          } else if(checkID == false){
            e.preventDefault();
            userID.focus();
            alert('아이디 검사를 다시 해주세요');
          } else if(checkNick == false){
            e.preventDefault();
            nickName.focus();
            alert('닉네임 검사를 다시 해주세요');
          } else if(checkPn == false){
            e.preventDefault();
            phoneNum.focus();
            alert('올바른 휴대폰 번호를 입력해주세요');
          } else if(address.value == ''){
            e.preventDefault();
            address.focus();
            alert('주소를 입력해주세요')
          } else if(checkNumber == false){
            e.preventDefault();
            alert('이메일인증을 해주세요')
          }
        });
       
      
    </script>
    
    <script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div
            mapOption = {
                center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
                level: 5 // 지도의 확대 레벨
            };
    
        //지도를 미리 생성
        var map = new daum.maps.Map(mapContainer, mapOption);
        //주소-좌표 변환 객체를 생성
        var geocoder = new daum.maps.services.Geocoder();
        //마커를 미리 생성
        var marker = new daum.maps.Marker({
            position: new daum.maps.LatLng(37.537187, 127.005476),
            map: map
        });
    
    
        function sample5_execDaumPostcode() {
           
            new daum.Postcode({
                oncomplete: function(data) {
                    var addr = data.address; // 최종 주소 변수
                    
                    // 주소 정보를 해당 필드에 넣는다.
                    document.getElementById("sample5_address").value = addr;
                    // 주소로 상세 정보를 검색
                    geocoder.addressSearch(data.address, function(results, status) {
                        // 정상적으로 검색이 완료됐으면
                        if (status === daum.maps.services.Status.OK) {
    
                            var result = results[0]; //첫번째 결과의 값을 활용
    
                            // 해당 주소에 대한 좌표를 받아서
                            var coords = new daum.maps.LatLng(result.y, result.x);
                            // 지도를 보여준다.
                            mapContainer.style.display = "block";
                            map.relayout();
                            // 지도 중심을 변경한다.
                            map.setCenter(coords);
                            // 마커를 결과값으로 받은 위치로 옮긴다.
                            marker.setPosition(coords)
                        }
                    });
                }
            }).open();
        }
    </script>
    
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>

    </html>