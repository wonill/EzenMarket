<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

<link rel="preconnect" href="https://fonts.googleapis.com">

<style>
    
      .aside {
        position: fixed;
        top: 50%;
        left: 97%;
        z-index: 999;
      }
      .sideBtn {
        /* position: fixed;
        top: 300px;
        left: 90%; */
        border: 1px solid  #373737;
        background-color: #373737;
        width: 50px;
        height: 70px;
        color: whitesmoke;
        
        margin-left: 8px;
        cursor: pointer;
       
      }
      .sideIcon {
        font-size: 30px;
        margin-left: 10px;
        margin-top: 5px;
      }
      
      
      .chaticon {
        margin-top: 15px;
      }
      
      .topBtn {
        background-color: whitesmoke;
        border: 1px solid whitesmoke;
        color: #373737;
        margin-top: -15px;
      }
        .topicon {
        margin-left: 13px;
      }
      
      .chaticon{
         color:white;
      }
      
      .topBtn{
         
      }
      
      #notification_btn{
      	position: relative;
      	
      	
      }
      
</style>
<title>side</title>
</head>
<body>

    <!-- 사이드 -->
      <div class="aside">
        <div class="sideBtn"><a href="chat"><i class="fa-regular fa-comment sideIcon chaticon"></i></a></div>
          <div class="sideBtn"><div id="alarmBtn"><jsp:include page="notifications.jsp"/><i class="fa-regular fa-bell sideIcon"></i></div></div>
             <div class="sideBtn topBtn"><i class="fa-solid fa-caret-up sideIcon topicon"></i><span style="margin-left: 6px;">TOP</span></div>
                <!-- <div class="sideBtn">공유</div> -->
       </div>
       
       <script>
       const $moveTopBtn = document.querySelector(".topBtn");
       // 버튼 클릭 시 맨 위로 이동
       $moveTopBtn.onclick = () => {
       window.scrollTo({ top: 0, behavior: "smooth" });  
     } 
       
if(${sessionScope.user_number}){
	
 var webSocket = new WebSocket("ws://<%=request.getLocalAddr()%>:8888/ezenmarket/echo/" + ${sessionScope.user_number});
       
       webSocket.onopen = function(message) {
             
             
             console.log('오픈');
             console.log('오픈');
             console.log('오픈');
             console.log('오픈');
       }
           
       webSocket.onmessage = function(message) {
          const info = JSON.parse(message.data);
             
           if(info.type == 'message'){
             alert('메세지 알림이 왔습니다!');
             addNewAlarm();
           } else if(info.type == 'zzim'){
        	   alert('내 상품에 찜 요청이 왔습니다.');
           }   
       }
           
        webSocket.onerror = function(message) {
               
             console.log("error...\n");
        }    
           
       webSocket.onclose = function(message) {
              
             console.log("Server Disconnect...\n");
       }
}
       
      
      
       </script>

</body>
</html>