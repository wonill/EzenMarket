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
    <style>

        *{
            box-sizing: border-box;
        }

         @keyframes fadeInUp {
        0% {
            opacity: 0;
            
            transform: translate3d(0, 100%, 0);
        }
        to {
            opacity: 1;
           
            transform: translateZ(0);
        }
    }
         @keyframes fadeOutDown {
        0% {
            opacity: 1;
            
            transform: translate3d(0, -100%, 0);
        }
        to {
            opacity: 0;
           
            transform: translateZ(0);
        }
    }
 
    .chat_option_open {
        position: absolute;
        top: 430px;
        left: 0;
        animation: fadeInUp 1.5s;
        
        background-color: white;
        width: 550px;
        height: 500px;
      
    }

    .chat_option_close {
        position: absolute;
        top: 930px;
        left: 0;
        animation: fadeOutDown 1.5s;
        
        background-color: white;
        width: 550px;
        height: 500px;
      
    }

    #chat_option_window{
    	display:none;
        position: absolute;
        top: 0px;
        left: 0px;
    }

    #chat_option_background{
        width: 550px; 
        height: 930px; 
        background-color: rgba(245, 243, 243, 0.3); 
        position: relative;
    }
    
    #chat_option_close_box{
    	positon: absolute;
    	top:0;
    	left:0;
    	width:550px;
    	height:430px;
    
    }

    #chat_option_list{
        border-radius: 50px 50px 0 0;
        display: grid;
        grid-template-rows:  50px 1fr 1fr 1fr 1fr 1fr 1fr;
    }

    #chat_option_list > div{
        width: 100%;
        
        text-align: center;
        padding-top: 10px;
        font-size: 30px;
        font-weight: bold;
    }
    
    #chat_option_list > div > a{
    	text-decoration: none;
    	color: black;
    	cursor: pointer;
    }
    
    #chat_option_list > div > a:hover{
    	color:black;
    }
    
    </style>
</head>
<body>

    <div id="chat_option_window">
        <div id="chat_option_background">
        	<div id="chat_option_close_box" onclick="chat_option_close()"></div>
            <div id="chat_option_list">
                <div></div>
                <div><a href="mypage/?user_number=${myCurrentChatPartnerInfo.user_number }">대화상대 정보보기</a></div>
                <div><a href="product?id=${postInfo.post_id }">상품 정보보기</a></div>
                <div><a onclick="reviewShow()">후기 작성하기</a></div>
                <div><a href="">신고하기</a></div>
                <div><a onclick="block()">차단하기</a></div>
                <div><a id="exit_show">채팅방 나가기</a></div>
            </div>
        </div>
    </div>
    
    <jsp:include page="chat_exit.jsp"></jsp:include>
    <jsp:include page="review_form.jsp"></jsp:include>

    <script>
         
    function chat_option_close(){
        
        document.getElementById('chat_option_list').className= 'chat_option_close';       

        setTimeout(function(){
         //document.getElementById('kk').style.zIndex = '-1';
         document.getElementById('chat_option_window').style.display = 'none';
        }, 700);
         
     }
    
    function block(){
    	alert('추후 업데이트 예정입니다.');
    	chat_option_close();
    }

    </script>
</body>
</html>