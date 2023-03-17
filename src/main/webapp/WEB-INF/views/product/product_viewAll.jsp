<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/d04567b543.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<style>

   a:link {text-decoration: none;}   
   a {color: black;}
   
   .item_list {
        border: 1px solid rgb(255, 255, 255);
        width: 74%;
        height: 90%;
        margin-top: 100px;
        margin-left: 20%;
        margin-right: 20%;
        display: flex;
        flex-wrap: wrap;
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
        max-width: 120px;
        overflow: hidden;        
        text-overflow: ellipsis;     
        white-space: nowrap;       
        word-break:break-all;
   }
   
   #recommend {font-size: 1.5em; margin: 10% 0 -3% 20%;}
   #icon-recommend {font-size:1em; color:#FFCC33;}
   #icon-location {color: black;}
   
   .page {width: 100%;   position:relative; margin-top: 60px; margin-bottom: 243px;}
   .paging {position: absolute; left: 47.5%;}
   .pagination {justify-content: center;}  
   .pagination > li > a {margin-right: 5px; color: black;}
   
</style>
</head>
<body>

   <jsp:include page="../include/header.jsp"/>

   <div id="recommend"> 전체 상품 보기 
      <ion-icon id="icon-recommend" name="sparkles-sharp"></ion-icon>        
   </div>
            
    <!-- 상품 사진들 넣기-->
  
   <div class="item_list" >
      
      <c:forEach items="${prodList}" var="list">   
         <div class="item_card">         
               <div class="item_img">
               <a href="product?id=${list.post_id }"><img src="${list.image_url }" alt="상품"></a>
               </div>            
            <div class="text">              
               <a href="product?id=${list.post_id }"><p id="title">${list.title }</p></a>            
               <a href="product?id=${list.post_id }"><span id="price"><fmt:formatNumber value="${list.price }" pattern="#,###" />원</span></a>   
               <a href="product?id=${list.post_id }"><span id="created"> ${list.createdTimeAgo }</span></a>
            </div>      
            <div class="text2">
               <a href="product?id=${list.post_id }">
               <i id="icon-location" class="fa-solid fa-location-dot"></i><span id="address"> ${list.post_address}</span>
               </a>
            </div>   
         </div>   
      </c:forEach>
   </div>

   <div class="page">
      <nav aria-label="Page navigation example" class="paging">
         <ul class="pagination">
            <c:forEach begin="${pagination_start}" end="${pagination_end}" var="i" >
               <li class="page-item"><a class="page-link" href="./viewAll?page=${i }">${i }</a></li>
            </c:forEach>   
         </ul>
      </nav>
   </div>
  
   <jsp:include page="../include/footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>