<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>



<title>고객센터 메인화면</title>

<style type="text/css">
body {
	margin-top: 100px;
}

a#link {
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

.Content {
    align: left;
    display: inline-block;
    width: 530px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

.card-body{
	padding-right: 120px;
	padding-left: 120px;


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
							<nav class="navbar navbar-expand-lg bg-light">
								<div class="container-fluid">
									<a class="navbar-brand" href="#">Customer Service</a>
									<button class="navbar-toggler" type="button"
										data-bs-toggle="collapse"
										data-bs-target="#navbarSupportedContent"
										aria-controls="navbarSupportedContent" aria-expanded="false"
										aria-label="Toggle navigation">
										<span class="navbar-toggler-icon"></span>
									</button>
									<div class="collapse navbar-collapse"
										id="navbarSupportedContent">
										<ul class="navbar-nav me-auto mb-2 mb-lg-0">
											<li class="nav-item"><a class="nav-link active"
												aria-current="page" href="noticeSelectList.do">Notice</a></li>

											<li class="nav-item"><a class="nav-link active"
												aria-current="page" href="fnaSelectList.do">FnA</a></li>

											<li class="nav-item"><a class="nav-link active"
												aria-current="page" href="qnaSelectList.do">QnA</a></li>


											<li class="nav-item"><a class="nav-link active"
												aria-current="page" href="personal.do"></a></li>

										</ul>

									</div>
								</div>
							</nav>

						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead>
										<tr align="center">
											<th style="width: 50px">No</th>
											<th style="width: 350px">Title</th>
											<th align="center">Content</th>
											<th style="width: 100px">Date</th>
										</tr>
									</thead>

									<tbody>
										<c:if test="${empty list}">
											<tr>
												<td colspan="6" align="center">게시글이 존재하지 않습니다.</td>
											</tr>
										</c:if>

										<c:if test="${not empty list }">
											<c:forEach items="${list }" var="n">
												<tr onclick="selectNotice('${n.noticeNo}')">
													<td align="center">${n.noticeNo }</td>
													<td>${n.noticeTitle }</td>
													<td class="Content" >${n.noticeContent }</td>
													<td align="center">${n.noticeDate }</td>

												</tr>
											</c:forEach>
										</c:if>

									</tbody>

								</table>

								<div class="d-grid gap-2 d-md-flex justify-content-md-end">
										<c:if test="${author == '0'}">
									<button type="button" class="btn btn-outline-dark"
										onclick="location.href='noticeForm.do'"
										style="margin-right: 30px; border-color: grey">글쓰기</button>
										</c:if>
								</div>



							</div>
						</div>
					</div>
				</div>

			</div>
			<!-- /.container-fluid -->

		</div>
		<!-- End of Main Content -->
		<div>
	
		<form id="frm" action="noticeSelect.do" method="post"> 
		 <input type="hidden" id="id" name="id" >
		</form>



		</div>

	</div>
	<!-- End of Content Wrapper -->


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


	<script type="text/javascript">
		function selectNotice(id) {
			document.getElementById("id").value = id;
			frm.submit();
		}
	</script>





</body>

</html>