<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sales_management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


<style>
tr{
 text-align: center;
}
tbody {
  height: 50px;
  line-height: 150px; 
  text-align: center;
}
.my-image {
    width: 200px;
    height: 180px;
}
th {
  width: 200px;
}

#title{
	width: 200px;
	heigt: 180px;
}

 #title{
 	vertical-align:middle;
 	line-height: 30px;
 }
 
 td{
 	vertical-align:middle;
 }

</style>
</head>
<body>
  <jsp:include page="../include/header.jsp"/>
  <br><br><br>
  
 <div style="margin-left: 15%; margin-right: 15%;">
<table class="table">
<thead class="thead-dark">
<tr>
   	<th scope="col">사진</th>
    <th scope="col">판매 상태</th>
    <th scope="col">상품명</th>
    <th scope="col">가격</th>
    <th scope="col">최근 수정일</th>
    <th scope="col">삭제</th>
</tr>
</thead>
<tbody>
<c:choose>
  <c:when test="${verified eq 'yes' }">
    <c:forEach items="${managements}" var="mngs">
    <tr>
        <td>
            <img src="${mngs.image_url}" class="my-image">
        </td>
        <td>
            <select>
                <option value="">판매중</option>
                <option value="">예약중</option>
                <option value="">판매완료</option>
            </select>
        </td>
        <td id="title">${mngs.title}</td>
        <td>${mngs.price}</td>
        <td>${mngs.updated}</td>
        <td><button class="btn btn-primary">삭제</button></td>
    </tr>
    </c:forEach>
  </c:when>
</c:choose>
</tbody>
</table>
   
                                <c:forEach begin="${pagination_start }" end="${pagination_end }" var="i">
                               <a href="./management?user_number=${user_number }&page=${i }">${i }</a>
                             </c:forEach>
</div>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>