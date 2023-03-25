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
    <script src="https://kit.fontawesome.com/d04567b543.js" crossorigin="anonymous"></script>
    <style>
     
    .footer_item {
      position : relative;
      transform : translateY(50%);
      bottom: 0px;
       display: flex;
        flex-direction: column;
        
        padding-top: 20px;
        width: 1902px;
        background-color:  white;
        z-index:2
    }   
          
     .wrapper {
        border: 0px red solid;
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      grid-template-rows: 180px 30px 20px;
     }   
    .section1 {  
       border: 0px red solid;    
        list-style: none;
      grid-row-start: 1;
      grid-column-end: span 2;
      margin-left: 200px;
      color: black; 
      text-align: left;      
    }   
      .section1 .market-info {
      list-style-type: none;
   }
    .section1 .text-title {
       font-weight: 700;
       margin: 10px 0 10px 0;
    }
    .section1 .text {
       font-size: 16px;
    }
    .section2 {   
       border: 0px red solid;   
       margin-left: 20px;
        margin-top: 45px;
    }
    .section2 .a-tag {
      text-decoration: none;   
      color: black;   
      font-size: 16px;   
   }
   .section2 .a-tag:hover {
      color: black;
   }
    .section3 {
         border: 0px red solid;
      margin-top: 45px;
   }   
   .section3 .fa-brands {
      text-decoration: none;      
      color: black;
      font-size: 35px;
      margin-right: 5px;
   }
   .section4 {   
      border: 0px red solid;
      grid-column-end: span 4;
      margin-left: 200px;
      padding-left: 40px;
      color: #aaaaaa;
      font-size: 14px;
   } 
   .section5 {   
      grid-column-end: span 4;
      background-color: black;
      color: white;
      text-align: center;
      font-size: 15px;
   }


   

   
   
   


   
        
</style>
    
</head>
<body>
     <footer class="footer_item">   
      <div class="wrapper">      
         <div class="section1">
              <ul class="market-info">
                 <li class="text-title">
                    COMPANY INFO
                 </li>
                  <li class="text">
                      상호 : (주)EzenMarket&emsp;|&emsp;대표자 : 남원일&emsp;|&emsp;개인정보보호책임자 : 배성훈
                  </li> 
                  <li class="text">
                      사업자등록번호 : 811-86-02421&emsp;|&emsp;통신판매업신고 : 2021-경기구리-1097
                  </li>    
                  <li class="text">
                      T. 031-555-4449&emsp;|&emsp;F. 031-558-9931&emsp;|&emsp;EMAIL : ezen@ezen.co.kr
                  </li>
                  <li class="text">
                      주소 : 경기도 구리시 인창동 670-1 태영빌딩 4층 409호
                  </li>    
                  <li class="text">
                      호스팅서비스 제공자 : Amazon Web Services (AWS)
                  </li>   
              </ul>      
         </div>         
             <div class="section2">
                  <a class="a-tag" href="">이용약관</a><br>
                  <a class="a-tag" href="">개인정보처리방침</a>
            </div>       
             <div class="section3">
                <a class="a-tag" href="https://github.com/wonill/EzenMarket"><i class="fa-brands fa-square-github"></i></a>
                <a class="a-tag" href=""><i class="fa-brands fa-blogger"></i></a>
                <a class="a-tag" href=""><i class="fa-brands fa-square-twitter"></i></a>
                <a class="a-tag" href=""><i class="fa-brands fa-square-instagram"></i></a>
                <a class="a-tag" href=""><i class="fa-brands fa-square-facebook"></i></a>            
             </div>          
          <div class="section4">
             “Ezenmarket” 상점의 판매상품을 제외한 모든 상품들에 대하여 (주)Ezenmarket는 통신판매중개자로서 거래 당사자가 아니며 판매 회원과 구매 회원 간의 상품거래 정보 및 거래에 관여하지 않고 어떠한 의무와 책임도 부담하지 않습니다.
             </div>      
             <div class="section5">             
             Copyright by Ezenmarket. All rights reserved.
             </div>          
          </div>
    </footer>
          
</body>
</html>