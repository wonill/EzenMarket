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
        font-family: 'SUIT-Regular';;

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
    
     .topMenu ul li {
     font-size: 16px !important;
      list-style: none;
      color: hsl(0, 1%, 27%);
      float: right;
      margin-right: 25px;
      top: -10px;
     }
     
     .menuLink {
        padding-bottom: 10px;
     }
     
     .menu { 
        margin-top: -55px !important;
        
      }
   .a-title {
       text-decoration: none;
       color: black;
       display: block;
       padding-bottom: 15px;
       font-size: 20px;
    }
   .a-data {
       margin-left: 30px;
       font-size: 20px;
    }
    .fa-solid, .fas {
       font-weight: 900;
       font-size: 20px;
   }
   
   #nav {
      margin-top: 15px;
   }     
   .logo {        
      line-height: 115% !important;
      padding-right: 50px !important;
      font-size: 39px !important;
   }
   
   @font-face {
       font-family: 'SUIT-Regular';
       src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Regular.woff2') format('woff2');
       font-weight: normal;
       font-style: normal;
   }
    
    
    
    
    </style>
</head>
<body>

    <div id="chat_option_window">
        <div id="chat_option_background">
           <div id="chat_option_close_box" onclick="chat_option_close()"></div>
            <div id="chat_option_list">
                <div></div>
                <div><a href="mypage/?user_number=${myCurrentChatPartnerInfo.user_number }">
                   <svg fill="none" viewBox="0 0 24 24" height="24" width="24" xmlns="http://www.w3.org/2000/svg">
               <path xmlns="http://www.w3.org/2000/svg" d="M12 4C9.79086 4 8 5.79086 8 8C8 10.2091 9.79086 12 12 12C14.2091 12 16 10.2091 16 8C16 5.79086 14.2091 4 12 4ZM6 8C6 4.68629 8.68629 2 12 2C15.3137 2 18 4.68629 18 8C18 11.3137 15.3137 14 12 14C8.68629 14 6 11.3137 6 8ZM8 18C6.34315 18 5 19.3431 5 21C5 21.5523 4.55228 22 4 22C3.44772 22 3 21.5523 3 21C3 18.2386 5.23858 16 8 16H16C18.7614 16 21 18.2386 21 21C21 21.5523 20.5523 22 20 22C19.4477 22 19 21.5523 19 21C19 19.3431 17.6569 18 16 18H8Z" fill="#0D0D0D"></path>
               </svg> 대화상대 정보보기</a>
            </div>
                <div><a href="product?id=${postInfo.post_id }">
                   <svg fill="none" viewBox="0 0 24 24" height="24" width="24" xmlns="http://www.w3.org/2000/svg">
               <path xmlns="http://www.w3.org/2000/svg" d="M4.1421 4.00002L6.00913 16.1357C6.02271 16.2359 6.05113 16.3313 6.0921 16.4198C6.21543 16.6861 6.45246 16.889 6.74088 16.9661C6.82899 16.9898 6.92133 17.0016 7.01578 17H18C18.4416 17 18.8309 16.7103 18.9578 16.2874L21.9578 6.28736C22.0487 5.98459 21.991 5.65669 21.8023 5.40308C21.6136 5.14948 21.3161 5.00002 21 5.00002H6.31948L5.99058 2.86221C5.97826 2.77282 5.95413 2.68721 5.91981 2.607C5.85751 2.46092 5.76213 2.33439 5.64429 2.23521C5.53497 2.14302 5.40561 2.07384 5.26367 2.03514C5.17434 2.01068 5.0806 1.99842 4.9847 2.00002H3C2.44772 2.00002 2 2.44773 2 3.00002C2 3.5523 2.44772 4.00002 3 4.00002H4.1421ZM7.85794 15L6.62717 7.00002H19.656L17.256 15H7.85794Z" fill="#0D0D0D"></path>
               <path xmlns="http://www.w3.org/2000/svg" d="M10 20C10 21.1046 9.10457 22 8 22C6.89543 22 6 21.1046 6 20C6 18.8954 6.89543 18 8 18C9.10457 18 10 18.8954 10 20Z" fill="#0D0D0D"></path>
               <path xmlns="http://www.w3.org/2000/svg" d="M19 20C19 21.1046 18.1046 22 17 22C15.8954 22 15 21.1046 15 20C15 18.8954 15.8954 18 17 18C18.1046 18 19 18.8954 19 20Z" fill="#0D0D0D"></path>
               </svg> 상품 정보보기</a>
            </div>
                <div><a onclick="reviewShow()">
                   <svg fill="none" viewBox="0 0 24 24" height="24" width="24" xmlns="http://www.w3.org/2000/svg">
               <path xmlns="http://www.w3.org/2000/svg" d="M16.2929 3.29289C16.6834 2.90237 17.3166 2.90237 17.7071 3.29289L20.7071 6.29289C21.0976 6.68342 21.0976 7.31658 20.7071 7.70711L11.7071 16.7071C11.5196 16.8946 11.2652 17 11 17H8C7.44772 17 7 16.5523 7 16V13C7 12.7348 7.10536 12.4804 7.29289 12.2929L16.2929 3.29289ZM9 13.4142V15H10.5858L18.5858 7L17 5.41421L9 13.4142ZM3 7C3 5.89543 3.89543 5 5 5H10C10.5523 5 11 5.44772 11 6C11 6.55228 10.5523 7 10 7H5V19H17V14C17 13.4477 17.4477 13 18 13C18.5523 13 19 13.4477 19 14V19C19 20.1046 18.1046 21 17 21H5C3.89543 21 3 20.1046 3 19V7Z" fill="#0D0D0D"></path>
               </svg> 후기 작성하기</a>
                </div> 
                <div><button id="show" style="border: 0; background-color: white;">
               <img src="https://cdn-icons-png.flaticon.com/512/1198/1198487.png"
               width="25px" height="25px" style="vertical-align: -3px;"> 신고하기
               </button>
            </div>
                <div><a onclick="block()">
                   <svg fill="none" viewBox="0 0 24 24" height="24" width="24" xmlns="http://www.w3.org/2000/svg">
               <path xmlns="http://www.w3.org/2000/svg" d="M5.68014 7.09436C4.62708 8.44904 4 10.1513 4 12C4 16.4183 7.58172 20 12 20C13.8487 20 15.551 19.3729 16.9056 18.3199L5.68014 7.09436ZM7.09436 5.68014L18.3199 16.9056C19.3729 15.551 20 13.8487 20 12C20 7.58172 16.4183 4 12 4C10.1513 4 8.44904 4.62708 7.09436 5.68014ZM2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12Z" fill="#0D0D0D"></path>
               </svg> 차단하기</a>
            </div>
                <div><a id="exit_show">
                   <svg fill="none" viewBox="0 0 24 24" height="24" width="24" xmlns="http://www.w3.org/2000/svg">
               <path xmlns="http://www.w3.org/2000/svg" fill-rule="evenodd" clip-rule="evenodd" d="M11 20C11 19.4477 10.5523 19 10 19H5V5H10C10.5523 5 11 4.55228 11 4C11 3.44771 10.5523 3 10 3H5C3.89543 3 3 3.89543 3 5V19C3 20.1046 3.89543 21 5 21H10C10.5523 21 11 20.5523 11 20Z" fill="#0D0D0D"></path>
               <path xmlns="http://www.w3.org/2000/svg" d="M21.7136 12.7005C21.8063 12.6062 21.8764 12.498 21.9241 12.3828C21.9727 12.2657 21.9996 12.1375 22 12.003L22 12L22 11.997C21.9992 11.7421 21.9016 11.4874 21.7071 11.2929L17.7071 7.29289C17.3166 6.90237 16.6834 6.90237 16.2929 7.29289C15.9024 7.68342 15.9024 8.31658 16.2929 8.70711L18.5858 11H9C8.44771 11 8 11.4477 8 12C8 12.5523 8.44771 13 9 13H18.5858L16.2929 15.2929C15.9024 15.6834 15.9024 16.3166 16.2929 16.7071C16.6834 17.0976 17.3166 17.0976 17.7071 16.7071L21.7064 12.7078L21.7136 12.7005Z" fill="#0D0D0D"></path>
               </svg> 채팅방 나가기</a>
            </div>
            </div>
        </div>
    </div>
    
    <jsp:include page="chat_exit.jsp"></jsp:include>
    <jsp:include page="review_form.jsp"></jsp:include>
    <jsp:include page="review_submit_confirm.jsp"></jsp:include>
   <jsp:include page="../report.jsp"/>
   <input name="report_detail" value="${current_room_id }" type="hidden" />  
    <input name="currentPage"  value="2"  type="hidden"/>
   </form>
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
    
    function show() {
        document.querySelector(".background").className = "background show";
     }
     function close() {
        document.querySelector(".background").className = "background";
     }
     document.querySelector("#show").addEventListener("click", show);
     document.querySelector("#close").addEventListener("click", close);

    </script>
</body>
</html>