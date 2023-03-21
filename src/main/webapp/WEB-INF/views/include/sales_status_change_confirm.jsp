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


      .background2 {
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

      .show2 {
        opacity: 1;
        z-index: 11;
        /*transition: all 0.5s;*/
      }

      .window2 {
        position: relative;
        width: 100%;
        height: 100%;
      }

      .popup2 {
        position: absolute;
        top: 35%;
        left: 40%;
       /* transform: translate(-50%, -50%);*/
        background-color: #ffffff;
        

        /* 임시 지정 */
        width: 420px;
        height: 280px;

        /* 초기에 약간 아래에 배치 
        transform: translate(-50%, -40%);*/
      }
  /*
      .show .popup {
        transform: translate(-50%, -50%);
        transition: all 0.1s;
      }
      */

      #confirm_message{
        position: absolute;
        width: 100%;
        height: 20px;
        text-align: center;
        top: 50px;
        left: 0;
        font-size: 25px;
        font-weight: bold;
      }



      #close2{
        position: absolute;
        top: 150px;
        left: 110px;

        width: 200px;
        height: 70px;

        border: 0;
        background-color: black;
        color: white;
        font-weight: bold;
        font-size: 25px;

        cursor: pointer;

      }

      #confirm2{
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
    
    <div class="background2">
      <div class="window2">
        <div class="popup2">
          <div id="confirm_message">상품상태가 변경되었습니다.</div>



          <button id="close2">확인</button>
         
        </div>
      </div>
    </div>

    <script>
      

      function close2() {
        document.querySelector(".background2").className = "background2";

      }

     

      //document.querySelector("#show2").addEventListener("click", show2);
      document.querySelector("#close2").addEventListener("click", close2);
    </script>
  </body>
</html>