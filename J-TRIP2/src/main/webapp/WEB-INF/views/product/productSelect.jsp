<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 페이지 준비중</title>
</head>
<body>

	<section class="hero-wrap"
		style="background-image: url('images/destination-single.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-start">
				<div class="col-md-9 ftco-animate pb-4">
					<h1 class="mb-3 bread">Discover</h1>
					<p>
						<a href="reviewJeju.do" class="btn btn-primary py-2 px-4">Reviews</a>
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
								<h3 class="heading mb-3">Days</h3>
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
								style="background-image: url(images/jeju2.jpg);"></div>
						</div>
						<div class="text py-5">
							<form name="form1" method="post" action="reservation.do">
								<input type="hidden" name="productNo" value="${vo.productNo }">
								<div class="col-md-6 ftco-animate">
									<h3>
										<a href="#">${vo.productName }</a>
									</h3>
									<h2>
										<a href="#"></a>
									</h2>

									<p class="pos">
										성인 1인기준 <span class="price"><fmt:formatNumber value="${vo.productPrice }" pattern="###,###,###원"/></span>
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
										<a type="submit" class="btn btn-primary">예약하기 </a> <a
											href="product.do" class="btn btn-secondary">목록보기</a>
									</p>
								</div>
							</form>
						</div>
					</div>
				</div>

				<div class="day-wrap">
					<h3 class="pl-5">Day 1</h3>
					<p>상품페이지 준비중 입니다.</p>
					<br>
					<hr>
				</div>


				<div class="day-wrap">
					<h3 class="pl-5">Day 2</h3>
					<p>상품페이지 준비중 입니다.</p>
					<br> <br>
					<hr>
				</div>


				<div class="day-wrap">
					<h3 class="pl-5">Day 3</h3>
					<p>상품페이지 준비중 입니다.</p>
					<br> <br>
					<hr>
				</div>



				<table class="table">
					<tbody>
						<tr>
							<th scope="row">Departure Airport</th>
							<td>
								
							</td>
							<td></td>
						</tr>
						<!-- END TR-->

						<tr>
							<th scope="row">Departure Time</th>
							<td>
								
							</td>
							<td></td>
						</tr>
						<!-- END TR-->

						<tr>
							<th scope="row">Return Time</th>
							<td>
								
							</td>
							<td></td>
						</tr>
						<!-- END TR-->

						<tr>
							<th scope="row">Included</th>
							<td class="d-flex">
								
							</td>
							<td></td>
						</tr>
						<!-- END TR-->

						<tr>
							<th scope="row">Not Included</th>
							<td class="d-flex">
								
							</td>
							<td></td>
						</tr>
						<!-- END TR-->

					</tbody>
				</table>



				<div class="pt-5 mt-5">
					<h3 class="mb-5">Review Page</h3>
					<a href="review.do" class="btn btn-primary">리뷰페이지 바로가기</a> <br>
					<hr>
					<!-- END comment-list -->


				</div>
			</div>
		</div>
	</section>
	<!-- .section -->

</body>
</html>