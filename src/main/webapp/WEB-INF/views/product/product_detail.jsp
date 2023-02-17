<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Shop Item - Start Bootstrap Template</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="<%=request.getContextPath()%>/resources/css/product/product_detail.css" rel="stylesheet" />
    <style>
        .box {
            width: 70px;
            height: 70px; 
            border-radius: 70%;
            overflow: hidden;
        }

        .profile {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
    </style>
</head>

<body>

    <!-- Product section-->
    <div style="width: 1200px; clear: both; margin: auto;">
        <section class="py-5">
            <hr style="border: 1px black solid;">
            <div class="container px-lg-5 my-5" style="width: 1050px;">
                <div class="row gx-4 gx-lg-5 m-auto">
                    <div class="col-md-5">
                        <img class="card-img-top mb-3 mb-md-0" src="https://dummyimage.com/600x700/dee2e6/6c757d.jpg"
                            alt="..." />
                    </div>
                    &emsp;
                    &emsp;
                    &emsp;
                    <div class="col-md-6" style="margin-left: 15px;">
                        <div class="fs-5 large mb-1 fw-bolder">맨투맨</div>
                        <h3 class="display-6 fw-bolder">40,000원</h3>
                        <hr style="width: 420px;">
                        <div class="fs-5 mb-4">
                            <i class="bi bi-heart-fill"></i>&nbsp;17&nbsp;
                            <i class="bi bi-eye-fill"></i>&nbsp;175&nbsp;
                            <i class="bi bi-clock-fill"></i>&nbsp;2주 전
                        </div>
                        <ul>
                            <li>상품상태&emsp;&emsp;<span>중고</span></li>
                            <br>
                            <li>교환여부&emsp;&emsp;<span>교환불가능</span></li>
                            <br>
                            <li>배송비&emsp;&emsp;&emsp;<span>배송비포함</span></li>
                            <br>
                            <li>거래지역&emsp;&emsp;<span>전국</span></li>
                        </ul>
                        <div class="d-flex justify-content-around" style="margin-right: 50px;">
                            <button class="btn btn-secondary flex-shrink-0 opacity-50" type="button"
                                style="width: 150px; height: 60px;">
                                <i class="bi bi-heart-fill"></i>
                                찜 5
                            </button>
                            &emsp;
                            <button class="btn btn-warning flex-shrink-0 opacity-75" type="button"
                                style="width: 150px; height: 60px;">
                                <i class="bi bi-messenger"></i>
                                채팅
                            </button>
                            <button class="btn btn-secondary flex-shrink-0 opacity-75" type="button"
                                style="width: 150px; height: 60px;">
                                수정
                            </button>
                            <button class="btn btn-secondary flex-shrink-0 opacity-75" type="button"
                                style="width: 150px; height: 60px;">
                                삭제
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <hr style="border: 1px black solid;">
        <!-- Related items section-->
        <section class="py-1 bg-light">
            <div class="container px-4 px-lg-5 mt-5 d-flex">
                <div style="width: 60%;">
                    <h2 class="fw-bolder mb-4">상품정보</h2>
                    <hr style="opacity: 25%;">
                    <p>상품상세설명</p>
                </div>
                &emsp;
                <div>
                    <hr style="width: 1px; height: 80%;">
                </div>
                &emsp;
                <div style="width: 40%;">
                    <h2 class="fw-bolder mb-4">판매자정보</h2>
                    <hr style="opacity: 25%;">
                    <div class="d-flex">
                        <div class="box" style="background: #BDBDBD;">
                            <img class="profile" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fdi0GrI%2FbtqyyWdEYM8%2FLbDOJG6QuYVXzFI9AlMq60%2Fimg.png">
                        </div>
                        &emsp;
                        <div>
                        <h4>판매자이름</h4>
                        <h5>상품6</h5>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <br>
        <section class="py-3 bg-light">
            <div class="container px-3 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">연관상품</h2>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-80">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                                alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Fancy Product</h5>
                                    <!-- Product price-->
                                    $40.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View
                                        options</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-80">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Special Item</h5>
                                    <!-- Product reviews-->
                                
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$20.00</span>
                                    $18.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to
                                        cart</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-80">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">
                                Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                                alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Sale Item</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$50.00</span>
                                    $25.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to
                                        cart</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-80">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                                alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Popular Item</h5>
                                    <!-- Product reviews-->
                                
                                    <!-- Product price-->
                                    $40.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to
                                        cart</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p>
            </div>
        </footer>
    </div>
    </div>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>

</html>