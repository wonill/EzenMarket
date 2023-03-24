<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>


      .exit_background {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100vh;
        background-color: rgba(0, 0, 0, 0.3);
      
        /* 숨기기 */
        z-index: -1;
        opacity: 0;
      }

      .exit_show {
        opacity: 1;
        z-index: 1;
        /*transition: all 0.5s;*/
      }

      .exit_window {
        position: relative;
        width: 100%;
        height: 100%;
      }

      .exit_popup {
        position: absolute;
        top: 30%;
        left: 35%;
       /* transform: translate(-50%, -50%);*/
        background-color: #ffffff;
        

        /* 임시 지정 */
        width: 600px;
        height: 400px;

        /* 초기에 약간 아래에 배치 
        transform: translate(-50%, -40%);*/
      }
  /*
      .show .popup {
        transform: translate(-50%, -50%);
        transition: all 0.1s;
      }
      */

      #exit_question{
        position: absolute;
        width: 70%;
        height: 20px;
        text-align: center;
        top: 70px;
        left: 100px;
        font-size: 30px;
        font-weight: bold;
      }

     


      #exit_confirm{
        position: absolute;
        top: 260px;
        left: 90px;

        width: 200px;
        height: 70px;

        border: 0;
        background-color: black;
        color: white;
        font-weight: bold;
        font-size: 25px;

        cursor: pointer;

      }

      #exit_close{
        position: absolute;
        top: 260px;
        left: 320px;

        width: 200px;
        height: 70px;

        border: 0;
        color: black;
        font-weight: bold;
        font-size: 25px;

        cursor: pointer;
      }

      

     

     

     
    </style>
  </head>
  <body>

    <div class="exit_background">
      <div class="exit_window">
        <div class="exit_popup">
          <div id="exit_question">채팅방을 나가면 대화 내용이 모두 삭제됩니다. 정말 채팅방을 나가시겠습니까?</div>

      


          <button id="exit_confirm" onclick="location.href='exitChatRoom?room_id=${current_room_id }'">예</button>
          <button id="exit_close">아니오</button>
        </div>
      </div>
    </div>

    <script>
      function exitShow() {
        document.querySelector(".exit_background").className = "exit_background exit_show";
        chat_option_close();
      }

      function exitClose() {
        document.querySelector(".exit_background").className = "exit_background";
       
      }

     

      document.querySelector("#exit_show").addEventListener("click", exitShow);
      document.querySelector("#exit_close").addEventListener("click", exitClose);
    </script>
  </body>
</html>