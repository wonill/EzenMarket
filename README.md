# EzenMarket
중고거래 웹사이트 [EzenMarket](http://43.201.115.156/)


## 🖥️ 프로젝트 소개 
환경과 합리적 소비에 대한 관심의 증가로 리셀 시장이 확산되는 것에 주목하여 중고거래 사이트로 주제를 정하였습니다.
이 프로젝트는 회원이 직접 중고 물품을 등록하고, 채팅을 이용한 소통을 통해 직접 거래를 가능하게 하는 것에 초점을 두고 제작하였습니다.

웹페이지는 각각 회원과 관리자 페이지로 구분됩니다.

* 판매자인 회원은 중고 물품을 등록하여 물건을 판매할 수 있습니다. 판매 등록한 물건은 마이페이지에서 판매 상품 조회, 수정, 삭제 및 끌어올리기가 가능합니다. 내상품관리에서 상품의 판매 여부를 변경 시, 해당 상품에 대해 채팅한 회원 중 거래를 완료하고 싶은 회원을 선택하여 상품의 상태를 거래완료로 변경할 수 있습니다. 채팅 내 메뉴를 통해 거래한 구매자에게 후기와 별점을 남길 수 있고, 불건전한 채팅 이용자를 신고할 수도 있습니다.

* 구매자인 회원은 카테고리별 조회를 통해 상품을 조회할 수 있고, 검색기능을 통해 원하는 상품을 찾을 수 있습니다. 상품 이미지를 클릭하면 상품에 대한 상세한 정보, 판매자 정보, 판매자의 연관 상품을 확인할 수 있고, 찜하기 기능을 통해 관심 상품을 저장할 수 있습니다. 구매자는 구매를 원하는 해당 상품 상세페이지에서 판매자에게 채팅을 걸어 상품 구매에 대한 문의를 할 수 있습니다. 채팅 내 메뉴를 통해 거래한 판매자에게 후기와 별점을 남길 수 있고, 불건전한 채팅 이용자를 신고할 수도 있습니다. 

* 회원은 불건전한 이용자에 대한 회원신고, 부적절한 후기와 채팅에 대해 각각 후기신고와 채팅신고를 할 수 있습니다. 해당 이용자에게 확인하지 않은 채팅이 있는 경우 메인페이지의 알림 기능을 통해 확인할 수 있습니다.

* 관리자 페이지에서는 유저관리에서 회원정보 조회와 최다 거래지역과 총 회원수, 경고받은 회원수, 일일 사이트 접속자 수를 주간으로 확인할 수 있습니다. 게시물 관리에서는 게시물을 시간대별로 거래만료된 조건을 기준으로 게시물 정보와 판매 여부 등을 조회할 수 있고, 전월 대비 게시물 수와 최다 등록된 카테고리를 조회할 수 있습니다. 관리자 페이지에서 배너를 변경하여 웹페이지 메인의 이미지를 변경할 수 있습니다.

## 📆 개발 기간

 * 2023.02.10. ~ 2023.03.24.

### 👫 팀원 구성
 * **총** 5명

### ⚙ 개발 환경
 * `Java 1.8`
 * **IDE** : STS 3.9
 * **Database** : Oracle DB(11g)
 * **ORM** : Mybatis
 * **Server** : Apache Tomcat 9.0
 * **Deployment** : AmazonAWS E2C
 * **Version Control** : GitHub


### ✍️: 기술 스택
 * **Backend** : Java, Oracle
 * **Frontend** : HTML5, CSS3, Javascript, jQuery, Bootstrap



## 🛒 주요 기능

> 메인
 <img src="https://github.com/sj921/readme_images/blob/main/ezenmarket_images/%EB%A9%94%EC%9D%B8.png?raw=true" width="900">


---

> 회원가입
<img src="https://github.com/sj921/readme_images/blob/main/ezenmarket_images/%ED%9A%8C%EC%9B%90%EA%B0%80%EC%9E%85.png?raw=true" width="900">

---

> 로그인
 - 일반 로그인
 <img src="https://github.com/sj921/readme_images/blob/main/ezenmarket_images/%EB%A1%9C%EA%B7%B8%EC%9D%B8.png?raw=true" width="900">

 
 - 카카오 로그인 
 <img src="https://github.com/sj921/readme_images/blob/main/ezenmarket_images/%EC%B9%B4%EC%B9%B4%EC%98%A4%EB%A1%9C%EA%B7%B8%EC%9D%B8.png?raw=true" width="900">


---

> 마이페이지
 - 프로필 + 판매상품
 <img src="https://github.com/sj921/readme_images/blob/main/ezenmarket_images/%EB%A7%88%EC%9D%B4%ED%8E%98%EC%9D%B4%EC%A7%80_1.png?raw=true" width="900">

 - 구매내역
 <img src="https://github.com/sj921/readme_images/blob/main/ezenmarket_images/%EB%A7%88%EC%9D%B4%ED%8E%98%EC%9D%B4%EC%A7%80_2.png?raw=true" width="900">
 
 - 후기
 <img src="https://github.com/sj921/readme_images/blob/main/ezenmarket_images/%EB%A7%88%EC%9D%B4%ED%8E%98%EC%9D%B4%EC%A7%80_3.png?raw=true" width="900">
 
 - 찜하기
 <img src="https://github.com/sj921/readme_images/blob/main/ezenmarket_images/%EB%A7%88%EC%9D%B4%ED%8E%98%EC%9D%B4%EC%A7%80_4.png?raw=true" width="900">
 
 - 다른 이용자의 상점 접속 시
 <img src="https://github.com/sj921/readme_images/blob/main/ezenmarket_images/%EB%A7%88%EC%9D%B4%ED%8E%98%EC%9D%B4%EC%A7%80_5.png?raw=true" width="900">


---

> 판매하기
<img src="https://github.com/sj921/readme_images/blob/main/ezenmarket_images/%EC%83%81%ED%92%88%EB%93%B1%EB%A1%9D(1).png?raw=true" width="900">
<img src="https://github.com/sj921/readme_images/blob/main/ezenmarket_images/%EC%83%81%ED%92%88%EB%93%B1%EB%A1%9D(2).png?raw=true" width="900">

---

> 카테고리별 조회
<img src="https://github.com/sj921/readme_images/blob/main/ezenmarket_images/%EC%83%81%ED%92%88%EC%A1%B0%ED%9A%8C.png?raw=true" width="900">


---

> 상세페이지
 - 판매자가 본인이 올린 상품을 조회 시
 <img src="https://github.com/sj921/readme_images/blob/main/ezenmarket_images/%EC%83%81%EC%84%B8%ED%8E%98%EC%9D%B4%EC%A7%80(%EB%B3%B8%EC%9D%B8_%EC%88%98%EC%A0%95).png?raw=true" width="900">
 <img src="https://github.com/sj921/readme_images/blob/main/ezenmarket_images/%EB%82%B4%EC%83%81%EC%A0%90%EA%B4%80%EB%A6%AC.png?raw=true" width="900">

 - 판매자 외 다른 이용자가 상품을 조회 시
 <img src="https://github.com/sj921/readme_images/blob/main/ezenmarket_images/%EC%83%81%EC%84%B8%ED%8E%98%EC%9D%B4%EC%A7%80.png?raw=true" width="900">
---

> 검색
<img src="https://github.com/sj921/readme_images/blob/main/ezenmarket_images/%EA%B2%80%EC%83%89.png?raw=true" width="900">


---

> 채팅
 - 메뉴
 <img src="https://github.com/sj921/readme_images/blob/main/ezenmarket_images/%EC%B1%84%ED%8C%85.png?raw=true" width="900">

 - 후기 작성
 <img src="https://github.com/sj921/readme_images/blob/main/ezenmarket_images/%EC%B1%84%ED%8C%85_%ED%9B%84%EA%B8%B0.png?raw=true" width="900">


---

> 알림
 <img src="" width="900">













