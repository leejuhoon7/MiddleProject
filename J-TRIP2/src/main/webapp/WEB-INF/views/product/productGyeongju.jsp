<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JeJu</title>
</head>
<body>

	<section class="hero-wrap"
		style="background-image: url('images/testgj.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-start">
				<div class="col-md-9 ftco-animate pb-4">
					<h1 class="mb-3 bread">
						Gyeongju<br>핫플버스 투어
					</h1>
					<p>
						<a href="reviewMain.do" class="btn btn-primary py-2 px-4">Reviews</a>
						<a href="product.do" class="btn btn-black py-2 px-4">Product
							List</a>
					</p>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-services-2 ftco-no-pt">
		<div class="container-fluid px-0 bg-light">
			<div class="container">
				<div class="row tour py-5">
					<div class="col-md d-flex align-self-stretch ftco-animate">
						<div class="media block-6 services text-center d-block">
							<div
								class="icon justify-content-center align-items-center d-flex">
								<span class="flaticon-alarm-clock"></span>
							</div>
							<div class="media-body">
								<h3 class="heading mb-3">2 Days</h3>
							</div>
						</div>
					</div>
					<div class="col-md d-flex align-self-stretch ftco-animate">
						<div class="media block-6 services text-center d-block">
							<div
								class="icon justify-content-center align-items-center d-flex">
								<span class="flaticon-manager"></span>
							</div>
							<div class="media-body">
								<h3 class="heading mb-3">Age 12+</h3>
							</div>
						</div>
					</div>
					<div class="col-md d-flex align-self-stretch ftco-animate">
						<div class="media block-6 services text-center d-block">
							<div
								class="icon justify-content-center align-items-center d-flex">
								<span class="flaticon-calendar"></span>
							</div>
							<div class="media-body">
								<h3 class="heading mb-3">Oct, Nov, Dec</h3>
							</div>
						</div>
					</div>
					<div class="col-md d-flex align-self-stretch ftco-animate">
						<div class="media block-6 services text-center d-block">
							<div
								class="icon justify-content-center align-items-center d-flex">
								<span class="flaticon-layers"></span>
							</div>
							<div class="media-body">
								<h3 class="heading mb-3">Availability 30</h3>
							</div>
						</div>
					</div>
					<div class="col-md d-flex align-self-stretch ftco-animate">
						<div class="media block-6 services text-center d-block">
							<div
								class="icon justify-content-center align-items-center d-flex">
								<span class="flaticon-wallet"></span>
							</div>
							<div class="media-body">
								<h3 class="heading mb-3">하단 참고</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-12 tour-wrap mb-5">
					<div class="row">
							<div class="col-md-6 d-flex ftco-animate">
								<div class="img align-self-stretch"
									style="background-image: url(upload/gyeongju.jpg);"></div>
							</div>
							<div class="col-md-6 ftco-animate">
						<form id="frm5" method="post" action="reservation.do">
							<input type="hidden" name="no" value="${vo.productNo }">
								<div class="text py-5">
									<h3>
										<a href="#">${vo.productName }</a>
									</h3>
									<h2>
										<a href="#">#첨성대 #대릉원 #월정교 #황리단길 #불국사</a>
									</h2>

									<p class="pos">
										성인 1인기준 <span class="price"><fmt:formatNumber
												value="${vo.productPrice }" pattern="###,###,###원" /></span>
									</p>
									<p class="pos">
										여행 날짜 <span class="date">${vo.productDate }</span>
									</p>
									<p class="pos">
										인원 <select name="amount">
											<c:forEach begin="1" end="10" var="i">
												<option value="${i }">${i }</option>
											</c:forEach>
										</select>
									<p>
										<button type="button"  onclick = "buy('${id}')" class="btn btn-primary" >예약하기 </button>  
										
										<a
											type="button" href="product.do" class="btn btn-secondary">목록보기</a>
									</p>
								</div>

						</form>
							</div>
					</div>
				</div>

				<div class="day-wrap">
					<h3 class="pl-5">Day 1 (10/07 금)</h3>
					<p>* 본 상품은 지정된 출발장소에 도착하신 이후 가이드와 미팅 하는 일정입니다.</p>
					<p>
						<b style="font-size: large;">불국사</b>
					</p>

					<a><img src="images/불국사.jpg"> <img
						src="images/불국사1-2.jpg"></a><br>
					<p>
						<br> 학창시절 수학여행 필수였던 바로 그곳! 그 시절을 추억하며 인증샷 찍고 가요~<br> 봄엔
						핑크빛, 여름엔 초록빛, 가을에는 붉은빛과 노란빛으로 더욱 예뻐요.
					</p>
					<br>
					<p>
						<b style="font-size: large;">보문단지</b>
					</p>

					<a><img src="images/보문단지.jpg"> <img alt=""
						src="images/보문단지1-2.jpg"></a><br>
					<p>
						<br> 계절마다 색다른 분위기를 지닌 호수산책 어때요?<br> 푸릇푸릇한 나무들과 넓게 펼쳐진 호수
						위로 오리배타며 힐링을 느껴보세요.
					</p>
					<br>

					<p>
						<b style="font-size: large;">황리단길</b>
					</p>

					<a><img src="images/황리단길.jpg"> <img alt=""
						src="images/황리단길1-2.jpg"></a>
					<p>
						<br> 경주하면 떠오르는 핫플레이스, 황리단길!<br> SNS에서 핫한 카페와 맛집, 다양한
						소품샵과 길거리 음식까지 다양하게 즐겨보세요.
					</p>
					<br> <br>
					<hr>
				</div>


				<div class="day-wrap">
					<h3 class="pl-5">Day 2 (10/08 토)</h3>
					<p>
						<b style="font-size: large;">첨성대</b>
					</p>

					<a><img src="images/첨성대.jpg"> <img
						src="images/첨성대1-2.jpg"></a>
					<p>
						<br> 경주하면 가장 먼저 떠오르는 랜드마크 국보 31호 첨성대! <br> 다양한 매력을 가진
						사계절 필수코스랍니다. SNS 사진맛집!! <br> (벚꽃, 유채, 튤립, 양귀비, 핑크뮬리가 심어져
						있어요.)
					</p>
					<br>

					<p>
						<b style="font-size: large;">교촌마을 + 월정교</b>
					</p>

					<a><img src="images/교촌마을.jpg"> <img
						src="images/월정교.jpg"></a>
					<p>
						<br> 작은 한옥마을 구경과 국내 최대의 목조교량을 배경으로 돌담 인증샷 찍고, <br> 유명한
						교리김밥까지 먹어야 경주여행의 마무리 아니겠어요?
					</p>
					<br>

					<p>
						<b style="font-size: large;">동궁과 월지</b>
					</p>

					<a><img src="images/동궁과월지1.jpg"> <img
						src="images/동궁과월지2.jpg"></a>
					<p>
						<br> 통일신라시대 궁궐터의 하나로 태자가 거처하는 동궁으로 사용되면서, <br> 나라의 경사가
						있을 때나 귀한 손님을 맞을 때 연회를 베푸는 장소였다고 해요~ <br> 현재는 경주의 대표적인 야경 명소가
						되었어요!
					</p>
					<br> <br>
					<hr>
				</div>




				<table class="table">
					<tbody>
						<tr>
							<th scope="row">Departure Airport</th>
							<td>
								<p>신경주역 픽업 13:30</p>
								<p>시외/고속버스 터미널 픽업 13:50</p>
							</td>
							<td></td>
						</tr>
						<!-- END TR-->

						<tr>
							<th scope="row">Departure Time</th>
							<td>
								<p>신경주역 픽업 13:30</p>
								<p>시외/고속버스 터미널 픽업 13:50</p>
							</td>
							<td></td>
						</tr>
						<!-- END TR-->

						<tr>
							<th scope="row">Return Time</th>
							<td>
								<p>신경주역 드랍 18:00</p>
								<p>시외/고속버스 터미널 드랍 18:20</p>
							</td>
							<td></td>
						</tr>
						<!-- END TR-->

						<tr>
							<th scope="row">Included</th>
							<td class="d-flex">
								<ul>
									<li>[교통] 전일정 차량료</li>
									<li>[숙박] 숙박비 : 스탠다드 객실 이용(2인1실)</li>
								</ul>
							</td>
							<td></td>
						</tr>
						<!-- END TR-->

						<tr>
							<th scope="row">Not Included</th>
							<td class="d-flex">

								<ul>
									<li>[기타] 기타 : 개인경비/선택관광</li>
									<li>개인 여행경비(입장료, 자유시간 식사 등)</li>
								</ul>
							</td>
							<td></td>
						</tr>
						<!-- END TR-->

					</tbody>
				</table>



				<div class="pt-5 mt-5">
					<h3 class="mb-5">Review Page</h3>
					<a href="reviewGyeongju.do" class="btn btn-primary">리뷰페이지 바로가기</a> <br>
					<hr>
					<!-- END comment-list -->


				</div>
			</div>
		</div>
	</section>
	<!-- .section -->
	<script type="text/javascript">
		function buy(id) {
			console.log(id);
			if (id != "") {
				frm5.submit();
			} else {
				alert("로그인이 필요합니다");
			}
		}
	</script>
</body>
</html>