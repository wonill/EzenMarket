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


      .review_submit_confirm_background {
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

      .review_submit_confirm_show{
        opacity: 1;
        z-index: 11;
        /*transition: all 0.5s;*/
      }

      .review_submit_confirm_window {
        position: relative;
        width: 100%;
        height: 100%;
      }

      .review_submit_confirm_popup {
        position: absolute;
        top: 30%;
        left: 35%;
       /* transform: translate(-50%, -50%);*/
        background-color: #ffffff;
        

        /* 임시 지정 */
        width: 450px;
        height: 300px;

        /* 초기에 약간 아래에 배치 
        transform: translate(-50%, -40%);*/
      }
  /*
      .show .popup {
        transform: translate(-50%, -50%);
        transition: all 0.1s;
      }
      */

      #review_submit_confirm_message{
        position: absolute;
        width: 100%;
        height: 20px;
        text-align: center;
        top: 50px;
        left: 0;
        font-size: 30px;
        font-weight: bold;
      }



      #review_submit_confirm_close{
        position: absolute;
        top: 150px;
        left: 110px;

        width: 220px;
        height: 90px;

        border: 0;
        background-color: black;
        color: white;
        font-weight: bold;
        font-size: 25px;

        cursor: pointer;

      }

      #review_submit_confirm{
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
    
    
    <div class="review_submit_confirm_background">
      <div class="review_submit_confirm_window">
        <div class="review_submit_confirm_popup">
          <div id="review_submit_confirm_message">후기가 제출되었습니다.</div>



          <button id="review_submit_confirm_close">확인</button>
         
        </div>
      </div>
    </div>

    <script>
      function review_submit_confirm_show() {
        document.querySelector(".review_submit_confirm_background").className = "review_submit_confirm_background review_submit_confirm_show";
        reviewClose();
      }

      function review_submit_confirm_close() {
        document.querySelector(".review_submit_confirm_background").className = "review_submit_confirm_background";
        

      }

     

      //document.querySelector("#show2").addEventListener("click", show2);
      document.querySelector("#review_submit_confirm_close").addEventListener("click", review_submit_confirm_close);
    </script>
  </body>
</html>