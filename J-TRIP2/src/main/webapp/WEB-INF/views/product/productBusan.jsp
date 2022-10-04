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
      style="background-image: url('images/부산back4.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div
            class="row no-gutters slider-text align-items-center justify-content-start">
            <div class="col-md-9 ftco-animate pb-4">
               <h1 class="mb-3 bread">
                  Busan<br>명소탐방 투어
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
                           style="background-image: url(upload/부산메인.jpg);"></div>
                     </div>
                     <div class="col-md-6 ftco-animate">
                  <form id="frm1" method="post" action="reservation.do">
                     <input type="hidden" name="no" value="${vo.productNo }">
                        <div class="text py-5">
                           <h3>
                              <a href="#">${vo.productName }</a>
                           </h3>
                           <h2>
                              <a href="#">#자갈치시장 #해변열차 #태종대 #환여울문화마을 #송도 스카이워크</a>
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
               <h3 class="pl-5">Day 1 (10/04 화)</h3>
               <p>* 본 상품은 지정된 출발장소에 도착하신 이후 가이드와 미팅 하는 일정입니다.</p>
               <p>
               <b style="font-size:large;">해동용궁사</b></p>

               <a><img src="images/해동용궁사1.jpg"> 
               <img src="images/해동용궁사2.jpg"></a><br>
               <p><br>
                  진심으로 기도를 하면 누구나 꼭 현몽을 받고 한가지 소원을 이루는 염험한 곳으로 유명하다.<br>
                  특히 산과 바다를 동시에 끼고 있는 독특한 사찰이다.<br>
                  황금부처상 옆 포토존에서 사진은 필수!<br>
               </p><br>
               <p>
               <b style="font-size:large;">기장 아난티코브</b></p>
               
               <a><img src="images/기장1.jpg"> 
               <img src="images/기장2.jpg"></a><br>
               <p><br>
                  부산 기장의 새로운 관광명소로 각광받는 곳으로 호텔, 카페, 서점, 레스토랑, 해변공원 산책로, 야외공연장 등을 관람할 수 있다.
               </p><br>
               
               <p><b style="font-size:large;">해운대 블루라인파크 해변열차</b></p>
               <p>(편도 1회 포함)</p>
               
               <a><img src="images/해변열차1.jpg"></a>
               <p><br>
                  해운대 청사포~달맞이터널~해운대 미포정거장에 이르는 4.8km 구간의 수려한 해안절경을 따라 해운대 해변열차를 탑승할 수 있다.<br>
                  해운대에서 자유시간을 즐겨보세요 ~!
               </p><br>
               
               <p><b style="font-size:large;">해운대, 동백섬 자유시간 - 부산 아쿠아리움 관람/유람선 (요금별도)</b></p>
               
               <a><img src="images/해운대1.jpg">
               <img src="images/해운대2.jpg"></a>
               <p><br>
                  원래는 섬이었던 이곳은 오랜 세월 퇴적작용으로 육지와 연결되었지만 아직도 동백섬이라고 부르고 있어 옛날 지형을 연상시켜 주고 있다.<br>
                  동백섬을 둘러 산책로가 조성되어 시민들의 발길이 끊이지 않고 최치원의 해운대 각자, 동상, 시비를 비롯해서<br>
                  황옥공주 전설의 주인공 인어상과 누리마루 APEC하우스 등 과거와 현재에 걸친 인적이 곳곳에 배어 있다.
               </p><br>
               
               <br>
               <hr>
            </div>


            <div class="day-wrap">
               <h3 class="pl-5">Day 2 (10/05 수)</h3>
               <p>
                  <b style="font-size:large;">유엔기념공원</b>
               </p>

               <a><img src="images/유엔1.jpg"> <img
                  src="images/유엔2.jpg"></a>
               <p>
                  <br>
                  유엔기념공원은 세계 유일의 유엔군 묘지로서, 세계평화와 자유의 대의를 위해 생명을 바친 21개국의 참전국의 유엔군 장병들이 잠들어 있다.<br>
               </p>
               <br>

               <p>
                  <b style="font-size:large;">송도해수욕장, 송도 스카이워크 구름산책로</b>
               </p>

               <a><img src="images/송도1.jpg"> <img
                  src="images/송도2.jpg"></a>
               <p>
                  <br>
                  부산에서 제일먼저(1931년) 개장한 해수욕장인 송도 해수욕장, 그 인근에는 수산시장과 암남공원 등이 있다. <br>
                  또한 해수욕장 동편는 거북섬을 육지와 있는 다리인 구름산책로(스카이워크)가 있다.<br>
                  부구간은 투명 강화유리로 되어있어 바다 한가운데를 걸어가는 느낌을 느낄 수 있다.<br>
                  바다위를 거닐며, 수많은 배가 정박해있는 송도연안과 송도해수욕장을 한눈에 볼 수 있다.
               </p>
               <br>

               <p>
                  <b style="font-size:large;">태종대</b>
               </p>

               <a><img src="images/태종대1.jpg"> <img
                  src="images/태종대2.jpg"></a>
               <p>
                  <br>
                  태종대는 부산국가지질공원 중 하나이며, 공룡이 지배하던 백악기에 만들어졌다.<br>
                  백악기 말 부산 일대에서 화산활동이 격렬했고, 휴식기에 들어가면 호수에 퇴적물이 쌓였다.<br>
                  퇴적층이 굳어 바위가 되고, 해수면이 상승함에 따라 오랜 시간 물과 바람에 씻기고 깎여 지금의 태종대가 탄생했다. <br>
                  그 오묘한 모습에 반해 태종무열왕이 한동안 머물며 활을 쏘았다고 하여 ‘태종대’라는 지명이 생겼다.<br>
                  - 다누비열차, 태종대유람선 개별이용 (요금 개별부담)
               </p>
               <br>
               
               <p>
                  <b style="font-size:large;">흰여울문화마을, 절영해안산책로</b>
               </p>

               <a><img src="images/환여울1.jpg"></a>
               <p>
                  <br>
                  피난민들의 애잔한 삶이 시작된 곳이자 현재는 마을주민과 함께하는 문화마을공동체 흰여울문화마을, 영화 '변호인'의 촬영지로도 유명하며,<br>
                  인근에는 멋진 바다경치와 함께 절영해안산책로도 걸어볼 수 있다.<br>
                  골목 구석구석 카페에서 음료한 잔 하며 쉬어가볼까요 ~?
               </p>
               <br>
               
               <p>
                  <b style="font-size:large;">산만디 투어</b>
               </p>

               <a><img src="images/산만디1.jpg">
               <img src="images/산만디2.jpg"></a>
               <p>
                  <br>
                   산만디는 경상도 사투리로 산꼭대기를 일컫는 말로 청소년에게는 근대를 체험하는 기회를, <br>
                  어른들에게는 향수를 불러일으키는 시간 여행을 선물한다.<br>
                  산만디에서 주민들의 삶을 엿볼 수 있는 168계단, 산복도로의 랜드마크 유치환의 우체국, 북항이 내려다 보이는 전망대 등을 볼거리가 많다.<br>
                  모노레일이 지나갈 때 168계단에 앉아 사진을 찍어보세요~!
               </p>
               <br>
               
               <p>
                  <b style="font-size:large;">자갈치시장 - 개별자유석식</b>
               </p>

               <a><img src="images/자갈치1.jpg">
               <img src="images/자갈치2.jpg"></a>
               <p>
                  <br>
                   자갈치시장은 중구 남포동과 충무동에 걸쳐 있는 해안통으로 도심과 접하고 있어 시장기능과 위락기능을 겸하고 있을 뿐만 아니라<br>
                  인근의 신동아 수산물시장, 건어물시장과 함께 부산지역의 성격을 가장 잘 보여주는 시장이다.<br>
                  자갈치라는 지명은 자갈해안에서 비롯 되었다는 설과 활어만을 취급한다고 하여<br>
                  활어로서 많이 거래되는 "자갈치"란 어종의 명칭에서 유래되었다는 설이 있다.
               </p>
               <br>
               
               <br>
               <hr>
            </div>




            <table class="table">
               <tbody>
                  <tr>
                     <th scope="row">Departure Airport</th>
                     <td>
                        <p>부산역 2층 9번출구 앞 11:30</p>
                     </td>
                     <td></td>
                  </tr>
                  <!-- END TR-->

                  <tr>
                     <th scope="row">Departure Time</th>
                     <td>
                        <p>부산역 2층 9번출구 앞 11:30</p>
                     </td>
                     <td></td>
                  </tr>
                  <!-- END TR-->

                  <tr>
                     <th scope="row">Return Time</th>
                     <td>
                        <p>부산역 드랍 20:00</p>
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
               <a href="reviewMain.do" class="btn btn-primary">리뷰페이지 바로가기</a> <br>
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
            frm1.submit();
         } else {
            alert("로그인이 필요합니다");
         }
      }
   </script>
</body>
</html>