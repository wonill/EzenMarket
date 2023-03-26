<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/css/product/product_menu.css" />
<script src="https://kit.fontawesome.com/d04567b543.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
    
     .topMenu ul li {
      list-style: none;
      color: hsl(0, 1%, 27%);
      float: right;
      margin-right: 25px;
      margin-top: 10px !important;
     }
     
     .menu { 
        margin-top: -55px !important;
        
      }
   .a-title {
       text-decoration: none;
       color: black;
       display: block;
       padding-bottom: 15px;
    }
   .a-data {
       margin-left: 30px;
    }
   #nav {
      margin-top: 15px;
   }     
     .logo {        
      line-height: 115% !important;
      padding-right: 50px !important;
   }
   *, ::after, ::before {
      box-sizing: border-box;
   }


   a:link {
           text-decoration: none;
         }
   
         a {
           color: black;
         }
          
        .selling {
         /* border: solid 1px white; */
         border-radius: 10px;
         /* padding: 20px; */
         }


       .item_list {
        border: 1px solid rgb(255, 255, 255);
        width: 74%;
        height: 90%;
        margin-top: 14px;
        margin-left: 20%;
        margin-right: 20%;
        display: flex;
        flex-wrap: wrap;
        /* justify-content: space-between; */
      }

      .item_list .item_card {
        border: solid 0.2px #00000025;        
        height: 360px;
        width: 227px;
        padding: 0;
        margin: 0 18px 18px 0;        
      }

      .item_list .item_card img { 
        height: 220px;
        width: 225px;
        border-color: #00000025;  
        border-style: solid;  
        border-width: 0 0 1px 0;  
        object-fit: cover; 
      }
      
      
      .item_list .item_card .text {
        margin-top: 10px;
        padding: 0 5px 0 5px;
        color: black;        
      }

      .item_list .item_card .text #title {
        font-size: 17px;
        opacity: .8;
        color: black;  
        font-weight: 400;
        display: block;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;          
      }

      .item_list .item_card .text #price {     
        font-weight: 900;
        font-size: 20px;
        opacity: .8;
        color: black;        
      }

      
      .item_list .item_card .text #created {
        float: right;
        margin: 7px 5px 0 0;
        font-weight: 400;
        font-size: 15px;
        opacity: .8;
        color: rgb(123, 123, 123);        
      }


      .item_list .item_card .text2 {
        border-color: #00000025;  
        border-style: solid;  
        border-width: 1px 0 0 0;  
        padding: 10px 0 0 5px; 
      }

      .item_list .item_card .text2 #address {
        font-weight: 400;
        font-size: 15px;
        color: black;     
        float: left;   
        max-width: 170px; 
        display: block;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis; 
        margin-top: 5px;       
         }

      #recommend {        
        margin-top: 200px;
        font-size: 30px;
        margin-left:20%;
        /* margin-bottom: 40px; */      
      }
      
       #icon-location {
        position: relative; 
        float: left; 
        margin: 5px 5px 5px 0;
         }

   
   .paging {
         width: 100%;
         justify-content: center;
         text-align: center;
         margin-top: 50px;
   }
   
   .paging > ul {    
      text-align: center;
       display: inline-block;
       border: 1px solid #ccc;
       
   } 
   .paging > ul > li{
      text-align: center;
       float: left;
      list-style:none;
      
   }
   .paging > ul > li > a {
       display: block;
       font-size: 14px;
      color: black;
       padding: 9px 12px;
       border-right: solid 1px #ccc;
       box-sizing: border-box;
      text-decoration-line:none;
      
   } 

</style>



</head>
<body>

   <jsp:include page="../include/header.jsp"/>
   
      
   <main>
   
     
        
   
  // 카테고리별 이름 나오게 하기   
  <div id="recommend" style="font-weight: 500; font-size: 1.8em;">${cateList[0].category_name} <ion-icon name="sparkles-sharp" style="font-size:1em; color:#FFCC33;""></ion-icon> </div>
  
  <div class="item_list" >
      
      <c:forEach items="${cateList}" var="list">  
      
         <div class="item_card">
         
            <div class="item_img">
               <a href="product?id=${list.post_id }">
               <img src="${list.image_url }" alt="상품">
               </a>
            </div>
            
            <div class="text">              
               <a href="product?id=${list.post_id }">
                  <p id="title">${list.title }</p>
               </a>            
               <a href="product?id=${list.post_id }">
                  <span id="price"><fmt:formatNumber value="${list.price }" pattern="#,###" />원</span>
               </a>   
               <a href="product?id=${list.post_id }">   
                  <span id="created">${list.createdTimeAgo }</span>
               </a>

               <!-- <button><i class="fas fa-check"></i>사러가기</button> -->
            </div>   

                     
            <div class="text2">
               <a href="product?id=${list.post_id }">
                  <i id="icon-location" class="fa-solid fa-location-dot"></i>
                  <span id="address">${list.post_address}</span>
               </a>
            </div>   
               
         </div>   
      </c:forEach>
   </div>
   
   
<!--  
   <div class="pagination">   
      <c:forEach begin="${pagination_start}" end="${pagination_end}" var="i" >
         <a href="./category?category_id=<'%=request.getParameter("category_id")%>&page=${i }">${i }</a>
      </c:forEach>   
   </div>   
-->

    </main>
 

   <div  class="paging">   
         <ul>
            <c:forEach begin="${pagination_start}" end="${pagination_end}" var="i" >
               <li class="pageItem"><a href="./category?category_id=<%=request.getParameter("category_id")%>&page=${i }">${i }</a></li>
            </c:forEach>   
         </ul>
    </div>





   <!-- 
   * 제목 말줄임 적용하기
   * 업로드 시간 표시하기
   * 지역표시하기
   * 페이지네이션 적용
   * 한줄에 5줄씩 x 몇행?
   
    -->
    
    
     <jsp:include page="../include/footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>