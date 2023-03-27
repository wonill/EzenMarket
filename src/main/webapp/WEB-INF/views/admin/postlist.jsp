<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@include file="./includes/header.jsp" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
             <a class="sidebar-brand d-flex align-items-center justify-content-center" href="mainpage.html">
                <img style="height: 50px" src="https://i.ibb.co/bXJWJZL/1233.png"/ >

            </a>

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="mainpage">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>메인 페이지</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

          
            <!-- Heading -->
            <div class="sidebar-heading">
                관리 페이지
            </div>

            

            <!-- Nav Item - Charts -->
             <li class="nav-item">
                <a class="nav-link" href="userlist">
                    <i class="fas fa-fw fa-table"></i>
                    <span>유저 관리</span></a>
            </li>

            <li class="nav-item ">
                <a class="nav-link" href="reportlist">
                    <i class="fas fa-fw fa-table"></i>
                    <span>신고 관리</span></a>
            </li>
            
            <li class="nav-item active">
                <a class="nav-link" href="postlist">
                    <i class="fas fa-fw fa-table"></i>
                    <span>게시물 관리</span></a>
            </li>
            
            		<!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>관리자 기능</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">관리자 기능</h6>
                        <a class="collapse-item" href="modifyBannerPage">배너 변경</a>
                        
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <form class="form-inline">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                    </form>

                   

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>


                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Admin1</span>
                                <img class="img-profile rounded-circle"
                                    src="${pageContext.request.contextPath}/resources/img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            
                            <%@include file="./includes/loginInclude.jsp" %>
                            
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">게시물 월별통계</h1>
                       
                    </div>

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                               오늘 올라온 게시물 </div>
                                                                                
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${todayPostCount}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-solid fa-file-circle-plus fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                               이번달 등록된 게시물</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${thisMonthPostCount}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-solid fa-comments fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-info shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">지난달 등록된 게시물
                                            </div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">${lastMonthPostCount}</div>
                                                </div>
                                                <div class="col">
                                                  
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-solid fa-book-open fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                이번달 거래완료된 게시물</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${thisMotnthEndDealCount }</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-solid fa-coins fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                     <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Project Card Example -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                   
                                </div>
                                <div class="card-body">
                                    
                                    <h4 class="small font-weight-bold">전월 대비 게시물 수 <span
                                            class="float-right">${roundedPercentage}%</span></h4>
                                    <div class="progress mb-4">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: ${roundedPercentage}%"
                                            aria-valuenow="${roundedPercentage}" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <h4 class="small font-weight-bold">최다 카테고리 <span
                                            class="float-right">남성의류</span></h4>
                                    <div class="progress">
                                        <div class="progress-bar bg-success" role="progressbar" style="width: 37%"
                                            aria-valuenow="37" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                    
               

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">게시글 목록</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>게시물 번호</th>
                                            <th>유저 번호</th>
                                            <th>거래 지역</th>
                                            <th>제목</th>
                                            <th>카테고리</th>
                                            <th>생성날짜</th>
                                            <th>관리</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${postlist}" var="post"> 
                                        <tr>
                                            <td>${post.post_id }</td>
                                            <td>${post.user_number }</td>
                                            <td>${post.post_address }</td>
                                            <td>${post.title }</td>
                                            <td id="category-type">${post.category_id}</td>
                                            <td>${post.created }</td>                       
                                            <td>
                                            <a href="../post?id=${post.post_id }" class="view" title="View"
												data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
												<a id="postDelete_${post.post_id}" href="postlist/deletePost?post_id=${post.post_id }"
															class="delete" title="삭제" data-toggle="tooltip"> 
															<i class="material-icons">&#xE5C9;</i>
														</a>
												<c:forEach items="${endDeal}" var="endDeal">
													<c:if test="${endDeal.post_id == post.post_id }">
														<a class="small font-weight-bold">판매 완료</a>
														<script>
													        document.getElementById("postDelete_${post.post_id}").style.display = "none";
													    </script>
													</c:if>

												</c:forEach>
											</td>
                                        </tr>
                                        </c:forEach>
                                        
                                      
                                       


                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

                </div>
                <!-- /.container-fluid -->



  
<%@include file="./includes/footer.jsp" %>