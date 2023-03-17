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


      .background {
        position: fixed;
        top: 0;
        left: 0;
        width: 1903px;
        height: 100vh;
        background-color: rgba(0, 0, 0, 0.3);
      
        /* 숨기기 */
        z-index: -1;
        opacity: 0;
      }

      .show {
        opacity: 1;
        z-index: 11;
        /*transition: all 0.5s;*/
      }

      .window {
        position: relative;
        width: 100%;
        height: 100%;
      }

      .popup {
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

      #question{
        position: absolute;
        width: 100%;
        height: 20px;
        text-align: center;
        top: 50px;
        left: 0;
        font-size: 30px;
        font-weight: bold;
      }

      #select_user{
        position: absolute;
        top: 140px;
        left: 160px;

        width: 300px;
        height: 50px;

        font-size: 20px;
      }


      #confirm{
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

      #close{
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

      

      .option{
        font-size: 20px;
       
      }

     

     
    </style>
  </head>
  <body>
    
    <div class="background">
      <div class="window">
        <div class="popup">
          <div id="question">판매완료 처리 하시겠습니까?</div>

          <select name="user" id="select_user">
            <option value="0" class="option">구매자를 선택하세요</option>
            <option value="1" class="option">1</option>
            <option value="2" class="option">2</option>
            <option value="3" class="option">3</option>
          </select>


          <button id="confirm">판매완료</button>
          <button id="close">취소</button>
        </div>
      </div>
    </div>

    
  </body>
</html>