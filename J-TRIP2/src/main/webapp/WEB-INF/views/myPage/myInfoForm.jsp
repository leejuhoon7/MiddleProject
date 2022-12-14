<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>MyInfo</title>
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
						class="bi bi-arrow-left-square me-2"></i></a> MyInfo
				</h1>

			</div>

			<!-- Main content -->
			<input type="hidden" id="favorite1" value="${vo.memberFavorite }">
			<form id="id" action="myInfo.do" method="post">

				<input type="hidden" id="id" name="memberId" value="${vo.memberId}">

				<!-- Left side -->
				<div class="col-lg-8">
					<!-- Address -->
					<div class="card mb-4">
						<div class="card-body" style="padding: 0px -150px">
							<h3 class="h6 mb-4"></h3>
							<div class="mb-3">
								<label class="form-label">USER ID *</label> <input type="text"
									id="memberId" name="memberId" value="${vo.memberId}"
									class="form-control">
							</div>
							<span class="select2-selection__arrow" role="presentation"><b
								role="presentation"></b></span><span class="dropdown-wrapper"
								aria-hidden="true"></span>
							<div class="mb-3" style="margin-bottom: 50px">
								<label class="form-label">NAME *</label> <input type="text"
									id="memberName" name="memberName" value="${vo.memberName }"
									class="form-control" required="required">
							</div>
							<span class="select2-selection__arrow" role="presentation"><b
								role="presentation"></b></span><span class="dropdown-wrapper"
								aria-hidden="true"></span>
							<div class="mb-3" style="margin-bottom: 50px">
								<label class="form-label">PassWord *</label> <input
									type="password" class="form-control" id="memberPassword"
									name="memberPassword" value="${vo.memberPassword }"
									required="required" placeholder="???????????? ??????"><input
									type="text" class="form-control"
									placeholder="??????????????? ?????? ?????? ??????????????????">
							</div>
							<span class="select2-selection__arrow" role="presentation"><b
								role="presentation"></b></span><span class="dropdown-wrapper"
								aria-hidden="true"></span>

							<div class="row">
								<div class="card-body">
									<div class="mb-3">
										<label class="form-label">E-mail *</label> <input type="email"
											id="fullEmail" name="memberEmail" value="${vo.memberEmail }"
											class="form-control" placeholder="email id">
									</div>

								</div>

							

								<div>

									<label class="form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										Favorite *</label> 
										
									<label for="interest"><input type="radio" class="custom_checkbox" id="interest" id="interest"
										name='memberFavorite' value="??????" onclick='favoritCheck(event)'>&nbsp;&nbsp;&nbsp;??????</label>
								
									<label for="interest1"><input type="radio" class="custom_checkbox" id="interest1"
										name='memberFavorite' value="??????" onclick='favoritCheck(event)'>&nbsp;&nbsp;&nbsp;??????</label>
									
									<label for="interest2"><input type="radio" class="custom_checkbox" id="interest2"
										name='memberFavorite' value="?????????"	onclick='favoritCheck(event)'>&nbsp;&nbsp;&nbsp;?????????</label>
										
										
									<label for="interest3"><input type="radio" class="custom_checkbox" id="interest3"
										name='memberFavorite' value="?????????"	onclick='favoritCheck(event)'>&nbsp;&nbsp;&nbsp;?????????</label>
								</div>




								<div class="card-body" style="padding: 0px -150px">
									<h3 class="h6 mb-4"></h3>
									<div class="mb-3">
										<label class="form-label">Address *</label> <input type="text"
											id="memberAddress" name="memberAddress"
											value="${vo.memberAddress}" required="required"
											class="form-control">
									</div>
									<span class="select2-selection__arrow" role="presentation"><b
										role="presentation"></b></span><span class="dropdown-wrapper"
										aria-hidden="true"></span>
									<div class="mb-3" style="margin-bottom: 50px">
										<label class="form-label">Tel*</label> <input type="text"
											id="memberTel" name="memberTel" value="${vo.memberTel}"
											class="form-control" placeholder="- ???????????? ??????????????????">
									</div>
									<span class="select2-selection__arrow" role="presentation"><b
										role="presentation"></b></span><span class="dropdown-wrapper"
										aria-hidden="true"></span>

								</div>



								<!-- ??? ?????? ??? ???????????? -->
							</div>
							<div></div>
						</div>

					</div>

					<div id="btn-save" style="margin-left: 250px;">
						<div>
							<p>
								<button class="btn btn-primary btn-sm btn-icon-text"
									id="updateInformation"
									onclick="location.href='myInfo.do'">
									<i class="bi bi-save"></i><span class="text">????????????</span>
								</button>
								<button class="btn btn-light btn-sm btn-icon-text"
								onclick="location.href='myInfo.do'">
									<i class="bi bi-x"></i> <span class="text">??????</span>
								</button>
						</div>
					</div>
				</div>
		</div>

	</div>

	</div>

<script type="text/javascript">
document.getElementById("updateInformation").addEventListener('click', alertMessage);

function alertMessage(){
	
	alert('?????? ????????? ?????? ???????????????.');
	location.href = "home.do"
}

</script>


	<script type="text/javascript">
	let a = document.getElementById("favorite1").value;
	
	console.log(a);
	
	if (a == "??????") {
		document.getElementById("interest").checked = true;
	} else if (a == "??????") {
		document.getElementById("interest1").checked = true;
	} else if (a == "?????????") {
		document.getElementById("interest2").checked = true;
	} else if (a == "?????????") {
		document.getElementById("interest3").checked = true;
	}
	
	function favoritCheck(event){
		document.getElementById('interest').innerText = event.target.value;
	}
	</script>

	<script type="text/javascript">
function formCheck() {
	let pass1 = document.getElementById("memberPassword").value;
	let pass2 = document.getElementById("pwc").value;
	let idChecked = document.getElementById("btn").value;
	
	if(idChecked == 'No') {
		alert("????????? ??????????????? ????????????.");
		return false;
	}
	
	if(pass1 != pass2) {
		alert("??????????????? ???????????? ????????????.");
		document.getElementById("memberPassword").value = "";
		document.getElementById("pwc").value = "";
		document.getElementById("memberPassword").focus();
		return false;
	}	
	return true;
}

function idCheck(){  //Ajax??? ???????????? id ??????????????? ??????.
	let id = document.getElementById("memberId").value;

	
	//fetch??? ????????? ajax
	fetch('ajaxMemberIdCheck.do?id='+id)
		.then(response => response.text())
		.then(data=> responseResult(data)); //????????? Call Back????????? ???????????? ???
}

function responseResult(data){  //fetch?????? CallBack??????
	if(data == '1') {
    	alert("?????? ????????? ????????? ?????????.");
		document.getElementById("btn").value = 'Yes';
		document.getElementById("memberPassword").focus();
    }else{
    	alert("????????? ??? ?????? ????????? ?????????.");
    	document.getElementById("memberId").value = "";
    	document.getElementById("memberId").focus();
    } // ???????????? callBack ??????.
	
}


function selectChange(sel) {

    // ????????? ?????? ?????? or domain option ??????
    var domainListEl = document.querySelector('#select');
    var domainInputEl = document.querySelector('#textEmail');    

    if (sel.value === "directly") {
        domainInputEl.value = "";
        domainInputEl.readOnly = false;
    } else {
        domainInputEl.value = sel.value;
        domainInputEl.readOnly = true;
    }
}

function getCheckboxValue(box) {
	// ????????? ???????????? ?????? ?????? ??????.
	const arr = [];
	// name??? interest??? ?????? ??????.
	let boxes = document.getElementsByName("interest");
	// ????????? ?????? ?????? ??????.
	for(let i = 0 ; i<boxes.length;i++){
		// ???????????? ?????? ??? ????????? ?????? ??????.
		if (interest[i].checked == true) {
			arr.push(interest[i].value);
		}
	}
	// ????????? ??????.
	document.getElementById("resultInterest").textContent =arr;
}
</script>

	<script type="text/javascript">
		function selectmember(memberId) {
			document.getElementById("id").value = id
			frm.submit();
		}
		
	
	</script>

<script type="text/javascript">
	

</script>

	<script type="text/javascript"></script>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js">
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>