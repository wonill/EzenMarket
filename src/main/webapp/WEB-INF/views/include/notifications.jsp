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
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>  
    <script src="https://code.jquery.com/jquery-1.8.3.min.js" integrity="sha256-YcbK69I5IXQftf/mYD8WY0/KmEDCv1asggHpJk1trM8=" crossorigin="anonymous"></script>
    <style>
        @font-face {
            font-family: 'SUIT-Regular';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Regular.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }
        * {
        box-sizing: border-box;
        font-family: 'SUIT-Regular';
        }
        
        #modalWrap {
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        padding-top: 550px;
        padding-left: 1503px;
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgba(221, 221, 221, 0.1); /* Black w/ opacity */
        display:none;
        }

        #modalContent{
            position: relative;
        }

        #modalBody {
        position: absolute;
        
        border: solid 1px rgba(221, 221, 221, 0.4);
        width: 350px;
        height: 400px;
        padding: 30px 30px;
        margin: 0;
        border-radius: 10px;
        background-color: #fff;
        overflow-y: scroll;
        -ms-overflow-style: none; /* 인터넷 익스플로러 */
        scrollbar-width: none; /* 파이어폭스 */
        }
        #modalBody::-webkit-scrollbar {
            display: none; /* 크롬, 사파리, 오페라, 엣지 */
        }
        #closeBtn {
        float:right;
        font-weight: bold;
        color: #777;
        font-size:25px;
        cursor: pointer;
        }
        #icon-alarm {
            font-size: 20px;
            vertical-align: bottom;
            color: rgb(255, 208, 0);
        }

        #modalScroll{
            margin-top: 0.75em;
            border-top: 0.2px solid #777;    
            padding: 20px;
            display: none;
            
            
        }

        #modalSub {
            margin-top: 0.75em;       

            display: flex;
            flex-direction: column-reverse;
        }
        .modalList {
            padding: 20px;        
            cursor: pointer;
            color: black;
        }
        .modalList:hover {
            background-color:  rgba(221, 221, 221, 0.4);    
        }
        .modalSub-noAlarm {
            text-align: center;
            margin-top: 30%;
            line-height: 200%;
            color: rgba(201, 201, 201);    
        }
        #no-alarm {
            font-size: 5em;
        }
        
        .bold_font{
        	display: inline;
        	font-weight: bold;
        }
        
        
      </style>
</head>
<body>

    <!-- 팝업띄우는 버튼 -->
   

    <!-- 모달 팝업창 -->
   
<div id="modalWrap">
    <div id="modalContent">
        <div id="modalBody">
          <div>
              <span id="closeBtn">&times;</span> <!-- 닫기 버튼 -->
              <b style="color: black;"><ion-icon id="icon-alarm" name="notifications"></ion-icon> 알림</b> <!-- 팝업창 내 글귀 --> 
          </div>
          <div id="modalScroll" style="color: black; font-weight: bold">스크롤 하면 아래로 내려갑니다 ୧⁎ᵕᴗᵕ⁎୨</div>
          <div id="modalSub">  
              <!-- 알람 있을 때 
              
              
            <div class="modalList" style="font-weight: bold;">"철철철수"님으로부터 후기가 도착했습니다</div>
            <div class="modalList" style="color: rgb(164, 163, 163);">"짱짱인재"님으로부터 채팅이 있습니다</div>
            <div class="modalList" style="color: rgb(164, 163, 163);">"뉴발 신발" 게시물이 반복 게시물 사유로 미노출 처리되었습니다</div>            
            <div class="modalList" style="color: rgb(164, 163, 163);">"철철철수"님으로부터 후기가 도착했습니다</div>
            <div class="modalList" style="color: rgb(164, 163, 163);">"짱짱인재"님으로부터 채팅이 있습니다</div>
            <div class="modalList" style="color: rgb(164, 163, 163);">"뉴발 신발" 게시물이 반복 게시물 사유로 미노출 처리되었습니다</div> 
            <div class="modalList" style="color: rgb(164, 163, 163);">"짱짱인재zz"님이 내 상품에 찜을 했습니다.</div> 
            <div class="modalList" style="color: rgb(164, 163, 163);">"짱짱인재zz"님이 내 상품에 찜을 했습니다.</div> 
            
            <div class="modalList"><p class="bold_font">"짱짱인재zz"</p>님이 내 상품에 찜을 했습니다.</div> 
             -->   
            <!-- 알람 없을 때  -->
           <div class="modalSub-noAlarm" id="no_alarm">
                <ion-icon id="no-alarm" name="notifications-circle-outline"></ion-icon>
                <p>최근 알림이 없습니다</p>
           </div>
          
          </div>
        </div>       
     </div>
    </div>
        
    
    


    <script>
    const btn = document.getElementById('alarmBtn');
    const modal = document.getElementById('modalWrap');
    const modalScroll = document.getElementById('modalScroll');
    const closeBtn = document.getElementById('closeBtn');
    const no_alarm = document.getElementById('no_alarm');
    
    btn.onclick = function() {
      modal.style.display = 'block';
    }
    
    window.onclick = function(event) {
      if (event.target == modal) {
        modal.style.display = "none";
        
      }
    }

    closeBtn.onclick = function() {
      modal.style.display = 'none';
    }


    let num = 0;
    function addNewAlarm(){
        var _tar = $("#modalSub").append('<div class="modalList"><p class="bold_font">"철철철수"</p>님으로부터 후기가 도착했습니다' + ++num + '</div>');
        no_alarm.style.display = 'none';
		modalScroll.style.display = 'block';
        var lastItem = $("#modalSub").find(".item:last");
            setTimeout(function(){
                lastItem.addClass("on");
            },300);
    }
    
    </script>
</body>

</html>