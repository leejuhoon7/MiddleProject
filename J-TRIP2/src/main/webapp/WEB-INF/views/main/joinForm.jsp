<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
<!--  All snippets are MIT license http://bootdey.com/license -->
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
						class="bi bi-arrow-left-square me-2"></i></a> Join Us
				</h1>

			</div>

			<!-- Main content -->

			<!-- Left side -->
			<div class="col-lg-8">
				<!-- Address -->
				<div class="card mb-4">
					<div class="card-body" style="padding: 0px -150px">
						<h3 class="h6 mb-4"></h3>
						<div class="mb-3">
							<label class="form-label">Name *</label> <input type="text"
								class="form-control">
						</div>
						<span class="select2-selection__arrow" role="presentation"><b
							role="presentation"></b></span><span class="dropdown-wrapper"
							aria-hidden="true"></span>
						<div class="mb-3" style="margin-bottom: 50px">
							<label class="form-label">USER ID *</label> <input type="text"
								class="form-control">
						</div>
						<span class="select2-selection__arrow" role="presentation"><b
							role="presentation"></b></span><span class="dropdown-wrapper"
							aria-hidden="true"></span>
						<div class="mb-3" style="margin-bottom: 50px">
							<label class="form-label">PassWord *</label> <input type="text"
								class="form-control" placeholder="패스워드를 입력해주세요"><input
								type="text" class="form-control"
								placeholder="패스워드를 다시 한번 입력해주세요">
						</div>
						<span class="select2-selection__arrow" role="presentation"><b
							role="presentation"></b></span><span class="dropdown-wrapper"
							aria-hidden="true"></span>

						<div class="row">
							<div class="card-body">
								<div class="mb-3">
									<label class="form-label">E-mail *</label> <input type="email"
										class="form-control" placeholder="email id">
								</div>

							</div>

							<div class="col-lg-6">
								<div class="mb-3">
									<label class="form-label"></label> <select
										class="select2 form-control select2-hidden-accessible"
										data-select2-id="select2-data-1-gy14" tabindex="-1"
										aria-hidden="true" style="margin-top: 28px">
										<option data-select2-id="select2-data-3-ibs9"></option>
										<option value="">naver.com</option>
										<option value="">hanmail.net</option>
										<option value="">kakao.com</option>
										<option value="">gmail.com</option>

									</select>
								</div>

							</div>
					
								<div>					
							
						<label class="form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Favorite *</label>										
								<label for="cbtest"><input type="checkbox"
									class="custom_checkbox" id="custom_checkbox">&nbsp;&nbsp;&nbsp;부산</label> <label
									for="cbtest"><input type="checkbox"
									class="custom_checkbox" id="custom_checkbox">&nbsp;&nbsp;&nbsp;경주</label> <label
									for="cbtest"><input type="checkbox"
									class="custom_checkbox" id="custom_checkbox">&nbsp;&nbsp;&nbsp;울릉도</label> <label
									for="cbtest"><input type="checkbox"
									class="custom_checkbox" id="custom_checkbox">&nbsp;&nbsp;&nbsp;제주도</label>
							</div>
							

							<!-- 위로 건드리지 마 -->

							<div class="card-body" style="padding: 0px -150px">
								<h3 class="h6 mb-4"></h3>
								<div class="mb-3">
									<label class="form-label">Address *</label> <input type="text"
										class="form-control">
								</div>
								<span class="select2-selection__arrow" role="presentation"><b
									role="presentation"></b></span><span class="dropdown-wrapper"
									aria-hidden="true"></span>
								<div class="mb-3" style="margin-bottom: 50px">
									<label class="form-label">Tel*</label> <input type="text"
										class="form-control" placeholder="- 포함해서 입력해주세요">
								</div>
								<span class="select2-selection__arrow" role="presentation"><b
									role="presentation"></b></span><span class="dropdown-wrapper"
									aria-hidden="true"></span>

							</div>

							

							<!-- 이 안에 다 넣어야함 -->
						</div>
						<div >
					
							</div>	
					</div>

				</div>

				<div id="btn-save" style="margin-left: 250px;">
					<div>
						<p>
							<button class="btn btn-primary btn-sm btn-icon-text"
								onclick="location.href='cart.do'">
								<i class="bi bi-save"></i><span class="text">Save</span>
							</button>
							<button class="btn btn-light btn-sm btn-icon-text">
								<i class="bi bi-x"></i> <span class="text">Cancel</span>
							</button>
					</div>
				</div>
			</div>

		</div>

	</div>

	</div>




	<script type="text/javascript"></script>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>