<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>검색페이지</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    
    <style>
      .selling {
    	  /* border: solid 1px white; */
    	  border-radius: 10px;
      	  /* padding: 20px; */
      }
      .item_list {
        border: 1px solid white;
        width: 70%;
        margin-top: 100px;
        margin-left: 24.5%;
        display: flex;
        flex-wrap: wrap;
     
      }
      .item_list .item_card {
        border: solid 0.2px #f7e6e625;
        height: 350px;
        width: 230px;
        padding: 5px;
        margin-bottom: 15px;
        
      }
      .item_list .item_card img {
        
        height: 210px;
        width: 214px;
        border-radius: 3px;
      }
      
      
      .item_list .item_card .text {
        margin-top: 10px;
        font-size: 26px;
        color: black;
        
      
        
      }
      
      .item_list .item_card .text p {
        font-size: 20px;
        opacity: .8;
        color: black;
        
      }
      
      .productTitle {
      		overflow: hidden;        
            text-overflow: ellipsis;     
            white-space: nowrap;       
            word-break:break-all;
            max-width: 200px;
      }
    </style>
    
    <script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href="searchPagenation?title=${keyword }&nowPage=${paging.nowPage}&cntPerPage="+ sel;
	}
	
	
	</script>
	
</head>
<body>


        <jsp:include page="../include/header.jsp"></jsp:include> 
        <jsp:include page="../include/category.jsp"></jsp:include> 
	
  	<c:if test="${searchKeyword != 'empty'}">         
	<%-- 		   옵션 선택
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
		   
		   		    	     	   
		   	<button onclick="location.href='searchPagenation?title=${keyword }&type=latest'">최신순</button>
		   	<button onclick="location.href='searchPagenation?title=${keyword }&type=high'">높은순</button>
		   	<button onclick="location.href='searchPagenation?title=${keyword }&type=low'">낮은순</button>
	          	   
		   		   	
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
	           	   <h5>
	               	 <a class="a-tag" href="product?id=${product.post_id }">
	              		  <i class="fa-solid fa-heart-circle-plus"  style="float: right; color: gray;"></i>
	               	 <div class="productTitle">${product.title }</div>
	               	 </a>
	                </h5>
	                <p>${product.price }</p>
	                <p>${product.post_address}</p>
	              	<p style="margin-left: 140px; margin-top: -20px;"> ${product.createdTimeAgo}</p> 
	              	
	              </div>
	            </div>           
	           </c:forEach>
	          </div>
	          
	          
		          <%-- 페이지네이션 --%>
		     <div style="display: block; text-align: center; margin-top: 200px;">		
				<c:if test="${paging.startPage != 1 }">
					<a href="searchPagenation?title=${keyword }&nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
				</c:if>
				<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
					<c:choose>
						<c:when test="${p == paging.nowPage }">
							<b>${p } </b>
						</c:when>
						<c:when test="${p != paging.nowPage }">
							<a href="searchPagenation?title=${keyword }&nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
						</c:when>
					</c:choose>
				</c:forEach>
				<c:if test="${paging.endPage != paging.lastPage}">
					<a href="searchPagenation?title=${keyword }&nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
				</c:if>
			</div>
			     
	          
  </c:if>	          
	          
	        
	         <%-- 검색결과가 없는 경우 --%>
	          <c:if test="${searchKeyword == 'empty'}">     
	          
	          <i class="fa-solid fa-circle-exclamation" style="color:gray; position: relative; left:440px; top: 100px; font-size:90px;"></i>    
	          	<div style="color:gray; font-size:20px; margin-top: 50px; font-weight: bold; position: relative; left: 300px; top: 100px;"> 
	          		<span  style="color:red; font-size:20px; font-weight: bold;">
	          			'<c:out value = "${keyword}"/>'
	          		</span>
	          	에 대한 검색결과가 없습니다.
	          	</div>	  
	          </c:if>
	          
          

	    
	<jsp:include page="../include/footer.jsp"></jsp:include>
	    
	    
	     
        
 
</body>
</html>