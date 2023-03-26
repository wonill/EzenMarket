<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>이젠마켓 | 채팅방</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css"/>
    <script src="https://code.jquery.com/jquery-1.8.3.min.js" integrity="sha256-YcbK69I5IXQftf/mYD8WY0/KmEDCv1asggHpJk1trM8=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"> <!-- 부트스트랩-->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>  
    <script src="https://kit.fontawesome.com/d04567b543.js" crossorigin="anonymous"></script>
	<% %>
	
    <style>
    	
        *{
            box-sizing: border-box;
            
        }
        
        body{
        	font-family: 'SUIT-Regular'!important;
            margin: 0;
            padding: 0;
        }
        #container{
            width: 1903px;
            display: flex;
            justify-content: center;
            background-color: #f9f8f8;
            margin-bottom: -120px;
        }
        
        .chatroom_list{
            width: 550px;
            height: 930px;
            border: solid 0px black;
            overflow-y:scroll;
            background-color: white;
        }
        
        
        

        .first_box{
            border: solid 0px black;
            width: 100%;
            height: 60px;

        }

        #title{
            margin-top: 70px;
            margin-left: 20px;
            font-size: 30px;
            font-weight: bold;
        }

        .chatroom_list .box{ 
            border: solid 0px black;
            width: 100%;
            height: 110px;
            position: relative;
            cursor: pointer;
            
        }
        .chatroom_list .box:hover{ 
            background-color: #f3f0f0;
        }

        .chatroom_list .box .profile{
            border: solid 0px black;
            position: absolute;
            top: 13px;
            left: 25px;
            width: 83px;
            height: 83px;
            border-radius: 51px;
            background-image: url('https://img.insight.co.kr/static/2021/09/14/700/img_20210914111200_9s96jjji.webp');
            background-size: cover;
            background-repeat: no-repeat;
        }

        .chatroom_list .box .nickname{
            position: absolute;
           
            left: 130px;
            top: 25px;
            font-weight:bold;
        }
        
        
        .chatroom_list .box .alarm{
            position: absolute;
            border: solid 0px black;
            border-radius: 30px;
            left: 470px;
            top: 22px;
            width: 30px;
            height: 30px;
            background-color: red;
            color: white;
            font-weight: bold;
            padding-top: 3px;
            padding-left: 1px;
            text-align: center;
            
        }
        
        

        .chatroom_list .box .chat_box{
            position: absolute;
            border: solid 0px black;
            left: 130px;
            top: 65px;
            

           
        }

        .chatroom_list .box .chat_box .last_chat{
            max-width: 310px;
            max-height: 20px;

            overflow: hidden;  		
            text-overflow: ellipsis;  	
            white-space: nowrap; 		
            word-break:break-all;
        }


        .chatroom_list .box .last_chat_time{
            color:#999; 
            position:absolute; 
            right: 19px; 
            bottom: 23px;
            font-size: 14px;
        }
        

        .chat_wrap{ 
            border:1px solid #999;
            width:550px;
            padding:5px; 
            font-size:13px; 
            color:#333;
            background-color: white;
            position:relative;
        }
        
        .chat_wrap .no_room{
            position: absolute;
            top:-4px;
            left:-1px;
            width: 550px;
            height: 933px;
            background-color: white;
            border:2px solid #f3f0f0;
            z-index: 1;
            display: none;

        }

        .chat_wrap .no_room img{
            position: absolute;
            top: 270px;
            left: 175px;
            width: 200px;
            height: 200px;
        }

        .chat_wrap .no_room .no_room_msg{
            position: absolute;
            top: 505px;
            left: 110px;
            font-size: 35px;

        }
        
        .chat_wrap .inner{
            background-color:rgb(225, 145, 136);
            border-radius:5px; 
            padding:10px; 
            padding-left: 20px;
            padding-right: 20px;
            overflow-y:scroll;
            height: 735px;
        }
        
        
        .chat_wrap .item{
            margin-top:25px;
        }
        .chat_wrap .item:first-child{
            margin-top:10px
        }
        .chat_wrap .item .box{
            display:inline-block; 
            max-width:180px; 
            position:relative;
        }
        .chat_wrap .item .box::before{
            content:""; 
            position:absolute; 
            left:-7px; 
            top:9px; 
            border-top:0px solid transparent; 
            border-bottom:8px solid transparent;
            border-right:8px solid #fff;
            
        }
        .chat_wrap .item .box .msg{
            background:#fff; 
            border-radius:15px; 
            padding:11px; 
            text-align:left; 
            word-break: break-word;
            font-size: 20px;
            
        }
        
        .chat_wrap .item .box .msg img{
            width:150px; 
            object-fit: cover; 
            cursor: pointer;
        }
        
        .chat_wrap .item .box .unread{
            font-size:13px; 
            color:yellow; 
            position:absolute; 
            right: -80px; 
            bottom:33px; 
            width:70px
        }
        
        .chat_wrap .item .box .time{
            font-size:11px; 
            color:white; 
            position:absolute; 
            right: -80px; 
            bottom:17px; 
            width:70px
        }
        .chat_wrap .item.mymsg{
            text-align:right
        }
        .chat_wrap .item.mymsg .box::before{
            left:auto; 
            right:-8px; 
            border-left:8px solid rgb(184, 210, 227); 
            border-right:0;
        }
        .chat_wrap .item.mymsg .box .msg{
            background-color: rgb(184, 210, 227);
            
        }
        
        .chat_wrap .item.mymsg .box .unread{
            right:auto; 
            left:-78px;
            
        }
        
        .chat_wrap .item.yourmsg .box .unread{
           display:none
            
        }
        
        .chat_wrap .item.mymsg .box .time{
            right:auto; 
            left:-78px;
            
        }
        .chat_wrap .item .box{
            transition:all .3s ease-out; 
            margin:0 0 0 20px;
            opacity:0;
        }
        .chat_wrap .item.mymsg .box{
            transition:all .3s ease-out; 
            margin:0 20px 0 0;
        }
        
        
        
        .chat_wrap .item.yourmsg .box .chat_profile_img{
            width: 60px; 
            height: 60px; 
            border-radius: 30px; 
            position: absolute; 
            top: -30px; 
            left: -75px;
            
            background-image: url('${myCurrentChatPartnerInfo.user_image }');
            background-size: cover;
            background-repeat: no-repeat;
            
        }
        
        .chat_wrap .item.on .box{
            margin:0; opacity: 1;
        }

        #input{
        	position:absolute;
        	left: 10%;
            border:0; 
            width:90%;
            background:#ddd; 
            border-radius:5px; 
            height:50px; 
            padding-left:10px; 
            box-sizing:border-box; 
            margin-top:5px;
            font-size: 20px;
        }

        #input::placeholder{
            color:#999
        }
        
        .image_upload{
        	position: absolute;
        	left: 0%;
        	width:10%;
        }
    
        .info{
            width: 100%;
            height: 125px;
            background-color: white;
            position: relative;
        }

        .info .nickname{
            top: 10px;
            left: 23px;
            position: absolute;
            font-size: 20px;
            font-weight: bold;
        }
        
        .info .chat_option{
        	position: absolute;
        	cursor:pointer;
        	top: 10px;
        	right: 30px;
        	width: 20px;
        	height: 35px;
        	font-size:35px;
        	text-align:center;
        }
        
        .info .nickname a{
            color:black;
            text-decoration: none;
        }

        .info .post_img{
            top: 50px;
            left: 23px;
            position: absolute;
            border: solid 0px black;
            width: 60px;
            height: 60px;
            background-image: url('https://img.insight.co.kr/static/2021/09/14/700/img_20210914111200_9s96jjji.webp');
            background-size: cover;
            cursor: pointer;
        }

        .info .post_title{
            position: absolute;
            border: solid 0px black;
            top: 85px;
            left: 100px;

            max-width: 400px;

            overflow: hidden;  		
            text-overflow: ellipsis;  	
            white-space: nowrap; 		
            word-break:break-all;

            font-size: 15px;
        }

        .info .price{
            position: absolute;
            border: solid 0px black;
            top: 55px;
            left: 100px;

            font-size: 22px;
            font-weight: bold;
        }
        
        .info .report{
        	position: absolute;
        	top: 15px;
        	right: 20px;
        	
        	
        }
        
        #bar{
        	width:100%;
        	height:50px;
        	background-color: white;
        	border-bottom: solid 3px #f9f8f8;
        }
        
        .scam-alert{
        	width: 400px;
        	height: 200px;
        	background-color: white;
        	border-radius: 20px;
        	padding: 30px;
        	margin-left: 40px;
        	margin-top: 10px;
        }
        
        .chat_wrap .item.yourmsg .box {
            margin-left: 75px; 
            margin-top: 10px; 
            position: relative;
        }
        
        .chat_wrap .item.yourmsg .box .msg{
           
            background-color: rgb(241, 196, 15);
        }
        .chat_wrap .item.yourmsg .box:before{
           border-right:8px solid rgb(241, 196, 15); 
        }
        
        .topMenu{
        	margin-top:30px;
        }
        
          .notice {
            width: 460px;
            padding: 15px;
            margin: 10px;
            background-color: rgb(255, 255, 255);
            text-align: center;
            margin-bottom: 30px;
            line-height: 40px;
            
        }
        .notice p {
            line-height: 30%;
            color: darkgray;
            
        }
        #warning {
            font-size: 25px;
            line-height: 10%;
            color: darkgray;
            margin-bottom: 5px;
        }
        .content {
            color: darkgray;
        }
        .content2 {
            color: black;
        }
        #wink {
            color:deepskyblue;
        }
        
        .chat_wrap .item .box .msg.transparency{
        	background-color: rgb(225, 145, 136);
        }
        
        .chat_wrap .item.yourmsg .box.transparency::before{
        	border-left: solid 8px rgb(225, 145, 136);
        	border-right: solid 8px rgb(225, 145, 136);
        }
        
       .chat_wrap .item.mymsg .box.transparency::before{
       		border-left: solid 8px rgb(225, 145, 136);
        	border-right: solid 8px rgb(225, 145, 136);
       }
       
       .chat_wrap .item.mymsg .box.transparency .unread{
            right:auto; 
            left:-72px;
            bottom: 42px;
            
        }
       .chat_wrap .item.mymsg .box.transparency .time{
            right:auto; 
            left:-72px;
            bottom: 27px;
            
        }
        
        .chat_wrap .item.yourmsg .box.transparency .time{
        	bottom: 25px;
        	left: 175px;
        }
        
       
    </style>
   
    
</head>
<body>
	<jsp:include page="../include/header.jsp"/>
	<div id="bar"></div>

<div id="container" style="margin-top: 20px;">


    <div class="chatroom_list">
        <div class="first_box">
            <div id="title" style="font-family: 'SUIT-Regular';">
                전체 대화
            </div>
        </div>
		<c:forEach items="${lastChatInfo}" var="lastChat">
			
			<div class="box" onclick="location.href='chat?room_id=${lastChat.chattingRoom_id}'" id='${lastChat.chattingRoom_id + 30000}'>
	            <div class="profile" style="background-image: url('${lastChat.defaultProfile}')"></div>
	            <div class="nickname">${lastChat.nickname }</div>
	            <div class="alarm" id='${lastChat.chattingRoom_id + 20000}'>${lastChat.numOfUnreadMsg }</div>
	            <div class="chat_box">
	            <p class="last_chat" id="${lastChat.chattingRoom_id }">${lastChat.lastChatContent }</p>
	            </div>
	            <span class="last_chat_time" id='${lastChat.chattingRoom_id + 10000}'>${lastChat.creationDateTime }</span>
	        </div>
        </c:forEach>
<!--         
        <div class="box">
            <div class="profile"></div>
            <div class="nickname">구매자</div>
             <div class="alarm">4</div>
            <div class="chat_box">
            <p class="last_chat">물건 살게요ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</p>
            </div>
            <span class="last_chat_time">오후 10:05</span>
        </div>
        <div class="box">
            <div class="profile"></div>
            <div class="nickname">구매자</div>
            <div class="chat_box">
            <p class="last_chat">물건 살게요</p>
            </div>
            <span class="last_chat_time">오후 10:05</span>
        </div>
        <div class="box">
            <div class="profile"></div>
            <div class="nickname">구매자</div>
            <div class="chat_box">
            <p class="last_chat">물건 살게요</p>
            </div>
            <span class="last_chat_time">오후 10:05</span>
        </div>
        <div class="box">
            <div class="profile"></div>
            <div class="nickname">구매자</div>
            <div class="chat_box">
            <p class="last_chat">물건 살게요</p>
            </div>
            <span class="last_chat_time">오후 10:05</span>
        </div>
        <div class="box">
            <div class="profile"></div>
            <div class="nickname">구매자</div>
            <div class="chat_box">
            <p class="last_chat">물건 살게요</p>
            </div>
            <span class="last_chat_time">오후 10:05</span>
        </div>
 -->       
        
        
       
        
        
    </div>


    <div class="chat_wrap">
    	<jsp:include page="../include/chat_option.jsp"></jsp:include>
    	<div class="no_room">
            <img src="https://cdn-icons-png.flaticon.com/512/5962/5962500.png" alt="채팅">
            <p class="no_room_msg">대화방을 선택하세요</p>
        </div>
        <div class="info">
            <div class="nickname"><a href="mypage/?user_number=${myCurrentChatPartnerInfo.user_number }">${myCurrentChatPartnerInfo.nickname }</a></div>
            <span class="material-symbols-outlined chat_option" onclick="chat_option_open()">menu</span>
            <div class="post_img" style="background-image: url('${postInfo.image_url}')" onclick="location.href='product?id=${postInfo.post_id }'"></div>
            <div class="price">${postInfo.formattedPrice}원</div>
            <div class="post_title">${postInfo.title}</div>
          <!--    <div class="report"><jsp:include page="" /></div> -->
        </div>
        <div class="inner">
         
        <div class="notice">
            <ion-icon id="warning" name="warning-outline"></ion-icon>
            <p class="content">거래는 판매자와 충분히 상의한 후 진행해주세요.</p> 
            <p class="content">카카오톡 등 외부 채널로 대화나 계좌입금을 유도하는 경우</p>
            <p class="content">사기 피해의 위험이 있으니 주의하세요!</p>
            <span class="content2">이젠마켓 채팅, 결제가 가장 편하고 안전해요 </span><i id="wink" class="fa-regular fa-face-smile-wink"></i>
        </div>

                
        <c:forEach items="${chattingContents }" var="chattingContent">    
          <div class="item 
          <c:choose>
          <c:when test="${user.user_number eq chattingContent.user_number}">
          		mymsg
          </c:when>
          <c:otherwise>
          		yourmsg
          </c:otherwise>
          </c:choose> 
          on">							
                <div class="box <c:if test="${chattingContent.contentType eq 'image' }">transparency</c:if>">
                    <p class="msg <c:if test="${chattingContent.contentType eq 'image' }">transparency</c:if>">
                    <c:choose>
                    <c:when test="${chattingContent.contentType eq 'message' }">
                    ${chattingContent.chatMessage }
                    </c:when>
                    <c:when test="${chattingContent.contentType eq 'image' }">
                    <img src="${chattingContent.chatImage }" onclick="openImage(this.src)" class="selProductFile" title="Click to enlarge">
                    </c:when>
                    </c:choose>
                    </p>
                    <c:if test="${user.user_number ne chattingContent.user_number}">
                    <div class="chat_profile_img"></div>
                    </c:if>      
                    <div class="unread">${chattingContent.unread}</div>
                    <span class="time">${chattingContent.creationDateTime }</span>
                </div>
            </div>
		</c:forEach>
	

        </div>
	 
        <div style="width: 100%; position:relative;">
        <a href="javascript:" onclick="fileUploadAction();" class="image_upload">
        <span class="material-symbols-outlined" style="font-size: 50px; padding-top: 5px; color:black;">photo_library</span>
        </a>
        <input type="text" class="mymsg" placeholder="내용 입력" id="input">
        </div>
        <input type="file" id="input_imgs" style="display: none;"/>
    </div>
</div>
    <jsp:include page="../include/footer.jsp"/>
    


<script>
    
	history.replaceState({}, null, location.pathname);
	
	
    
    $(function(){
    	
    	var lastItem = $(".chat_wrap .inner").find(".item:last");
    	if(lastItem.length > 0){
	    var position = lastItem.position().top + $(".chat_wrap .inner").scrollTop();    		
	    $(".chat_wrap .inner").scrollTop(position);    		
    	}
    	
    	
    	
    	
        $("#input").keypress(function(e){
            if(e.keyCode == 13 && $(this).val().length){
                var _val = $(this).val();
                var _class = $(this).attr("class");
                
                sendMessage(this);
                
                //$(this).val('');
                var _tar = $(".chat_wrap .inner").append('<div class="item '+_class+'"><div class="box"><p class="msg">'+_val+'</p><div class="unread">1</div><span class="time">'+currentTime()+'</span></div></div>');

                var lastItem = $(".chat_wrap .inner").find(".item:last");
                setTimeout(function(){
                    lastItem.addClass("on");
                },10);

                var position = lastItem.position().top + $(".chat_wrap .inner").scrollTop();
                console.log(position);

                $(".chat_wrap .inner").stop().animate({scrollTop:position},500);
            }
        });

    });
    
    var currentTime = function(){
        var date = new Date();
        var hh = date.getHours() == 0? 12 : date.getHours();
        var mm = date.getMinutes().toString().length == 1? ("0" + date.getMinutes()) : date.getMinutes();
        var apm = hh > 12 ? "오후":"오전";
        var ct = apm + " "+ (hh > 12? hh - 12 : hh) +":"+mm+" ";
        return ct;
    }
    
  
   
     
    const chattingRoom_id = ${current_room_id};
   
    if(chattingRoom_id === 0){
    	document.querySelector('.chat_wrap .no_room').style.display = 'block';
    } else{
	    document.getElementById(chattingRoom_id + 20000).style.display = 'none';    	  
   		document.getElementById(chattingRoom_id + 30000).style.backgroundColor = '#f3f0f0';
   		document.getElementById(chattingRoom_id + 30000).style.cursor = 'default';
    	
    }
    
   
    
    
    const alarms = document.querySelectorAll('.alarm');
    for(i = 0; i < alarms.length; i++){
    	if(alarms[i].innerText == 0){
    		alarms[i].style.display = 'none';    		
    	}
    }
    
     
    var webSocket = new WebSocket("ws://<%=request.getLocalAddr()%>:8888<%=request.getContextPath()%>/echo/${user.user_number}");
    
    webSocket.onopen = function(message) {
      
      console.log('오픈');
      console.log('오픈');
      console.log('오픈');
      console.log('오픈');
      
  	  reconnect();
      
      if(chattingRoom_id != 0){
	      readProcessing();
      }
      
                   
    };
    
    webSocket.onclose = function(message) {
     	
      alert('서버와의 연결이 끊어졌습니다.');
      location.href='chat'
      
      console.log("Server Disconnect...\n");
    };
   
    webSocket.onerror = function(message) {
    	alert('서버와의 연결이 끊어졌습니다.');
        location.href='chat'
      console.log("error...\n");
    };
   
    webSocket.onmessage = function(message) {
      
      
      const info = JSON.parse(message.data);
      
      console.log('타입', info.type);
      console.log('서버에서 온채팅방 번호', info.chattingRoom_id);
      console.log('여기 방 번호', chattingRoom_id);
      
      if(info.type == 'message'){
    	  
	      console.log("Recieve From Server => "+info.contents+"\n");
	      
	      
	      
	      document.getElementById(info.chattingRoom_id).innerText = info.contents;
	      document.getElementById(info.chattingRoom_id + 10000).innerText = currentTime();
	      //document.querySelector('#\\3' + ${lastChat.chattingRoom_id } + ' .chat_box .last_chat').innerText = info.contents;
	      //document.querySelector('#\\3' + ${lastChat.chattingRoom_id } + ' .last_chat_time').innerText = currentTime();
	      
	      if(info.chattingRoom_id == chattingRoom_id && chattingRoom_id != 0){
	    	  
	      var _tar = $(".chat_wrap .inner").append('<div class="item yourmsg"><div class="box"><p class="msg">'+ info.contents+'</p><div class="chat_profile_img"></div><div class="unread">1</div><span class="time">'+currentTime()+'</span></div></div>');
	      
	      var lastItem = $(".chat_wrap .inner").find(".item:last");
	      setTimeout(function(){
	          lastItem.addClass("on");
	      },10);
	
	      var position = lastItem.position().top + $(".chat_wrap .inner").scrollTop();
	      console.log(position);
	
	      $(".chat_wrap .inner").stop().animate({scrollTop:position},500);
	      } else {
	    	  var numOfUnread = document.getElementById(info.chattingRoom_id + 20000).innerText;
	    	  document.getElementById(info.chattingRoom_id + 20000).style.display = 'block';
	    	  
		      document.getElementById(info.chattingRoom_id + 20000).innerText = parseInt(numOfUnread) + 1;
		      
		      blink(info.chattingRoom_id + 30000);
	      }
	      
	      
	      
	      if (document.visibilityState === 'visible' && chattingRoom_id != 0) {
			    readProcessing();
		  } 
	      
	      
      } else if(info.type == 'readProcessing'){
    	  if(info.chattingRoom_id == chattingRoom_id && chattingRoom_id != 0){
    	  
	    	  var unreadMessages = document.querySelectorAll('.chat_wrap .item.mymsg .box .unread');
	    	  
	    	  for(i = 0; i < unreadMessages.length; i++){
	    		  unreadMessages[i].innerText = '';
	    	  }
	    		  
    	  }
      } else if(info.type == 'image'){
    	  
		  
    	  console.log("Recieve From Server => "+info.image_url+"\n");  
	      
	      document.getElementById(info.chattingRoom_id).innerText = '사진을 보냈습니다.';
	      document.getElementById(info.chattingRoom_id + 10000).innerText = currentTime();
	      //document.querySelector('#\\3' + ${lastChat.chattingRoom_id } + ' .chat_box .last_chat').innerText = info.contents;
	      //document.querySelector('#\\3' + ${lastChat.chattingRoom_id } + ' .last_chat_time').innerText = currentTime();
	      
	      if(info.chattingRoom_id == chattingRoom_id && chattingRoom_id != 0){
	    	  
	      var _tar = $(".chat_wrap .inner").append('<div class="item yourmsg"><div class="box transparency"><p class="msg transparency"><img src="' + info.image_url + '" onclick="openImage(this.src)" class="selProductFile" title="Click to enlarge"></p><div class="chat_profile_img"></div><div class="unread">1</div><span class="time">'+currentTime()+'</span></div></div>');
	      
	      var lastItem = $(".chat_wrap .inner").find(".item:last");
	      setTimeout(function(){
	          lastItem.addClass("on");
	      },10);
	
	      var position = lastItem.position().top + $(".chat_wrap .inner").scrollTop();
	      console.log(position);
	
	      $(".chat_wrap .inner").stop().animate({scrollTop:position},500);
	      } else {
	    	  var numOfUnread = document.getElementById(info.chattingRoom_id + 20000).innerText;
	    	  document.getElementById(info.chattingRoom_id + 20000).style.display = 'block';
	    	  
		      document.getElementById(info.chattingRoom_id + 20000).innerText = parseInt(numOfUnread) + 1;
		      
		      blink(info.chattingRoom_id + 30000);
	      }
	      
	      
	      
	      if (document.visibilityState === 'visible' && chattingRoom_id != 0) {
			    readProcessing();
		  } 
    	  
      }
      
      
      
      
		  
	  
    	  
    	  
      
      
      
    };
  
  function sendMessage(message) {                      
   
	  
 	document.getElementById(chattingRoom_id).innerText = message.value;
 	document.getElementById(chattingRoom_id + 10000).innerText = currentTime();

    const info = {
       type:'message',
       chattingRoom_id:chattingRoom_id,
       user_number:${user.user_number},
       contents:message.value
    }
    
    const json = JSON.stringify(info);
    
    
    console.log("Send to Server => "+json+"\n");
    
    webSocket.send(json);
   
     message.value = "";
  }
  
  
  
  
  	function sendImage(image_name) {                      
	   
	  
	 	document.getElementById(chattingRoom_id).innerText = '사진을 보냈습니다.';
	 	document.getElementById(chattingRoom_id + 10000).innerText = currentTime();

	    const info = {
	       type:'image',
	       chattingRoom_id:chattingRoom_id,
	       user_number:${user.user_number},
	       image_url:'http://localhost:8888<%=request.getContextPath()%>/tmpFiles/' + image_name
	    }
	    
	    const json = JSON.stringify(info);
	    
	    
	    console.log("Send to Server => "+json+"\n");
	    
	    webSocket.send(json);
	    
	    
	 }
  
  
  
  
  function disconnect() {
   
    webSocket.close();

    
  }	
  
  
    document.addEventListener("visibilitychange", function() {
	  if (document.visibilityState === 'visible' && chattingRoom_id != 0) {
	    readProcessing();
	  } 
	}); 
  
  
  
  
  
	  function readProcessing(){
		  
		  const info = {
			type:'readProcessing',
			chattingRoom_id:chattingRoom_id,
		    user_number:${user.user_number}
		  }
		  
		  
		  webSocket.send(JSON.stringify(info));
		  
		  
	  }
  
	  function reconnect(){
		  const info = {
					type:'reconnect',
					chattingRoom_id:chattingRoom_id,
				    user_number:${user.user_number}
				  }
				  
				  
		webSocket.send(JSON.stringify(info));
	  }
  
	  function blink(id){
	      const element = document.getElementById(id);
	       element.style.backgroundColor = '#FFFF80';
	
	        setTimeout(function() {
	          element.style.backgroundColor = 'white';
	        }, 70);
	        
	    }
  
  
	  function openImage(image_url){
	      var popupWidth = 500;
	      var popupHeight = 500;
	
	      var popupX = (window.screen.width / 2) - (popupWidth / 2);
	    
	      var popupY= (window.screen.height / 2) - (popupHeight / 2);
	
	      window.open(image_url, '_blank', 'status=no, height=500, width=500, left='+ popupX + ', top='+ popupY);
	
	      //window.open(image_url, "_blank", "width=500, height=500");
	  }  
  
		
		
		
		//이미지 전송 파트
		 // 이미지 정보들을 담을 배열 
	    var sel_files = [];

	    $(document).ready(function() {
	        $("#input_imgs").on("change", handleImgFileSelect);
	    }); 


	    function fileUploadAction() {
	        console.log("fileUploadAction");
	        $("#input_imgs").trigger('click');
	    }


	    function handleImgFileSelect(e) {

	    

	    var files = e.target.files;
	    var filesArr = Array.prototype.slice.call(files);

	    var index = 0;
	    filesArr.forEach(function(f) {
	        if(!f.type.match("image.*")) {
	            alert("확장자는 이미지 확장자만 가능합니다.");
	            return;
	        }

	        sel_files.push(f);

	        var reader = new FileReader();
	        reader.onload = function(e) {
	            //var html = "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("+index+")\" id=\"img_id_"+index+"\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'></a>";
	            // <div class="item mymsg on">
	            //     <div class="box">
	            //         <p class="msg"><img src="https://img.insight.co.kr/static/2021/09/14/700/img_20210914111200_9s96jjji.webp" alt="" style="width:150px; object-fit: cover; cursor: pointer;" onclick="openImage(this.src)"></p>
	            //         <div class="unread">1</div>      
	            //         <span class="time">오전 10:05</span>
	            //     </div>
	            // </div>


	            var _tar = $(".chat_wrap .inner").append('<div class="item mymsg"><div class="box transparency"><p class="msg transparency"><img src="' + e.target.result + '"data-file="' + f.name + '" onclick="openImage(this.src)" class="selProductFile" title="Click to enlarge"></p><div class="unread">1</div><span class="time">'+currentTime()+'</span></div></div>');
	            
	            var lastItem = $(".chat_wrap .inner").find(".item:last");
	            setTimeout(function(){
	                lastItem.addClass("on");
	            },10);
	            
	            var position = lastItem.position().top + $(".chat_wrap .inner").scrollTop();
	            console.log(position);
	            
	            $(".chat_wrap .inner").stop().animate({scrollTop:position},500);


	            index++;

	        }
	        reader.readAsDataURL(f);
	        submitAction();
	        deleteImageAction(0);
	    });
	    }



	    function deleteImageAction(index) {
	        console.log("index : "+index);
	        console.log("sel length : "+sel_files.length);

	        sel_files.splice(index, 1);

	       
	    }

	    function fileUploadAction() {
	    console.log("fileUploadAction");
	    $("#input_imgs").trigger('click');
	    }

	    function submitAction() {
	    console.log("업로드 파일 갯수 : "+sel_files.length);
	    var data = new FormData();

	    //for(var i=0, len=sel_files.length; i<len; i++) {
	    //    var name = "image_"+i;
	        var name = "img";
	        data.append(name, sel_files[0]);
	    //}
	    data.append("image_count", sel_files.length);

	    if(sel_files.length < 1) {
	        alert("한개이상의 파일을 선택해주세요.");
	        return;
	    }           

	   
	    
	    const xhttp = new XMLHttpRequest();

	    xhttp.addEventListener('readystatechange', (e) => {
	      
	       if(xhttp.readyState == 4 && xhttp.status == 200){
	           
	            console.log('요청 성공!', xhttp.responseText);
	            
	            sendImage(xhttp.responseText);
	       }
	  
	    });


	   
	    xhttp.open('POST', './chat/imgUpload');

	    
	    xhttp.send(data);
	    
	    }
	
	
	    function chat_option_open(){
            document.getElementById('chat_option_window').style.display = 'block';
            document.getElementById('chat_option_window').style.zIndex = '1';
            document.getElementById('chat_option_list').className = 'chat_option_open';
        }

        
	
 
</script>

</body>
</html>