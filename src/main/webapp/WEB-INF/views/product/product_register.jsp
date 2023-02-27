<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 등록</title>
</head>
<body>
 	
 	
 		
        <label>상품 카테고리</label>
        <div>

            <!-- value : category_id-->
           <select name="category">
              <option value="0">카테고리를 선택하세요</option>
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

        <div>
        상품이름
        <input type="text"/>
        </div>

        <div>가격 <input type="text">원</div>

        <div>이미지 업로드</div>
        <div><input type="file"/></div>

        <input type="text" id="sample5_address" placeholder="거래지역">
        <input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
        <div id="map" style="width:300px;height:300px;margin-top:10px;display:none"></div>

        <div>상품설명</div>
        <textarea cols="90" rows="30"></textarea>
        
       
	


















    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=e47856cfcf539f7992f903a405faeb07&libraries=services"></script>
    <script>
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
    </script>
     
</body>
</html>
