<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상점관리</title>

<style>
	.navigation ul {
		display:flex;
		justify-content: space-around;
	}
	
	.navigation ul li {
		list-style: none;
		float: left;
	}
	
	 .navigation2 {		
		top: 300px;
		
	} 
	
	.navigation2 ul {
		display: flex;
		justify-content: space-around;
	} 
	
	
	.navigation2 ul li {
		list-style: none;
		float: left;
	}
	
	
</style>
</head>
<body>

	  <form id="searchForm" action="./storeManagingWithPaging" method="GET">
           <div class="searchbox">
            <input class="search" id="search" type="search" name="myPageTitle" placeholder=" 검색어 입력">
            <button type="submit" id="searchBtn">검색</button>
           </div>     
      </form>
	
	<div>
		<nav class="navigation">
			<ul class="postcolum">
				<li>사진</li>
				<li>판매상태</li>
				<li>상품명</li>
				<li>가격</li>
				<li>찜</li>
				<li>등록일</li>			
			</ul>
		</nav>				
	<c:forEach var="sell" items="${myPageTitle }">
		<nav class="navigation2">	
			<ul class="postInfo">
				<li><img src="${sell.image_url }" width="100px" alt="상품"></li>
				<li>
					<select>
						<option>판매완료</option>
						<option>판매중</option>
						<option>삭제</option>
					</select>
				</li>
				<li>${sell.title}</li>
				<li>${sell.price}</li>
				<li>찜</li>
				<li>${sell.updateDateTime }</li>			
			</ul>
		</nav>
	</c:forEach>
	</div>
	
	<!-- 페이지네이션 -->
	<div style="display: block; text-align: center; margin-top: 200px;">
		<c:if test="${paging.startPage != 1 }">
			<a href="storeManagingWithPaging?myPageTitle=${keyword }&nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
			var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p } </b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="storeManagingWithPaging?myPageTitle=${keyword }&nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="storeManagingWithPaging?myPageTitle=${keyword }&nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	</div>

</body>
</html>