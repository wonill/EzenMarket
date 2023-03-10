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
</head>
<body>

   <jsp:include page="../include/header.jsp"/>
   
   <main>
   
   <jsp:include page="./product_category.jsp" />
         
   <div id="recomend">오늘의 상품 추천</div>
   <!-- 상품 사진들 넣기-->
   
   <div class="item_list">
      <c:forEach items="${cateList}" var="list">   
         <div class="item_card">
         
            <div class="item_img">
               <a href="product?id=${list.post_id }">
               <img src="${list.image_url }" alt="상품">
               </a>
            </div>
            
            <div class="text">
               <h5>
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
                  <i class="fa-solid fa-location-dot"></i>
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

   <nav aria-label="Page navigation example">
      <ul class="pagination">
         <c:forEach begin="${pagination_start}" end="${pagination_end}" var="i" >
            <li class="page-item"><a class="page-link" href="./category?category_id=<%=request.getParameter("category_id")%>&page=${i }">${i }</a></li>
         </c:forEach>   
      </ul>
   </nav>

   </main>

   <!-- 
   * 제목 말줄임 적용하기
   * 업로드 시간 표시하기
   * 지역표시하기
   * 페이지네이션 적용
   * 한줄에 5줄씩 x 몇행?
    -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>