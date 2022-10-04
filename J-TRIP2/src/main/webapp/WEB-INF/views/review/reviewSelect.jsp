<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>리뷰 상세보기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style type="text/css">
body {
	background: #eee;
}

.col-lg-8 {
	margin-right: auto;
	margin-left: auto;
	width: 1200px;
}

.card {
	box-shadow: 0 20px 27px 0 rgb(0 0 0/ 5%);
}

.card {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 0 solid rgba(0, 0, 0, .125);
	border-radius: 1rem;
}

.card-body {
	-webkit-box-flex: 1;
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
	padding: 1.5rem 1.5rem;
}

.custom_checkbox {
	position: relative;
	margin: 45px 0 0 20px;
}

.custom_checkbox label {
	position: absolute;
	left: 0;
	height: 20px;
	padding: 4px 0 0 25px;
	background: url('images/custom_checkbox2.png') no-repeat;
}

.custom_checkbox input[type="checkbox"]:checked+label {
	background-position: 0 -25px;
}
</style>

</head>
<body>
	<div class="container-fluid" style="margin-top: 120px">

		<div class="container">
			<!-- Title -->
			<div
				class="d-flex justify-content-between align-items-lg-center py-3 flex-column flex-lg-row">
				<h1 class="h5 mb-3 mb-lg-0"
					style="font-weight: bold; margin-left: auto; margin-right: auto;">
					<a href="../../pages/admin/customers.html" class="text-muted"><i
						class="bi bi-arrow-left-square me-2"></i></a> My Review
				</h1>

			</div>

			<!-- Main content -->

			<!-- Left side -->
			<form id="frm_select" action="reviewSelect.do" method="post"
				enctype="multipart/form-data">

				<div class="col-lg-8">
					<!-- Address -->
					<div class="card mb-4">
						<div class="card-body" style="padding: 0px -150px">
							<div class="mb-3">
								<label class="form-label">Title *</label> <input type="text"
									class="form-control" id="reviewTitle" name="reviewTitle"
									value="${vo.reviewTitle }" readonly="readonly">

							</div>
							<span class="select2-selection__arrow" role="presentation"><b
								role="presentation"></b></span><span class="dropdown-wrapper"
								aria-hidden="true"></span>


							<div class="row">
								<div class="card-body">
									<div class="mb-3" style="margin-botton: 50px;">
										<label class="form-label">ID *</label> <input type="text"
											class="form-control" id="memberId" name="memberId"
											value="${vo.memberId }" readonly="readonly" style="width: 250px;">

									</div>

								</div>

								<div style="margin-top: 25px">
									<div class="col-lg-6">
										<div class="mb-3">
											<label class="form-label">City*</label> <span><input
												readonly="readonly" type="text" class="form-control"
												id="reviewLocal" name="reviewLocal"
												value="${vo.reviewLocal }" style="width: 300px;"> </span>
										</div>
									</div>

								</div>

								<div class="card mb-4">
									<div class="card-body">
										<div class="mb-3" style="margin-top: -60px; width: 645px">
											<label class="form-label">Content</label>
											<textarea rows="text" class="form-control" rows="50"
												placeholder="자유롭게 후기를 남겨주세요!" name="reviewContent"
												id="reviewContent" readonly="readonly">${vo.reviewContent }</textarea>
										</div>
										<!-- 점수 -->
										<div class="row">
											<div class="col-lg-6">
												<div class="mb-3">
													<label class="form-label">Score</label> <input
														readonly="readonly" type="text" class="form-control"
														id="reviewScore" name="reviewScore"
														value="${vo.reviewScore }" style="width: 630px">




												</div>
											</div>

										</div>


										<h3 class="h6">Img</h3>
										<img src="imgReview/${vo.reviewImg }" style="width: 620px"
											id="reviewImg" name="reviewImg">

									</div>




								</div>

							</div>
						</div>
					</div>
			</form>
			</div>


				<form id="frm_main" action="reviewMain.do" method="post" style="text-align:center">
					<input type="hidden" id="reviewNo" name="reviewNo">
					<button class="btn btn-primary btn-sm btn-icon-text"
						onclick="location.href='reviewMain.do'" style="width:80px; margin-bottom:30px">
						<i class="bi bi-save"></i><span class="text">Main</span>
					</button>
				</form>
				
				
		<c:if test="${id eq vo.memberId }">
		
				<form id="frm_edit" action="reviewEditForm.do" method="post">
					<input type="hidden" id="reviewNo" name="reviewNo"
						value="${vo.reviewNo}" >
					<button class="btn btn-light btn-sm btn-icon-text"
						onclick="subCall('E')" style="width:80px; margin-left:730px; margin-bottom:30px; ">
						<i class="bi bi-x"></i> <span class="text">Edit</span>
					</button>

					<button class="btn btn-light btn-sm btn-icon-text"
						onclick="subCall('D')" id="reviewNo" name = "reviewNo" 
						value="${vo.reviewNo }" style="width:80px;  margin-right:-180px; margin-bottom:30px; background-color:#A9A9A9 ">
						<i class="bi bi-x"></i> <span class="text">Delete</span>
					</button>
			
				</form>
		</c:if>


		</div>
	</div>




	<!-- 이 안에 다 넣어야함 -->




	<script type="text/javascript">
		function subCall(str) {
			if (str == 'E') {
				frm_edit.action = "reviewEditForm.do" //수정
			} else {
				frm_edit.action = "reviewDelete.do" //삭제
			}

			frm_edit.submit();
		}
	</script>


	<script type="text/javascript"></script>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>