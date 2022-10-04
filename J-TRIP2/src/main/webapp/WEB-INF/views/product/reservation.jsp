<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<title>Reservation</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
		
	<div class="container-fluid" style="margin-top: 100px">

		<div class="container">
			<!-- Title -->
			<div
				class="d-flex justify-content-between align-items-lg-center py-3 flex-column flex-lg-row">
				<h1 class="h5 mb-3 mb-lg-0" style="font-weight: bold">
					<a href="../../pages/admin/customers.html" class="text-muted"><i
						class="bi bi-arrow-left-square me-2"></i></a> Reservation
				</h1>
				<div class="hstack gap-3">
					<button class="btn btn-light btn-sm btn-icon-text" onclick="history.back()">
						<i class="bi bi-x"></i> <span class="text">뒤로가기</span>
					</button>
				
					<button class="btn btn-primary btn-sm btn-icon-text"
						id="check_module" type="button">
						<i class="bi bi-save"></i><span class="text">결제하기</span>
					</button>
				</div>
			</div>
			<!-- Main content -->
			<div class="row">
				<!-- Left side -->
				<div class="col-lg-8">
					<!-- Basic information -->
					<div class="card mb-7">
					<br>
							<h3 class="h6 mb-2">&nbsp;&nbsp;&nbsp;&nbsp;회원 정보</h3>
						<div class="card-body">
							<div class="row">
								<div class="col-lg-6">
									<div class="mb-3">
										<label class="form-label">이름</label> 
										<input type="text" class="form-control" name="name" id=name value="${name }" readonly>
									</div>
								</div>
							</div>
					<div class="row">
								<div class="col-lg-6">
									<div class="mb-3">
										<label class="form-label">휴대번호</label> <input
											type="text" class="form-control" name="tel" id=tel value="${tel }" readonly>
									</div>
								</div>
								</div>
							<div class="row">
								<div class="col-lg-6">
									<div class="mb-3">
										<label class="form-label" >이메일</label> <input type="email"
											class="form-control" name="email" id= email value="${email }" readonly>
									</div>
								</div>
							</div>
						</div>
					</div>
							
					<!-- Address -->
					<div class="card mb-4">
						<div class="card-body">
								<label class="form-label" >상품 이름</label> <input type="text"
											class="form-control" value="${vo.productName }" readonly>
							<div class="mb-3">
								<label class="form-label">상품 날짜</label><input type="text"
											class="form-control" value="${vo.productDate }" readonly>

								</select>
							<!-- Person 인원수 -->
							</div>
							<div class="row">
								<div class="col-lg-6">
									<div class="mb-3">
										<label class="form-label">예약 인원</label> 
										<input type="text"
											class="form-control" value="${count }" readonly>
										
										<span
											class="select2 select2-container select2-container--bootstrap-5"
											dir="ltr" data-select2-id="select2-data-8-3peu"
											style="width: 391px;"><span class="selection"><span
												class="select2-selection select2-selection--single"
												role="combobox" aria-haspopup="true" aria-expanded="false"
												tabindex="0" aria-disabled="false"
												aria-labelledby="select2-jdfi-container"
												aria-controls="select2-jdfi-container"><span
													class="select2-selection__rendered"
													id="select2-jdfi-container" role="textbox"
													aria-readonly="true" title="Select city"></span><span class="select2-selection__arrow"
													role="presentation"><b role="presentation"></b></span></span></span><span
											class="dropdown-wrapper" aria-hidden="true"></span></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Pay 결제란 -->
				<div class="col-lg-4">
					<!-- Status -->
					<div class="card mb-4">
						<div class="card-body">
							<h3 class="h6">결제 수단</h3>
							<select class="form-select">
								<option value="active">KaKaoPay</option>
								<option value="active">Deposit</option> 
							</select>
						</div>
					</div>
					
					
					<!-- tems(약관동의) -->
					<div class="card mb-4">
						<div class="card-body">
							<h2 class="h6">상품 약관</h2>
							<ul class="list-group list-group-flush mx-n2">
								<li
									class="list-group-item px-0 d-flex justify-content-between align-items-start">
									<div class="ms-2 me-auto">
										<h6 class="mb-0">
											<a href="공지사항 게시글로 이동" style="color: grey">여행자 보험 가입 동의</a>
										</h6>
										<small>클릭시 상세페이지로 이동합니다</small>
									</div>
									<div class="form-check form-switch">
										<input class="form-check-input" type="checkbox" role="switch">
									</div>
								</li>
								<li
									class="list-group-item px-0 d-flex justify-content-between align-items-start">
									<div class="ms-2 me-auto">
										<h6 class="mb-0">
											<a href="공지사항 게시글로 이동" style="color: grey">개인정보 이용 동의</a>
										</h6>
										<small>클릭시 상세페이지로 이동합니다</small>
									</div>
									<div class="form-check form-switch">
										<input class="form-check-input" type="checkbox" role="switch"
											checked="">
									</div>
								</li>
								<li
									class="list-group-item px-0 d-flex justify-content-between align-items-start">
									<div class="ms-2 me-auto">
										<h6 class="mb-0">
											<a href="공지사항 게시글로 이동" style="color: grey">여행 약관 확인 및 동의</a>
										</h6>
										<small>클릭시 상세페이지로 이동합니다</small>
									</div>
									<div class="form-check form-switch">
										<input class="form-check-input" type="checkbox" role="switch">
									</div>
								</li>
							</ul>
						</div>
					</div>
					<!--결제부분-->
					<div class="card mb-4" style="text-align=center">
						<div class="card-body" style="text-align=center">
							<h2 class="h6">결제 내역</h2>
							<ul class="list-group list-group-flush mx-n2" text-align="center">
								<li
									class="list-group-item px-0 d-flex justify-content-between align-items-start">
									<div class="ms-2 me-auto">
										<h5 class="mb-0" style="font-weight: bold" style="font-family:Poppin, Arial, sans-serif"> 상품 이름 :	${vo.productName }		
										</h5>
									</div>
								
								</li>
								<li
									class="list-group-item px-0 d-flex justify-content-between align-items-start">
									<div class="ms-2 me-auto">
										<h4 class="mb-0" style="font-weight: bold" style="font-family:Poppin, Arial, sans-serif">  총 인원 :	${count }
										</h4>
									</div>
								</li>
								<li
									class="list-group-item px-0 d-flex justify-content-between align-items-start">
									<div class="ms-2 me-auto">
										<h4 id="tPrice" class="mb-0" style="font-weight: bold" style="font-family:Poppin, Arial, sans-serif"> 
										</h4>								
									</div>

									
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>
		

	<style type="text/css">
body {
	background: #eee;
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
</style>
	<script type="text/javascript">
	 let a = document.getElementById("tPrice");
	 let b = ${vo.productPrice} * ${count};
	 a.innerText = "총금액 : " + b;
	</script>
	
	 <script>
    $("#check_module").click(function(){
        var IMP = window.IMP; // 생략가능
        IMP.init('imp87188031'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        
        IMP.request_pay({
            pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : 'J-TRIP 상품 결제',
            amount : 400000,
            buyer_email : 'iamport@siot.do',
            buyer_name : '구매자이름',
            buyer_tel : '010-1234-5678',
            buyer_addr: '서울특별시 강남구 삼성동',
            buyer_postcode : '123-456',
            m_redirect_url : 'http://www.naver.com'
        },function (rsp) {
        	console.log(rsp);
        	if (rsp.success) {
        		var msg = '결제가 완료되었습니다.';
        		msg += '고유ID : ' + rsp.imp_uid;
        		msg += '상점 거래ID : ' + rsp.merchant_uid;
        		msg += '결제 금액 : ' + rsp.paid_amount;
        		msg += '카드 승인번호 : ' + rsp.apply_num;
        		} else {
        			var msg = '결제에 실패하였습니다.';
        			msg += '에러내용 : ' + rsp.error_msg;
        			}
        	alert(msg);
        	location.href="product.do";        	
        	   
        	});
        });
   
    </script>
    
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
		

</body>

</html>