<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    



<%@include file="./includes/header.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- Sidebar -->
 <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
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
	<div class="sidebar-heading">관리 페이지</div>

	<!-- Nav Item - Charts -->



	<li class="nav-item">
                <a class="nav-link" href="userlist">
                    <i class="fas fa-fw fa-table"></i>
                    <span>유저 관리</span></a>
            </li>

            
            <li class="nav-item  active">
                <a class="nav-link" href="reportlist">
                    <i class="fas fa-fw fa-table"></i>
                    <span>신고 관리</span></a>
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
		<nav
			class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

			<!-- Sidebar Toggle (Topbar) -->
			<form class="form-inline">
				<button id="sidebarToggleTop"
					class="btn btn-link d-md-none rounded-circle mr-3">
					<i class="fa fa-bars"></i>
				</button>
			</form>



			<!-- Topbar Navbar -->
			<ul class="navbar-nav ml-auto">

				<!-- Nav Item - Search Dropdown (Visible Only XS) -->
				<li class="nav-item dropdown no-arrow d-sm-none"><a
					class="nav-link dropdown-toggle" href="#" id="searchDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
				</a> <!-- Dropdown - Messages -->
					<div
						class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
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
					</div></li>


				<!-- Nav Item - User Information -->
				<li class="nav-item dropdown no-arrow"><a
					class="nav-link dropdown-toggle" href="#" id="userDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <span
						class="mr-2 d-none d-lg-inline text-gray-600 small">Admin1</span>
						<img class="img-profile rounded-circle"
						src="${pageContext.request.contextPath}/resources/img/undraw_profile.svg">
				</a> <!-- Dropdown - User Information -->
				
					<%@include file="./includes/loginInclude.jsp" %>
					
				</li>

			</ul>

		</nav>
		<!-- End of Topbar -->

		<!-- Begin Page Content -->
		<div class="container-fluid">

			<!-- Page Heading -->
			<h1 class="h3 mb-2 text-gray-800">신고 목록</h1>


			<!-- DataTales Example -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">신고 목록</h6>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>신고 번호</th>
									<th>신고 유형</th>
									<th>번호</th>
									<th>유저 번호</th>
									<th>신고 내용</th>
									<th>처리 여부</th>
									<th>관리</th>
								</tr>
							</thead>

							<tbody>
							
								<c:forEach items="${report}" var="report">
                                        <tr>
                                            <td>${report.report_id }</td>
                                            <td id="report-type">${report.report_type }</td>
                                            <td>${report.report_detail }</td>
                                            <td>${report.user_number }</td>
                                            <td>${report.report_content }</td>
                                            
                                            <td>
                                            <c:choose>
										        <c:when test="${report.report_status == 0}">
										          <span class="status text-danger">&bull;</span> 대기중
										   </td>
										          <td>
                                             <c:choose>
											      <c:when test="${report.report_type == 0}">
											        <a href="../mypage?user_number=${report.report_detail}" class="view" title="마이페이지로 이동" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
											      </c:when>
											      
											      <c:when test="${report.report_type == 1}">
											        <a href="../post?id=${report.report_detail}" class="view" title="포스트로 이동" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
											        <a href="#" class="delete" onclick="event.preventDefault(); 
													    postDeleteAndModify('${report.report_detail}', '${report.report_id}');" 
													    title="삭제" data-toggle="tooltip">
													    <i class="material-icons">&#xE5C9;</i>
													</a>
											      </c:when>
											      
											      <c:when test="${report.report_type == 2}">
											        <a href="../chattingroom?id=${report.report_detail}" class="view" title="채팅으로 이동" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
											      </c:when>
											      
											      <c:when test="${report.report_type == 3}">
											        <a href="../review?id=${report.report_detail}" class="view" title="리뷰로 이동" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
													<a href="reportlist/deleteReview?review_id=${report.report_detail }" class="delete" onclick="event.preventDefault(); 
													    reviewDeleteAndModify('${report.report_detail}', '${report.report_id}');" 
													    title="삭제" data-toggle="tooltip">
													    <i class="material-icons">&#xE5C9;</i>
													</a>		     
											      </c:when>
											    </c:choose>
								
										<a href="reportlist/modify?report_id=${report.report_id }" class="check" title="처리완료"
										data-toggle="tooltip"><i class="material-icons">&#xe86c;</i></a>
										
											</td>
										          
										        </c:when>
										        <c:when test="${report.report_status == 1}">
										          <span class="status text-success">&bull;</span> 처리완료
										        </td>
										          <td></td>
										    
										        </c:when>
										    </c:choose>
										  
                                            
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



<%@include file="./includes/footer.jsp"%>