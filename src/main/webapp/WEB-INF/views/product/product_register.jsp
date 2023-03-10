<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>이젠마켓 | 상품등록</title>
<style>
 	.container{
		
		position: relative;
		top: 100px;
		left: 15%;
		font-size: 25px;
		
	}
	
	.Title {
		margin-top: 30px;
		font-size: 29px;
		font-weight: bold;
	}
	
	.line {
	
		border: 1px solid #e2e2e2;
		width: 1060px;
		margin-top: 50px;
		
	}
	
	.line2 {
	
		border: 1px solid #e2e2e2;
		width: 1060px;
		margin-top: 36px;
		
	}
	
	.line3 {
	
        border: 1px solid white;
		width: 1060px;
        margin-top: 200px;
        margin-left: 450px;
        
    }
        
     .line4 {
     	border: 1px solid #e2e2e2;
		width: 1060px;
        margin-top: 300px;
     }
	
	.title {
		font-size: 24px;	
		
	}
	
	.flex-wrap {
		display: flex;
        flex-wrap: wrap;
		margin-top: 50px;
	}
	
	.flex-wrap2 {
		
		margin-top: 40px;
	}
	
	.textbox {
		position: relative;
		left: 200px;
		
	}
	
	.dropbar {
		height: 50px;
	}
	
	.address {
		height: 50px;		
	}
	
	.price {
		height: 50px;
		width: 250px;
	}
	
	#addressBtn {
		margin-left: 10px;
		color: white;
		background-color: black;
		border: 1px solid black;
		border-radius: 10px;
		
	}
	
	#product_title {
		width: 700px;
		height: 50px;
	}
	
	
	.short-title {
		margin-left: 43px;
	}
	
	  input[type=file] {
            display: none;
        }
        #imgs_box{
            position: relative;    
            width: 1200px;
            min-height: 460px;
            padding-bottom: 40px;
                                                                                                                                                                                                                                                       
        }
        #left_block{
            float: left;
            position: absolute;
            width: 200px;
            min-height: 460px;
            height: 100%;
            border: solid 0px black;
            padding-top: 30px;
            font-size: 24px;
    
        }
        .imgs_wrap {
            float: left;
            width: 997px;
            height: 70%;
            border: 0px solid #A8A8A8;
           
            min-height: 210px;
           
            padding-top: 40px;
            padding-bottom: 10px;
            margin-left: 300px;
            margin-bottom: 10px;
            
        }
        .imgs_wrap img {
            width: 215px;
            height: 215px;
            margin-left: 15px;
            margin-right: 15px;
            margin-bottom: 15px;
        }
        #description{
       	    margin-top: 30px;
            margin-left: 300px;
            color: gray;
            width: 800px;
            padding: 10px;
            font-size: 14px;
        }
        
    /*     .btnContainer {
        	position: relative;
        	top: 50px;
        	left: 70%;
        	border: 1px solid black;
        	background-color: black;
        	width: 180px;
        	height: 70px;
        	
        } */
        
        .submit-background {
        	position: sticky; 
        	 top: 2px; 
        	bottom: 0;
        	border: 1px solid rgb(234, 234, 234);
        	width: 1902px;
        	height: 150px;
        	background-color: rgb(234, 234, 234);
        }
        
 	    /*   .my_button {
        	position: relative;
        	top: 5px;
        	left: 25px;
        	color: white;	
        	font-size: 30px;
	
        }
         */
         
        #add_btn{
        	width: 200px;
        	height: 180px;
        }
        
        #registerBtn {
        	position: relative;
        	top: 40px;
        	left: 71%;
        	color: white;	
        	background: black;
        	font-size: 30px;
        	width: 180px;
        	height: 70px;
        }
        
        
      
</style>
</head>
<body>
 
    <jsp:include page="../include/header.jsp" />
 	<jsp:include page="../include/side.jsp" /> 
 
 <!-- 내가 만든 메서드 경로 주소 -> action -->
<form action="./insert" method="POST">

 <div class="container">
   
	 <!-- <div class="line"></div> -->
  	 <div class="Title">기본정보</div>
   
    <div class="line"></div>

<div>
   <div>
       <input type="file" id="input_imgs" multiple/>
   </div>
</div>

<div id="imgs_box">
<div id="left_block">상품이미지</div>
   <div class="imgs_wrap">
    <a href="javascript:" onclick="fileUploadAction();"><img id="add_btn" src="https://www.pngplay.com/wp-content/uploads/8/Upload-Icon-Logo-PNG-Clipart-Background.png"/></a>
   </div>
   <div id="description"><b style="color: gray;">* 상품 이미지는 640x640에 최적화 되어 있습니다.</b><br>
        - 상품 이미지는 PC에서는 1:1, 모바일에서는 1:1.23 비율로 보여집니다.<br>
        - 이미지는 상품 등록 시 정사각형으로 잘려서 등록됩니다.<br>
        - 이미지를 클릭할 경우 원본 이미지를 확인할 수 있습니다.<br>
        - 이미지를 클릭 후 이동하여 등록순서를 변경할 수 있습니다.<br>
        - 큰 이미지일 경우 이미지가 깨지는 경우가 발생할 수 있습니다.<br>
       	  최대 지원 사이즈인 640 X 640으로 리사이즈 해서 올려주세요.(개당 이미지 최대 10M)
   </div>
</div>
	
	<div class="line2"></div>
	
	<div class="flex-wrap">
	<div class="title">제목</div>
	 <input type="text" id="product_title" class="textbox short-title" name="title" placeholder="상품 제목을 입력해주세요.">
	</div>
	 
	 <div class="line2"></div>
	 
	 <div class="flex-wrap">
       <div class="title">카테고리</div>
	        <div class="Category"> 
            <!-- value : category_id-->
           <select name="category_id"  class="textbox dropbar">
              <option value="">카테고리를 선택하세요</option>
              <option value="1">남성의류</option>
              <option value="2">여성의류</option>
              <option value="3">신발</option>
              <option value="4">가방</option>
              <option value="5">시계</option>
              <option value="6">주방용품</option>
              <option value="7">인테리어</option>
              <option value="8">생필품</option>
              <option value="9">건강용품</option>
              <option value="10">반려용품</option>
              <option value="11">사무용품</option>
              <option value="12">아웃도어</option>
              <option value="13">운동화</option>
              <option value="14">노트북/PC</option>
              <option value="15">휴대전화</option>
              <option value="16">주변기기</option>
              <option value="17">기타용품</option>
           </select>
        </div>
 	 </div>
	 
		<div class="line2"></div>
		
	<div class="flex-wrap">
	  <div class="title">거래지역</div>
	  <div class="textbox address">
	      <input type="text" id="sample5_address" placeholder="거래지역" name="post_address">
	      <input type="button" id="addressBtn" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
	      <div id="map" style="width:290px;height:280px;margin-top:10px;display:none"></div>
	  </div>
	</div>	
   		
	<div class="line4"></div>
	
	<div class="flex-wrap">
     <div class="title">가격 <input type="text" class="textbox short-title price" name="price" placeholder="숫자만 입력해주세요.">원</div>
	<!-- <input type="radio"> 배송비 포함 -->
	</div>
	
      <div class="line2"></div>
      
	  <div class="flex-wrap">
        <div class="title">상품설명</div>
        <textarea class="textbox" cols="60" rows="8" name="post_content" placeholder=
        "여러 장의 상품 사진과 구입 연도, 브랜드, 사용감, 하자 유무 등 구매자에게 필요한 정보를 꼭 포함해 주세요. (10자 이상)"></textarea>
	  </div>
	</div>
	
	<!-- form태그로 감싸서 type을 submit으로 -->
	<div class="line3"></div> 
	
	<div class="submit-background">		
			<button type="submit" id="registerBtn">등록하기</button>	
	</div> 

 	
</form>

	<!-- 	<div class="submit-background">																		
        <div class="btnContainer"><a href="javascript:" class="my_button" onclick="submitAction();"></a></div>
		</div>  -->





	<!-- 자바스크립트  -->
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=e47856cfcf539f7992f903a405faeb07&libraries=services"></script>
   <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script>
    // 지도 API
    
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div
            mapOption = {
                center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
                level: 5 // 지도의 확대 레벨
            };
    
        //지도를 미리 생성
        var map = new daum.maps.Map(mapContainer, mapOption);
        //주소-좌표 변환 객체를 생성
        var geocoder = new daum.maps.services.Geocoder();
        //마커를 미리 생성
        var marker = new daum.maps.Marker({
            position: new daum.maps.LatLng(37.537187, 127.005476),
            map: map
        });
    
    
        function sample5_execDaumPostcode() {
           
            new daum.Postcode({
                oncomplete: function(data) {
                    var addr = data.address; // 최종 주소 변수
                    
                    // 주소 정보를 해당 필드에 넣는다.
                    document.getElementById("sample5_address").value = addr;
                    // 주소로 상세 정보를 검색
                    geocoder.addressSearch(data.address, function(results, status) {
                        // 정상적으로 검색이 완료됐으면
                        if (status === daum.maps.services.Status.OK) {
    
                            var result = results[0]; //첫번째 결과의 값을 활용
    
                            // 해당 주소에 대한 좌표를 받아서
                            var coords = new daum.maps.LatLng(result.y, result.x);
                            // 지도를 보여준다.
                            mapContainer.style.display = "block";
                            map.relayout();
                            // 지도 중심을 변경한다.
                            map.setCenter(coords);
                            // 마커를 결과값으로 받은 위치로 옮긴다.
                            marker.setPosition(coords)
                        }
                    });
                }
            }).open();
        }
        
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