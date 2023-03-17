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
 	vertical-align:middle;
 	line-height: 30px;
 }
 
 #updated{
 	vertical-align:middle;
 	line-height: 30px;
 }
 
 td{
 	vertical-align:middle;
 }
 
 
 .page {width: 100%;   position:relative; margin-top: 60px; margin-bottom: 243px;}
 .paging {position: absolute; left: 47.5%;}
 .pagination {justify-content: center;}  
 .pagination > li > a {margin-right: 5px; color: black;}

</style>
</head>
<body>
  <jsp:include page="../include/header.jsp"/>
  <br><br><br>

 <div style="margin-left: 21%; margin-right: 9%;">
 
 <div style="font-weight:bold; font-size: 40px; margin-top: 40px;">상점 관리</div>
 <br>
<table class="table">
<thead class="thead-dark">
<tr>
   	<th scope="col">사진</th>
    <th scope="col">판매 상태</th>
    <th scope="col">상품명</th>
    <th scope="col">가격</th>
    <th scope="col">찜</th>
    <th scope="col">최근 수정일</th>
    <th scope="col">기능</th>
</tr>
</thead>
<tbody>
<c:choose>
  <c:when test="${verified eq 'yes' }">
    <c:forEach items="${managements}" var="mngs">
    <tr>
        <td>
            <a href="<%=request.getContextPath()%>/product?id=${mngs.post_Id}"><img src="${mngs.image_url}" class="my-image"></a>
        </td>
        <td>
            <select onchange="show(this.id)" id="${mngs.post_Id }">
                <option value="0">판매중</option>
                <option value="1"<c:if test="${mngs.sales_status ne 0}">selected</c:if>>판매완료</option>
            </select>
        </td>
        <td id="title">${mngs.title}</td>
        <td><fmt:formatNumber value="${mngs.price}" pattern="#,###" />원</td>
        <td>${mngs.zzimCount }</td>
        <td id="updated">${mngs.createdTimeAgo}</td>
        <td style="line-height: 30px;">
        <button class="btn btn-primary" style= "background-color: red; font-weight: bold; border: 0">&nbsp;UP&nbsp;</button>
        <br>
        <button class="btn btn-primary" style="background-color: black; font-weight: bold; border: 0; margin-top: 10px">삭제</button>
        </td>
    </tr>
    </c:forEach>
  </c:when>
</c:choose>
</tbody>
</table>
   
                                <div class="page">
      <nav aria-label="Page navigation example" class="paging">
         <ul class="pagination">
            <c:forEach begin="${pagination_start}" end="${pagination_end}" var="i" >
               <li class="page-item"><a class="page-link" href="./management?user_number=${user_number }&page=${i }">${i }</a></li>
            </c:forEach>   
         </ul>
      </nav>
   </div>
  

</div>
	<jsp:include page="../include/sales_status.jsp"/>
   <jsp:include page="../include/footer.jsp"/>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<script>
      function show(id) {
    	const sales_status_box = document.getElementById(id);
    	if(sales_status_box.options[0].selected == true){
    		 if(confirm("상품 상태를 변경하시겠습니까 ?") == true){
    		        alert("변경되었습니다");
    		    }
    		    else{
    		        return ;
    		    }
    	} else if(sales_status_box.options[1].selected == true){
	       document.querySelector(".background").className = "background show";	    		
	    };
    	
    	
    	
      }

      function close() {
        document.querySelector(".background").className = "background";
        document.querySelector("#select_user").value = 0;

      }

     

      
      document.querySelector("#close").addEventListener("click", close);
</script>


</body>
</html>