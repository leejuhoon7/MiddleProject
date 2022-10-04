<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<title>리뷰 페이지 메인</title>

<style type="text/css">
body {
	margin-top: 100px;
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
				<div class="card shadow mb-4"
						style=" margint-top:30px;">
						<div class="card-header py-3" >
							<nav class="navbar navbar-expand-lg bg-light"> 
								<div class="container-fluid">
									<a class="navbar-brand" href="reviewMain.do" style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Review Page</a>
									<button class="navbar-toggler" type="button"
										data-bs-toggle="collapse"
										data-bs-target="#navbarSupportedContent"
										aria-controls="navbarSupportedContent" aria-expanded="false"
										aria-label="Toggle navigation">
										<span class="navbar-toggler-icon"></span>
									</button>
									<div class="collapse navbar-collapse"
										id="navbarSupportedContent">
										
										<ul class="navbar-nav me-auto mb-2 mb-lg-0" style="text-decoration: bolder">											
											<li class="nav-item"><button class="nav-link active"
												aria-current="page" onclick='goCity(this)'>부산</button></li>
											<li class="nav-item"><button class="nav-link active"
												aria-current="page" onclick='goCity(this)'>경주</button></li>
											<li class="nav-item"><button class="nav-link active"
												aria-current="page" onclick='goCity(this)'>울릉도</button></li>
											<li class="nav-item"><button class="nav-link active"
												aria-current="page" onclick='goCity(this)'>제주도</button></li>
										</ul>
										
									</div>
								</div>
							</nav>
					
<img alt="review" src="imgReview/reviewMain.JPG" style="width:1000px; margin: auto;  display: block;" >
</div>
							
					</div>
				</div>
			</div>
		</div>

	</div>
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
		
		<form action="reviewList.do" method="POST" id='frm_review'>
		<input type="hidden" id="citySave" name='local'>
		</form>
		
 <script type="text/javascript">
 
 function goCity(data){
	 
	 let a = document.getElementById('citySave').value = data.innerText
	 console.log(a);
	 frm_review.submit();
	 
}
 
 </script>


</body>

</html>