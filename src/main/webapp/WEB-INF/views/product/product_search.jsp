<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>검색페이지</title>    
    <link rel="preconnect" href="https://fonts.googleapis.com">    
    <style>
    
    html,body {
      margin: 0;   
      padding: 0;   
   }
   a:link {
      text-decoration: none;
   }
   
   a {
      color: black;
   }
   
   /* .head {
            padding-top: 15px;
            height:  height: 70px;
         
         } */
   .selling {
      border-radius: 10px;
   }
   
   .item_list {
      border: 1px solid rgb(255, 255, 255);
      width: 90%;
      margin-top: 100px;
      margin-left: 12.2%;
      display: flex;
      flex-wrap: wrap;
   }
   
   .item_list .item_card {
      border: solid 0.2px #00000025;
      height: 350px;
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
      max-width: 170px;
      display: block;
      white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
      margin-top: 5px;
   }
   
   #icon-location {
      position: relative;
      float: left;
      margin: 5px 5px 5px 0;
   }

   .a-pagination {
      text-decoration: none;
      border: 1px solid lightgray;
      padding: 4px;
      padding-left: 10px;
      padding-right: 10px;
      margin-right: 5px;
      border-radius: 10px;
      color: black;
   }
   
   .a-pagination:hover {
      color: lightgray;
   }
   
   #newest {
      font-size: 16px;
      color: white;
      border: 1px solid black;
      background-color: black;
      position: relative;
      top: 40px;
      margin-top: 150px;
      margin-left: 1460px;
      cursor:pointer;
   }
   
   #highest {
      font-size: 16px;
      position: relative;
      top: 40px;
      color: white;
      border: 1px solid black;
      background-color: black;
      margin-left: 12px;
      cursor:pointer;
   }
   
   #lowest {
      font-size: 16px;
      position: relative;
      color: white;
      border: 1px solid black;
      background-color: black;
      margin-left: 1605px;
      top: 14px;
      cursor:pointer;
   }
   
   #countProducts {
      color: gray;
      margin-left: 230px;
      font-size: 20px;
   }
   
   div:last-child {
      padding-top: 10px;
      margin-bottom: -15px;
   }

</style>
    
    <script>
   function selChange() {
      var sel = document.getElementById('cntPerPage').value;
      location.href="searchPagenation?title=${keyword }&nowPage=${paging.nowPage}&cntPerPage="+ sel;
   }
   
   
   </script>
   
</head>
<body style="overflow-x: hidden">

   
   
        <jsp:include page="../include/header.jsp"></jsp:include> 
        <jsp:include page="../include/side.jsp"></jsp:include> 
   

     <c:if test="${searchKeyword != 'empty'}">         
   <%--          옵션 선택
           <div style="float: right;">
           <select id="cntPerPage" name="sel" onchange="selChange()">
            <option value="5"
               <c:if test="${paging.cntPerPage == 5}">selected</c:if>>5개 보기
            </option>
            <option value="10"
               <c:if test="${paging.cntPerPage == 10}">selected</c:if>>10개 보기
            </option>
            </select>
         </div>   --%>
         
            <nav>
               <button id="newest" onclick="location.href='searchPagenation?title=${keyword }&type=latest'">최신순</button>
               <button id="highest" onclick="location.href='searchPagenation?title=${keyword }&type=high'">고가순</button>
               <button id="lowest" onclick="location.href='searchPagenation?title=${keyword }&type=low'">저가순</button>
            </nav>                           
                  
          <div id="countProducts">총 <span style="font-size: 16px; color:black; font-weight: bold;">${searchCnt}</span>개의 상품이 검색 되었습니다</div>     
                   
         <div style="border: 1px solid white;width: 86%;margin-left: 12.2%;">
            <hr>         
         </div>
                      
                <%-- 상품 사진들 넣기 --%>
             <div class="item_list">
           <c:forEach var="product" items="${title }">
               <div class="item_card">
                   
                 <div class="item_img">
                   <a class="a-tag" href="product?id=${product.post_id }">
                      <img src="${product.image_url }" alt="상품">
                     </a>
                 </div>
                 
                 <div class="text">                   
                      <a class="a-tag" href="product?id=${product.post_id }">
                         <!-- <i class="fa-solid fa-heart-circle-plus"  style="float: right; color: gray;"></i> -->
                         <p id="title">${product.title }</p>
                      </a>
                  
                     <a href="product?id=${product.post_id}">
                       <span id="price"><fmt:formatNumber value="${product.price }" pattern="#,###" />원</span>
                    </a>   
                    
                    <a href="product?id=${product.post_id}">   
                        <span id="created">${product.createdTimeAgo}</span>
                    </a>
                  </div>
                  
                      <div class="text2">
                        <a href="product?id=${product.post_id }">
                           <i id="icon-location" class="fa-solid fa-location-dot"></i>
                           <span id="address">${product.post_address}</span>
                        </a>
                      </div>
                 
                 
               </div>           
              </c:forEach>
             </div>
             
             
                <%-- 페이지네이션 --%>

           <div style="display: block; text-align: center; margin-top: 220px; margin-left: 124px; margin-bottom: 150px;">      
            <c:if test="${paging.startPage != 1 }">
               <a class="a-pagination" href="searchPagenation?title=${keyword }&nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
            </c:if>
            <c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
               <c:choose>
                  <c:when test="${p == paging.nowPage }">
                     <b class="a-pagination current-pagination">${p } </b>
                  </c:when>
                  <c:when test="${p != paging.nowPage }">
                     <a class="a-pagination" href="searchPagenation?title=${keyword }&nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
                  </c:when>
               </c:choose>
            </c:forEach>
            <c:if test="${paging.endPage != paging.lastPage}">
               <a class="a-pagination" href="searchPagenation?title=${keyword }&nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
            </c:if>
         </div> 

      </c:if>           
                
 
          <%-- 검색결과가 없는 경우 --%>
             <c:if test="${searchKeyword == 'empty'}">     
             
             <i class="fa-solid fa-circle-exclamation" style="color:gray; position: relative; left:850px; top: 256px; font-size:90px;"></i>    
                <div style="color:gray; font-size:20px; margin-top: 50px; font-weight: bold; position: relative; 
                         left: 750px; top: 270px; height: 800px; "> 
                   <span  style="color:red; font-size:20px; font-weight: bold; ">
                      '<c:out value = "${keyword}"/>'
                   </span>
                에 대한 검색결과가 없습니다.
                </div>     
             </c:if>
                      

        <jsp:include page="../include/footer.jsp"/>  
               
 
</body>
</html>


