<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<%@include file="./includes/header.jsp" %>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
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
            
            <li class="nav-item">
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
                        <a class="collapse-item active" href="modifyBannerPage">배너 변경</a>
                        
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            

        </ul>
        <!-- End of Sidebar -->

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

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
               <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">1번배너 현재 이미지</h1>       
               </div>
               <div>
               	<img class="img-fluid mb-4" src="${pageContext.request.contextPath}/resources/img/banner1.jpg" alt="배너1">
               </div>
               
               <div><img class="img-fluid mb-4" id="myImage1" src="${imageSrc1}" alt=""></div>

		<form class="mb-4" action="upload_banner1" method="post"
			enctype="multipart/form-data">

			<label class="btn btn-primary btn-file mb-4"> 이미지 찾기 
				<input type="file" name="file" style="display: none;"
					onchange="displayImage1(event)">
			</label> 
				<img class="img-fluid mb-4" id="myImage1" src="" alt=""> 
			<label class="btn btn-primary btn-file mb-4"> 변경
				<input type="submit" style="display: none;">
			</label>
		</form>
		<hr>
		
		<div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">2번배너 현재 이미지</h1>       
               </div>
               <div>
               	<img class="img-fluid mb-4" src="${pageContext.request.contextPath}/resources/img/banner2.jpg" alt="배너2">
               </div>
               
               <div><img class="img-fluid mb-4" id="myImage2" src="${imageSrc2}" alt=""></div>

		<form class="mb-4" action="upload_banner2" method="post"
			enctype="multipart/form-data">

			<label class="btn btn-primary btn-file mb-4"> 이미지 찾기 
				<input type="file" name="file" style="display: none;"
					onchange="displayImage2(event)">
			</label> 
				<img class="img-fluid mb-4" id="myImage2" src="" alt=""> 
			<label class="btn btn-primary btn-file mb-4"> 변경
				<input type="submit" style="display: none;">
			</label>
		</form>
		<hr>
		
		<div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">3번배너 현재 이미지</h1>       
               </div>
               <div>
               	<img class="img-fluid mb-4" src="${pageContext.request.contextPath}/resources/img/banner3.jpg" alt="배너3">
               </div>
               
               <div><img class="img-fluid mb-4" id="myImage3" src="${imageSrc3}" alt=""></div>

		<form class="mb-4" action="upload_banner3" method="post"
			enctype="multipart/form-data">

			<label class="btn btn-primary btn-file mb-4"> 이미지 찾기 
				<input type="file" name="file" style="display: none;"
					onchange="displayImage3(event)">
			</label> 
				<img class="img-fluid mb-4" id="myImage3" src="" alt=""> 
			<label class="btn btn-primary btn-file mb-4"> 변경
				<input type="submit" style="display: none;">
			</label>
		</form>
		<hr>
		
		<div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">4번배너 현재 이미지</h1>       
               </div>
               <div>
               	<img class="img-fluid mb-4" src="${pageContext.request.contextPath}/resources/img/banner4.jpg" alt="배너4">
               </div>
               
               <div><img class="img-fluid mb-4" id="myImage4" src="${imageSrc4}" alt=""></div>

		<form class="mb-4" action="upload_banner4" method="post"
			enctype="multipart/form-data">

			<label class="btn btn-primary btn-file mb-4"> 이미지 찾기 
				<input type="file" name="file" style="display: none;"
					onchange="displayImage4(event)">
			</label> 
				<img class="img-fluid mb-4" id="myImage4" src="" alt=""> 
			<label class="btn btn-primary btn-file mb-4"> 변경
				<input type="submit" style="display: none;">
			</label>
		</form>
		<hr>

		<!-- End of Main Content -->

          

<%@include file="./includes/footer.jsp" %>