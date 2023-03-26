<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <script src="https://kit.fontawesome.com/d04567b543.js" crossorigin="anonymous"></script>
    <style>
        @font-face {
            font-family: 'SpoqaHanSansNeo-Regular';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SpoqaHanSansNeo-Regular.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

       

        .review_background{
            position: fixed;
            top: 0;
            left: 0;
            width: 1903px;
            height: 100vh; 

            background-color: rgba(0, 0, 0, 0.3);

            font-family: 'SpoqaHanSansNeo-Regular';
            vertical-align: top;           
            margin-bottom: 8px;
            font-weight: 400;
            
            z-index: -1;
            opacity: 0;
        }

        .review_show{
         opacity: 1;
         z-index: 11;
         transition: all 0.5s;

        }

        .review_window{
            width: 100%;
            height: 100%;
            position: relative;
        }

        .review_container{
            box-sizing: border-box;

            position: absolute;
            top: 70px;
            left: 670px;
            width: 600px;
            height: 720px;
            
            background-color: white;
            padding: 20px;
            overflow-y: scroll;
            overflow-x: hidden;

         }

        #review_title{
            position: absolute;
            
            font-size: 30px;
            font-weight: bold;

            top: 45px;
            left: 35px;
           
        }

        #pencil-icon {
            vertical-align: middle;
            color:darkgray;
        }
      

        #review_post_image{
            position: absolute;
            
            width: 100px;
            height: 100px;

            top: 100px;
            left: 35px;
			background-image: url('${postInfo.image_url}');
			background-size: cover;
            background-repeat: no-repeat;
            }

        #review_post{
            position: absolute;
            
            font-size: 28px;
            font-weight: bold;

            top: 110px;
            left: 165px;
        }

        #review_post_title{
            position: absolute;
            border: solid 0.2px rgb(223, 223, 223);
            padding: 5px 10px 5px 10px;
            top: 165px;
            left: 165px;
            font-size: 1.1em;
            
            max-width: 350px;
            
            overflow: hidden;  		
            text-overflow: ellipsis;  	
            white-space: nowrap; 		
            word-break:break-all;
        }

        fieldset{            
            border: solid 1px black;
            top: 500px;
            left: 100px;
        }



        .reviewContents {
            width: 500px;
            height: 150px;
            padding: 10px;
            box-sizing: border-box;
            border: solid 1.5px #D3D3D3;
            border-radius: 10px;
            font-size: 16px;
            resize: none;
            margin-left: 20px;

        }


        #review_submit_button{
            position: absolute;
            top:791px;
            left: 670px;
            width: 300px;
            height: 75px;
            border: 0;
            cursor: pointer;

            background-color: #D3D3D3;
            color: white;
            font-size: 1.8em;
            font-weight: bold;
            
        }

        #review_cancel{
            position: absolute;
            top:791px;
            left: 971px;
            width: 300px;
            height: 75px;
            border: 0;
            cursor: pointer;

            
            color: black;
            font-size: 1.8em;
            font-weight: bold;
        }


            /* 체크박스 인풋은 숨김처리*/
        .checkbox input {
            display: none;
        }

        /* 체크박스 테두리*/
        .checkbox_icon {
            display: inline-block;
            width: 20px;
            height: 20px;
            background-color: transparent;
            border: 2px solid #D3D3D3;           
            position: relative;
            cursor: pointer;
            top: 1.5px;
            margin-right: 5px;
            margin-left: 20px;
        
        }

        /* 체크박스 가상요소*/
        .checkbox_icon::before, .checkbox_icon::after {
            content: ''; /* 가상요소 필수값*/
            display: inline-block; /* 크기 지정*/
            width: 7px;
            height: 0; /* 체크박스가 체크가 되면 변화값으로 커지게 하기 위해 (일단 화면에는 나타나지 않음)*/
            background-color: black;
            position: absolute; /* 체크박스 테두리 기준으로 위치조정 가능*/
            transform-origin: left top; /* 기울기 지정, 기준점을 왼쪽 상단 모서리로 (기본값은 중심임)*/
        }

        /* 가상요소 before*/
        .checkbox_icon::before {
            top: 5px; /* 위치값 top*/
            left: -7px; /* 위치값 left*/
            transform: rotate(-45deg); /* 회전값*/
        }

        /* 가상요소 after */
        .checkbox_icon::after {
            top: 15px; /* 위치값 top*/
            left: 11px; /* 위치값 left*/
            transform: rotate(-135deg); /* 회전값*/
        }

        /* 체크되었을 때 테투리 설정*/
        .checkbox input:checked + .checkbox_icon {
            border-color: black;
        }

        /* 체크되었을 때 가상요소 before*/
        .checkbox input:checked + .checkbox_icon::before {
            height: 20px; /* 높이값 지정(체크가 어디까지 내려갈 것인지)*/
            transition: all 0.15s ease; /* 0.15초 변화시간 줌*/
        }

        /* 체크되었을 때 가상요소 after*/
        .checkbox input:checked + .checkbox_icon::after {
            height: 25px; /* 높이값 지정*/
            transition: all 0.15s ease 0.15s; /* 0.15초 변화시간 + 딜레이 시간 줌*/
        }

        .checkbox_text{
            vertical-align: 30%;
            font-size: 18px;
        }

        #myform fieldset{
            display: inline-block;
            direction: rtl;
            border:0;
        }
        #myform fieldset legend{
            text-align: right;
        }
        #myform input[type=radio]{
            display: none;
        }
        #myform .rate{
            font-size: 4em; 
            color: transparent;
            text-shadow: 0 0 0 #f0f0f0;
        
        }

        #myform input[type=radio]:checked ~ label{            
            text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
        }
        
        fieldset{
            margin-left: 85px;
            margin-bottom: 50px;
        }
      


    </style>
</head>
<body>


   
<div class="review_background">
   <div class="review_window">
      <div class="review_container">
      <div id="review_title"><i id="pencil-icon" class="fa-regular fa-pen-to-square"></i> 거래 후기</div>

      <div id="review_post_image"></div>
      <div id="review_post">거래한 상품</div>
      <div id="review_post_title">${postInfo.title}</div>


      <div style="margin-top: 270px; font-size: 1.8em; font-weight: 700; text-align: center;">${user.nickname }님,<br> ${myCurrentChatPartnerInfo.nickname }님과의 거래가 어떠셨나요?</div>
      <div style="margin-left: 205px;  margin-top: 30px; color: #D3D3D3;">별점을 선택하세요</div>


      <div name="myform" id="myform" method="post">

         <input type="hidden" name="reviewerType" value="seller" id="reviewerType">

         <fieldset>
            
            <input type="radio" name="reviewStar" value="5" id="rate1"><label
               for="rate1" class="rate">★</label>
            <input type="radio" name="reviewStar" value="4" id="rate2"><label
               for="rate2" class="rate">★</label>
            <input type="radio" name="reviewStar" value="3" id="rate3"><label
               for="rate3" class="rate">★</label>
            <input type="radio" name="reviewStar" value="2" id="rate4"><label
               for="rate4" class="rate">★</label>
            <input type="radio" name="reviewStar" value="1" id="rate5"><label
               for="rate5" class="rate">★</label>
         </fieldset>
    
   <div id="good_buyer">
      <div style="font-weight: 700; font-size: 1.5em; margin-left: 20px; margin-bottom: 40px;">어떤 점이 좋았나요?</div>

      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="무료로 나눠주셨어요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">무료로 나눠주셨어요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="상품상태가 설명한 것과 같아요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">상품상태가 설명한 것과 같아요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="상품설명이 자세해요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">상품설명이 자세해요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="좋은 상품을 저렴하게 판매해요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">좋은 상품을 저렴하게 판매해요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="시간 약속을 잘 지켜요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">시간 약속을 잘 지켜요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="응답이 빨라요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">응답이 빨라요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="친절하고 매너가 좋아요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">친절하고 매너가 좋아요.</span>
         </label>
      </div>


      <div style="font-weight: 700; font-size: 1.4em; margin: 40px 0 15px 20px;">따뜻한 거래경험을 알려주세요!</div>
      <div style="font-weight: 400; font-size: 1.1em; margin: 15px 0 30px 20px;">남겨주신 후기는 상대방의 프로필에 공개돼요.</div>
      
         
         <div>
            <textarea class="col-auto form-control reviewContents" type="text" name="reviewText" id="reviewBox1"
                  placeholder="여기에 작성해주세요(선택사항)"></textarea>
         </div>

   </div>






















   <div id="good_seller">
      <div style="font-weight: 700; font-size: 1.5em; margin-left: 20px; margin-bottom: 40px;">어떤 점이 좋았나요?</div>

      
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="제가 있는 곳까지 와서 거래했어요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">제가 있는 곳까지 와서 거래했어요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="시간 약속을 잘 지켜요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">시간 약속을 잘 지켜요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="응답이 빨라요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">응답이 빨라요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="친절하고 매너가 좋아요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">친절하고 매너가 좋아요.</span>
         </label>
      </div>


      <div style="font-weight: 700; font-size: 1.4em; margin: 40px 0 15px 20px;">구매자님께 감사 인사를 남겨보세요!</div>
      <div style="font-weight: 400; font-size: 1.1em; margin: 15px 0 30px 20px;">남겨주신 후기는 상대방의 프로필에 공개돼요.</div>
    
         
         <div>
            <textarea class="col-auto form-control reviewContents" type="text" name="reviewText" id="reviewBox2"
                  placeholder="여기에 작성해주세요(선택사항)"></textarea>
         </div>

   </div>














   <div id="bad_buyer">
      <div style="font-weight: 700; font-size: 1.5em; margin-left: 20px; margin-bottom: 40px;">어떤 점이 별로였나요?</div>

      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="시간 약속을 안 지켜요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">시간 약속을 안 지켜요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="채팅 메시지를 읽고도 답이 없어요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">채팅 메시지를 읽고도 답이 없어요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="원하지 않는 가격을 계속 요구해요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">원하지 않는 가격을 계속 요구해요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="예약만 하고 거래시간을 명확하게 알려주지 않아요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">예약만 하고 거래시간을 명확하게 알려주지 않아요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="거래 시간과 장소를 정한 후 연락이 안돼요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">거래 시간과 장소를 정한 후 연락이 안돼요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="약속 장소에 나타나지 않았어요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">약속 장소에 나타나지 않았어요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="거래 시간과 장소를 정한 후 거래 직전 취소했어요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">거래 시간과 장소를 정한 후 거래 직전 취소했어요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="상품 상태가 설명과 달라요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">상품 상태가 설명과 달라요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="반말을 사용해요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">반말을 사용해요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="불친절해요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">불친절해요.</span>
         </label>
      </div>


      <div style="font-weight: 700; font-size: 1.4em; margin: 40px 0 15px 20px;">아쉬웠던 점을 알려주세요!</div>
      <div style="font-weight: 400; font-size: 1.1em; margin: 15px 0 30px 20px;">남겨주신 후기는 상대방의 프로필에 공개돼요.</div>
      
         
         <div>
            <textarea class="col-auto form-control reviewContents" type="text" name="reviewText" id="reviewBox3"
                  placeholder="여기에 작성해주세요(선택사항)"></textarea>
         </div>


   </div>























   <div id="bad_seller">
      <div style="margin-bottom: 15px; margin-top: 15px;">어떤 점이 별로였나요?</div>

      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="시간 약속을 안 지켜요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">시간 약속을 안 지켜요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="채팅 메시지를 읽고도 답이 없어요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">채팅 메시지를 읽고도 답이 없어요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="원하지 않는 가격을 계속 요구해요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">원하지 않는 가격을 계속 요구해요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="예약만 하고 거래시간을 명확하게 알려주지 않아요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">예약만 하고 거래시간을 명확하게 알려주지 않아요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="거래 시간과 장소를 정한 후 연락이 안돼요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">거래 시간과 장소를 정한 후 연락이 안돼요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="약속 장소에 나타나지 않았어요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">약속 장소에 나타나지 않았어요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="거래 시간과 장소를 정한 후 거래 직전 취소했어요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">거래 시간과 장소를 정한 후 거래 직전 취소했어요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="단순 변심으로 환불을 요구해요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">단순 변심으로 환불을 요구해요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="반말을 사용해요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">반말을 사용해요.</span>
         </label>
      </div>
      <div>
         <label class="checkbox">
            <input type="checkbox" name="chk" value="불친절해요.">
            <span class="checkbox_icon"></span>
            <span class="checkbox_text">불친절해요.</span>
         </label>
      </div>


      <div style="font-weight: 700; font-size: 1.4em; margin: 40px 0 15px 20px;">아쉬웠던 점을 알려주세요!</div>
      <div style="font-weight: 400; font-size: 1.1em; margin: 15px 0 30px 20px;">남겨주신 후기는 상대방의 프로필에 공개돼요.</div>
      
         
         <div>
            <textarea class="col-auto form-control reviewContents" type="text" name="reviewText" id="reviewBox4"
                  placeholder="여기에 작성해주세요(선택사항)"></textarea>
         </div>


   </div>







  














      </div>
            
      
   </div>
   <button id="review_submit_button" onclick="reviewSubmit()">후기 남기기</button>
   <button id="review_cancel" onclick="reviewClose()">취소</button>

   </div>
</div>
   <script src="http://code.jquery.com/jquery-latest.js"></script>
   <script> 
   
      const good = document.getElementById('good');
      const bad = document.getElementById('bad');

      const reviewText = document.getElementsByName('reviewText');
      const review_submit_button = document.getElementById('review_submit_button');
      const review_cancel = document.getElementById('review_cancel');
 
      jQuery(document).ready(function(){
         $('#bad_buyer').hide();   
         $('#bad_seller').hide();   
          $('#good_buyer').hide();
          $('#good_seller').hide();

         $('input[type="checkbox"][name="chk"]').click(function(){          
    
            if ($(this).prop('checked')) {
               $('input[type="checkbox"][name="chk"]').prop('checked', false);
               $(this).prop('checked', true);
                    document.getElementById('review_submit_button').style.backgroundColor = 'black'
            }
         });


         $("input[name='reviewStar']").change(function(){

         

            
            for(i = 0; i < reviewText.length; i++){
               reviewText[i].value = '';
            }

            review_submit_button.style.backgroundColor = '#D3D3D3';

            if($("input[name='reviewStar']:checked").val() >= 3){
               if($("input[name='reviewerType']").val() == 'buyer'){
                  $('input[type="checkbox"][name="chk"]').prop('checked', false);
                  $('#bad_buyer').hide();
                  $('#bad_seller').hide();
                  $('#good_buyer').show();
                  $('#good_seller').hide();
                  
               } else if($("input[name='reviewerType']").val() == 'seller'){
                  $('input[type="checkbox"][name="chk"]').prop('checked', false);
                  $('#bad_buyer').hide();
                  $('#bad_seller').hide();
                  $('#good_buyer').hide();
                  $('#good_seller').show();
                  
               }

            } else if($("input[name='reviewStar']:checked").val() < 3){
               if($("input[name='reviewerType']").val() == 'buyer'){
                  $('input[type="checkbox"][name="chk"]').prop('checked', false);
                  $('#bad_buyer').show();
                  $('#bad_seller').hide();
                  $('#good_buyer').hide();
                  $('#good_seller').hide();
                  
               } else if($("input[name='reviewerType']").val() == 'seller'){
                  $('input[type="checkbox"][name="chk"]').prop('checked', false);
                  $('#bad_buyer').hide();
                  $('#bad_seller').show();
                  $('#good_buyer').hide();
                  $('#good_seller').hide();
                  
               }

            }
            
         });


      });

      function reviewSubmit(){

         var inputStar = $("input[name='reviewStar']:checked").val(); 
         var inputCheckbox = $("input[name='chk']:checked").val();
        
         if(!inputStar){
            alert('별점을 선택하세요');
            return;
         }

         if(!inputCheckbox){
            alert('후기 메세지를 선택하세요');
            return;
         }
         console.log('별점', inputStar);
         console.log('리뷰', inputCheckbox);

         var data = new FormData();

         data.append('reviewStar', inputStar);
         data.append('checkBoxReview', inputCheckbox);

        for(i = 0; i < reviewText.length; i++){
            if(reviewText[i].value != '' && reviewText[i].value){
               console.log('상세리뷰', reviewText[i].value);
               data.append('reviewDetail', reviewText[i].value);
            }
        }
        data.append('user_number', ${sessionScope.user_number})
        data.append('post_id', ${postInfo.post_id});
        
        const xhttp = new XMLHttpRequest();

  	    xhttp.addEventListener('readystatechange', (e) => {
  	      
  	       if(xhttp.readyState == 4 && xhttp.status == 200){
  	           
  	            console.log('요청 성공!', xhttp.responseText);
  	            
  	            review_submit_confirm_show();
  	       }
  	  
  	    });


  	   
  	    xhttp.open('POST', './review/submitReview');
  	  
  	    
  	    if(confirm("후기를 남기시겠습니까?") == true){
	  	    xhttp.send(data);    	    	
  	    }else{
  	    	return;
  	    }
    	  
    	  
         
         
      }  


      function reviewShow() {
    	  const xhttp = new XMLHttpRequest();

  	    xhttp.addEventListener('readystatechange', (e) => {
  	      
  	       if(xhttp.readyState == 4 && xhttp.status == 200){
  	           
  	    	   const responseResult = xhttp.responseText;
  	    	   
  	            console.log('요청 성공!', responseResult);
  	            
  	            if(responseResult == 'buyer' || responseResult == 'seller'){
  	            	document.querySelector(".review_background").className = "review_background review_show";
  	            	document.getElementById('reviewerType').value = responseResult;
  	            	
  	            } else if(responseResult == 0){
  	            	alert('권한이 없습니다.');
  	            } else if(responseResult == 2){
  	            	alert('이미 리뷰를 작성하셨습니다.')
  	            } else if(responseResult == -1){
  	            	alert('거래 완료된 상품이 아닙니다.')
  	            } else{
  	            
  	            	alert('에러입니다.');
  	            	
  	            };
  	       }
  	  
  	    });


  	   
  	    xhttp.open('POST', './review/reviewerCheck?user_number=' + ${sessionScope.user_number} + '&chatPartner=' + ${myCurrentChatPartnerInfo.user_number} +'&post_id=' + ${postInfo.post_id});
  	  
  	    
  	    xhttp.send();  
    	  
    	  
        
      }

      function reviewClose() {
        document.querySelector(".review_background").className = "review_background";
        chat_option_close();
      }
    
   </script>
   
</body>
</html>