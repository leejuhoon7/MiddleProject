<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Create new customer form - Bootdey.com</title>
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
	<div class="container-fluid" style="margin-top: 100px">

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
			<div class="col-lg-8">
				<!-- Address -->
					<form id="frm_edit" action="reviewEdit.do" method="post"
					enctype="multipart/form-data">
				<div class="card mb-4">
					<div class="card-body" style="padding: 0px -150px">
						<h3 class="h6 mb-4"></h3>
						<div class="mb-3">
							<label class="form-label">Title *</label> <input type="text"
								class="form-control" id="reviewTitle" name="reviewTitle"> 
						</div>
						<span class="select2-selection__arrow" role="presentation"><b
							role="presentation"></b></span><span class="dropdown-wrapper"
							aria-hidden="true"></span>


						<div class="row">
							<div class="card-body">
								<div class="mb-3">
									<label class="form-label">ID *</label> <input type="text"
										class="form-control" value="${vo.memberId }" id="memberId" name="memberId">
								</div>

							</div>

<div style="margin-top:25px" >
								<div class="col-lg-6">
									<div class="mb-3">
										<label class="form-label">City*</label><span><select  
										id="reviewLocal" name="reviewLocal"
											class="select2 form-control select2-hidden-accessible"
											data-select2-placeholder="Select country"
											data-select2-id="select2-data-1-gy14" tabindex="-1"
											aria-hidden="true" style="width: 300px;" >
												<option data-select2-id="select2-data-3-ibs9"></option>
												<option >부산</option>
												<option >경주</option>
												<option >울릉도</option>
												<option >제주도</option>

										</select></span> <span
											class="select2 select2-container select2-container--bootstrap-5"
											dir="ltr" data-select2-id="select2-data-2-46y9"
											style="width: 391px;"><span class="selection"><span
												class="select2-selection select2-selection--single"
												role="combobox" aria-haspopup="true" aria-expanded="false"
												tabindex="0" aria-disabled="false"
												aria-labelledby="select2-vp8l-container"
												aria-controls="select2-vp8l-container"><span
													class="select2-selection__rendered"
													id="select2-vp8l-container" role="textbox"
													aria-readonly="true" title="Select country"><span
														class="select2-selection__placeholder">지역선택필수</span></span><span
													class="select2-selection__arrow" role="presentation"><b
														role="presentation"></b></span></span></span><span class="dropdown-wrapper"
											aria-hidden="true"></span></span>
									</div>
								</div>

							</div>


							<div class="card mb-4">
								<div class="card-body">
									<div class="mb-3" style="margin-top: -60px">
										<label class="form-label">Content</label>
										<textarea rows="text" class="form-control" rows="50"
											id="reviewContent" name="reviewContent"></textarea>
									</div>
									<!-- 점수 -->
									<div class="row">
										<div class="col-lg-6">
											<div class="mb-3">
												<label class="form-label">Score</label> <select
												id="reviewScore" name="reviewScore"
													class="select2 form-control select2-hidden-accessible"
													data-select2-placeholder="Select country"
													data-select2-id="select2-data-1-gy14" tabindex="-1"
													aria-hidden="true" style="width: 630px">
													<option data-select2-id="select2-data-3-ibs9"></option>
													<option value="★★★★★">★★★★★</option>
													<option value="★★★★">★★★★</option>
													<option value="★★★">★★★</option>
													<option value="★★">★★</option>
													<option value="★">★</option>

												</select><span
													class="select2 select2-container select2-container--bootstrap-5"
													dir="ltr" data-select2-id="select2-data-2-46y9"
													style="width: 391px;"><span class="selection"><span
														class="select2-selection select2-selection--single"
														role="combobox" aria-haspopup="true" aria-expanded="false"
														tabindex="0" aria-disabled="false"
														aria-labelledby="select2-vp8l-container"
														aria-controls="select2-vp8l-container"><span
															class="select2-selection__rendered"
															id="select2-vp8l-container" role="textbox"
															aria-readonly="true" title="Select country"><span
																class="select2-selection__placeholder">별점을 남겨주세요</span></span><span
															class="select2-selection__arrow" role="presentation"><b
																role="presentation"></b></span></span></span><span class="dropdown-wrapper"
													aria-hidden="true"></span></span>
											</div>
										</div>

									</div>


									<h3 class="h6">Img</h3>
									<input class="form-control" type="file" name="ufile" style="width: 630px" value="${vo.reviewImg}">
								

								</div>




							</div>

						</div>






						<!-- 위로 건드리지 마 -->




						<!-- 이 안에 다 넣어야함 -->
					</div>
					<div>
				</div>

			</div>

			<div id="btn-save" style="margin-left: 250px;">
							
				<input type="hidden" id="reviewNo" name="reviewNo" value="${vo.reviewNo }">
						<button class="btn btn-primary btn-sm btn-icon-text"
							type="submit" >
							<i class="bi bi-save"></i><span class="text">Save</span>
						</button>
						
						</form>
						
						<button class="btn btn-light btn-sm btn-icon-text" 
						onclick="location.href='reviewMain.do'">
							<i class="bi bi-x"></i> <span class="text">Main</span>
						</button>
				</div>
			</div>
		</div>
		</div>
</div>
</div>
	</div>

	</div>



<script type="text/javascript">

function editCall('E') {
	
	frm_edit.submit()
}

</script>


	<script type="text/javascript"></script>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>