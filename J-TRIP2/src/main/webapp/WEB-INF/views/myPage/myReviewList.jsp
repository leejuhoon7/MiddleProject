<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>



<title>여행지 리뷰_부산</title>

<style type="text/css">
body{
margin-top: 100px;
}


body {
	margin-top: 100px;
}

a.link {
	text-decoration: none;
	color: #999999;
	text-align: center;
}

.page-item.active .page-link {
	z-index: 1;
	color: #fff;
	background-color: rgb(220 53 69/ 25%);
	border-color: #e2c0bb;
}

.page-link {
	color: rgb(0 0 0/ 50%);
}

.pagination {
	display: -webkit-box;
	padding-left: 0;
	list-style: none;
	border-radius: 0.25rem;
}
</style>



</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Divider -->
		<hr class="sidebar-divider my-0">


		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">


				<!-- Begin Page Content -->
				<div class="container-fluid">
					
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<nav class="navbar navbar-expand-lg navbar-light bg-light"
								style="width: 960px">
								<a class="navbar-brand" href="#">MyPage</a>
								<button class="navbar-toggler" type="button"
									data-toggle="collapse"
									data-target="#navbarToggleExternalContent"
									aria-controls="navbarToggleExternalContent"
									aria-expanded="false" aria-label="Toggle navigation">
									<span class="navbar-toggler-icon"></span>
								</button>
								<div class="collapse navbar-collapse"
									id="navbarSupportedContent">
									<ul class="navbar-nav mr-auto">
										<li class="nav-item dropdown"><a
											class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
											role="button" data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false"> MyPage </a>
											<div class="dropdown-menu" aria-labelledby="navbarDropdown">
												<a class="dropdown-item" href="myInfo.do">My Information</a>
												<a class="dropdown-item" href="myReviewList.do">My
													Review List</a> <a class="dropdown-item" href="myQnAList.do">My
													QnA List</a>
												<div class="dropdown-divider"></div>
											</div></li>
									</ul>
								</div>
							</nav>

						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr align="center">
											<th align="center">No</th>
											<th align="center">Title</th>
											<th align="center">Date</th>
											<th align="center">Content</th>
										</tr>
									</thead>

									<tbody>

										<tr align="center">
											<td><a href="myReview.do" id="link"
												style="color: #999999">1</a></td>
											<td><a href="myReview.do" id="link"
												style="color: #999999">부산 여행 좋아요</a></td>
											<td><a href="myReview.do" id="link"
												style="color: #999999">2022.09.22</a></td>
											<td><a href="myReview.do" id="link"
												style="color: #999999"></a></td>
										</tr>



											<tr align="center">
											<td><a href="myReview.do" id="link"
												style="color: #999999">1</a></td>
											<td><a href="myReview.do" id="link"
												style="color: #999999">부산 여행 좋아요</a></td>
											<td><a href="myReview.do" id="link"
												style="color: #999999">2022.09.22</a></td>
											<td><a href="myReview.do" id="link"
												style="color: #999999"></a></td>
										</tr>

									</tbody>
								</table>
							<div class="d-grid gap-2 d-md-flex justify-content-md-end">
						<button type="button" class="btn btn-outline-dark" onclick="location.href='writeForm.do'" style="margin-right:30px", style=" border-color:grey">글쓰기</button>			
					</div>
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			
		</div>
		<!-- End of Content Wrapper -->


	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="js/demo/datatables-demo.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
</body>

</html>