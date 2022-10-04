<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>

</head>
<body>
	<!--여행 패키지 부분(세번째 탭)-->
	<section class="ftco-section">
		<div class="container">
		
			<div class="row justify-content-center pb-5" style="margin-top:20px">
				<div class="col-md-12 heading-section text-center ftco-animate">
					<span class="subheading">여행은 J-Trip!</span>
					<h2 class="mb-4">Best Place to Travel</h2>
					<p>가격 부담없이, 편안한 패키지 여행으로 떠나볼까요?</p>
				</div>
			</div>
			
			<div class="row">
    			<div class="col-md-6 col-lg-4 ftco-animate">
			<form id="frm" action="productSelect.do" method="post">
			<input type="hidden" id="no" name="no" value="1">
    				<div class="project">
    					<div class="img">
    						<div class="vr"><span>Sale</span></div>
		    				<button onclick="selectProduct()"><img src="images/gyeongju.jpg" class="img-fluid" alt="Gyeongju Template"></button>
	    				</div>
	    				<div class="text">
	    					<h4 class="price"><span class="old-price mr-2">250,000원</span>200,000원</h4>
	    					<span>22.10.07 ~ 22.10.08</span>
	    					<br>
	    					<button onclick="selectProduct()"><h3 style="font-family: Poppins-Regular;">[경주] 신라 1박 2일</h3></button>
	    					<div class="star d-flex clearfix">
	    						<div class="mr-auto float-left">
		    						<span class="ion-ios-star"></span>
		    						<span class="ion-ios-star"></span>
		    						<span class="ion-ios-star"></span>
		    						<span class="ion-ios-star"></span>
		    						<span class="ion-ios-star"></span>
	    						</div>
	    						<div class="float-right">
	    							<span class="rate"><a href="#">(5)</a></span>
	    						</div>
	    					</div>
	    				</div>
    				</div>
    			</form>
    			</div>
    			
    			<div class="col-md-6 col-lg-4 ftco-animate">
			<form id="frm" action="productSelect.do" method="post">
			<input type="hidden" id="no" name="no" value="2">
    				<div class="project">
    					<div class="img">
		    				<button onclick="selectProduct()"><img src="images/부산메인.jpg" class="img-fluid" alt="Busan Template"></button>
	    				</div>
	    				<div class="text">
	    					<h4 class="price">250,000원</h4>
	    					<span>22.10.04 ~ 22.10.05</span>
	    					<br>
	    					<button onclick="selectProduct()"><h3 style="font-family: Poppins-Regular;">[부산] 명소탐방 1박 2일</h3></button>
	    					<div class="star d-flex clearfix">
	    						<div class="mr-auto float-left">
		    						<span class="ion-ios-star"></span>
		    						<span class="ion-ios-star"></span>
		    						<span class="ion-ios-star"></span>
		    						<span class="ion-ios-star"></span>
		    						<span class="ion-ios-star"></span>
	    						</div>
	    						<div class="float-right">
	    							<span class="rate"><a href="#">(5)</a></span>
	    						</div>
	    					</div>
	    				</div>
    				</div>
    			</form>
    		</div>
    	
    	<div class="col-md-6 col-lg-4 ftco-animate">
			<form id="frm" action="productSelect.do" method="post">
			<input type="hidden" id="no" name="no" value="3">
    				<div class="project">
    					<div class="img">
    						<div class="vr"></div>
		    				<button onclick="selectProduct()"><img src="images/rejeju2.jpg" class="img-fluid" alt="Jeju Template"></button>
	    				</div>
	    				<div class="text">
	    					<h4 class="price">379,000원</h4>
	    					<span>22.10.14 ~ 22.10.16</span>
	    					<br>
	    					<button onclick="selectProduct()"><h3 style="font-family: Poppins-Regular;">[핫플레이스] 제주 2박 3일</h3></button>
	    					<div class="star d-flex clearfix">
	    						<div class="mr-auto float-left">
		    						<span class="ion-ios-star"></span>
		    						<span class="ion-ios-star"></span>
		    						<span class="ion-ios-star"></span>
		    						<span class="ion-ios-star"></span>
		    						<span class="ion-ios-star"></span>
	    						</div>
	    						<div class="float-right">
	    							<span class="rate"><a href="#">(5)</a></span>
	    						</div>
	    					</div>
	    				</div>
    				</div>
    			</form>
    			</div>
 

			</div>
		</div>
	</section>
		<script type="text/javascript">
		function selectProduct() {
			
			frm.submit();
		}
	</script>


</body>
</html>