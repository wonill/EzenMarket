<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

   <script type="text/javascript" src="./resources/js/validation.js"></script>

   <title>상품 등록</title>

   <style type="text/css">
     .Top {
        /* display: flex;
        justify-content: space-around; */
        /* margin-left: 80%;         */
        /* margin-top: 15px; */

        border: 4px solid black;
        background-color: black;
     
      }

      .top1 {

        margin-left: 35%;
        color: white;
        font-size: 15px;
        font-weight: bold;   
      }
      
      .top2 {
        font-weight: bold;   
        color: white;
        font-size: 15px;   
      }
      
      /* topMenu의 ID를 가진 태그 안에 <ul> 태그 안에 <li> 태그의 스타일을 지정 */
      .topMenu ul li {   

        list-style: none;
        color: hsl(0, 1%, 27%);
        float: right;
        margin-right: 30px;
      }


      #logo {
        font-size: 40px;
        font-family: 'Knewave', cursive;
      }
      

      a:link {
        text-decoration: none;
      }

      a {
        color: black;
      }

      /* 라디오 버튼 UI삭제*/
      input[name="tab_item"] {
         display: none;
      }

      /* 선택된 탭 스타일 */
      .tabs input:checked+.tab_item {
         background-color: #333333;
         color: #fff;
        
      }

      #wondiv {
        display: flex;
      }
      #wondiv img {
        margin-top: 10px;
      }
      #wondiv span {
        margin-top: 10px;
      }
     


      #upload > img {
      width: 200px;
      height: 200px;
    }

    #images_container{
      width: 2000px;
    }
    #images_container > img{
      border: black 1px solid;
    }


    input[type=file] {
            display: none;
        }

        .my_button {
            display: inline-block;
            width: 200px;
            text-align: center;
            padding: 10px;
            background-color: #006BCC;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }



        .imgs_wrap {

            border: 2px solid #A8A8A8;
            margin-top: 30px;
            margin-bottom: 30px;
            padding-top: 10px;
            padding-bottom: 10px;

        }
        .imgs_wrap img {
            max-width: 150px;
            margin-left: 10px;
            margin-right: 10px;
        }

   </style>

<header>

   <div class="Top">
       <a class="top1" href="">EzenMarket 신규 가입시 <span style="color: orangered;">10%</span> 할인 쿠폰 | </a>
       <a class="top2" href="">[삼성카드]<span style="color: orangered">12만원</span> 캐시백 프로모션</a>
       <a class="top" href=""></a>
   </div>
   
   <nav class="topMenu">
     <ul>
       <li><i class="fa-solid fa-door-open"></i><a class="menuLink" href=""> 로그인</a></li>
       <li><i class="fa-solid fa-user"></i><a class="menuLink" href="">  마이페이지</a></li>
       <li><i class="fa-solid fa-heart"></i><a class="menuLink" href=""> 관심 상품</a></li>
       <!-- <li>SHOPPING BAG</li> -->
     </ul>
   </nav>

   <nav class="head">
     <a id="logo" href="<%=request.getContextPath()%>">EzenMarket</a>
     <input id="search">
   </nav>

   
 </header>




</head>


<body>


  
   <div class="jumbotron">
      <div class="container">
         <h2 class="display-3">
            상품 등록
         </h2>
      </div>
   </div>

   <div class="container">

      <form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post"
         enctype="multipart/form-data">

         <div class="form-group row">
            <label class="col-sm-2">상품 카테고리</label>
            <div class="com-sm-3">
               <select name="job" class="form-control">
                  <option value="">카테고리</option>
                  <option value="여성의류">여성의류</option>
                  <option value="남성의류">남성의류</option>
                  <option value="패션잡화">패션잡화</option>
                  <option value="키즈">키즈</option>
                  <option value="라이프">라이프</option>
                  <option value="기타">기타</option>
               </select>
            </div>
         </div>

         <div class="form-group row">
            <label class="col-sm-2">상품 이름</label>
            <div class="com-sm-3">  
               <input type="text" id="name" name="name" class="form-control">
            </div>
         </div>

         <div class="form-group row">
            <label class="col-sm-2">가격</label>
            <div>
                <div id="wondiv">
                <img src="https://ccimage.hellomarket.com/img/web/regist/price_icon_x3.png" class="price_icon"
                  alt="가격 아이콘" width="20" height="20" />
                  <input type="text" id="unitPrice" name="unitPrice" class="form-control" placeholder="숫자를 입력해주세요"
                  value="">
               <span class="Price__PriceDotText">원</span>
               </div>
            </div>

         </div>

         <div class="form-group row">
            <label class="col-sm-2">상품 설명</label>
            <div class="com-sm-5">
               <textarea name="description" cols="50" rows="2" class="form-control"></textarea>
            </div>
         </div>

         <div class="form-group row">
            <label class="col-sm-2">제조사</label>
            <div class="com-sm-3">
               <input type="text" name="manufacturer" class="form-control">
            </div>
         </div>

         <div class="form-group row">
            <label class="col-sm-2">상품 컨디션</label>
            <div class="tabs">
               <input id="all" type="radio" name="tab_item" checked>
               <label class="tab_item" for="all">새상품 (미개봉)</label>
               <input id="programming" type="radio" name="tab_item">
               <label class="tab_item" for="programming">거의 새상품</label>
               <input id="design" type="radio" name="tab_item">
               <label class="tab_item" for="design">사용감 있는 깨끗한 상품</label>
               <input id="design2" type="radio" name="tab_item">
               <label class="tab_item" for="design2">사용 흔적이 많이 있는 상품</label>
            </div>
         </div>

         <div class="form-group row">
            <label class="col-sm-2">수량</label>
            <div class="com-sm-3">
               <input type="text" id="unitsInStock" name="unitsInStock" class="form-control">
            </div>
         </div>

         <div class="form-group row">
            <label class="col-sm-2">상태</label>
            <div class="com-sm-5">
               <input type="radio" name="condition" value="New"> 새제품 &emsp;
               <input type="radio" name="condition" value="Old"> 중고 제품
            </div>
         </div>
<!-- 파일 업로드 -->

<div>
   <h3><b>이미지 업로드</b></h3>
   <div class="input_wrap">
       <a href="javascript:" onclick="fileUploadAction();" class="my_button">파일 업로드</a>
       <input type="file" id="input_imgs" multiple/>
   </div>
</div>

<div>
   <div class="imgs_wrap">
       <img id="img" />
   </div>
</div>

<a href="javascript:" class="my_button" onclick="submitAction();">업로드</a>


 <!-- 등록하기 -->
         <div class="form-group row">
            <div class="col-sm-offset-2 col-sm-10">
               <input type="button" class="btn btn-dark" value="등록" onclick="CheckAddProduct()">
            </div>
         </div>

      </form>
   </div>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">

// 이미지 정보들을 담을 배열
var sel_files = [];


$(document).ready(function() {
    $("#input_imgs").on("change", handleImgFileSelect);
}); 

function fileUploadAction() {
    console.log("fileUploadAction");
    $("#input_imgs").trigger('click');
}

function handleImgFileSelect(e) {

    

    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);

    var index = 0;
    filesArr.forEach(function(f) {
        if(!f.type.match("image.*")) {
            alert("확장자는 이미지 확장자만 가능합니다.");
            return;
        }

        sel_files.push(f);

        var reader = new FileReader();
        reader.onload = function(e) {
            var html = "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("+index+")\" id=\"img_id_"+index+"\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'></a>";
            $(".imgs_wrap").append(html);
            index++;

        }
        reader.readAsDataURL(f);
        
    });
}



function deleteImageAction(index) {
    console.log("index : "+index);
    console.log("sel length : "+sel_files.length);

    sel_files.splice(index, 1);

    var img_id = "#img_id_"+index;
    $(img_id).remove(); 
}

function fileUploadAction() {
    console.log("fileUploadAction");
    $("#input_imgs").trigger('click');
}

function submitAction() {
    console.log("업로드 파일 갯수 : "+sel_files.length);
    var data = new FormData();

    for(var i=0, len=sel_files.length; i<len; i++) {
        var name = "image_"+i;
        data.append(name, sel_files[i]);
    }
    data.append("image_count", sel_files.length);
    
    if(sel_files.length < 1) {
        alert("한개이상의 파일을 선택해주세요.");
        return;
    }           

    var xhr = new XMLHttpRequest();
    xhr.open("POST","./study01_af.php");
    xhr.onload = function(e) {
        if(this.status == 200) {
            console.log("Result : "+e.currentTarget.responseText);
        }
    }

    xhr.send(data);

}

</script>

</body>

</html>