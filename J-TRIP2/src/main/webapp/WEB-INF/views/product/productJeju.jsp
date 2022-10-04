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
      style="background-image: url('images/jeju3.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div
            class="row no-gutters slider-text align-items-center justify-content-start">
            <div class="col-md-9 ftco-animate pb-4">
               <h1 class="mb-3 bread">
                  JeJu<br>Hot Place 투어
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
                        <h3 class="heading mb-3">3 Days</h3>
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
                           style="background-image: url(upload/rejeju2.jpg);"></div>
                     </div>
                     <div class="col-md-6 ftco-animate">
                  <form id="frm1" method="post" action="reservation.do">
                     <input type="hidden" name="no" value="${vo.productNo }">
                        <div class="text py-5">
                           <h3>
                              <a href="#">${vo.productName }</a>
                           </h3>
                           <h2>
                              <a href="#">#사려니숲길 #금오름 #성이시돌목장 #비밀의숲 #노형수퍼마켙</a>
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
               <h3 class="pl-5">Day 1 (10/14 금)</h3>
               <p>* 본 상품은 제주도에 도착하신 이후 가이드와 미팅 하는 일정입니다.</p>
               <p>
                  <b style="font-size:large;">노형수퍼마켙</b><br> 색을 테마로 활용한 레트로 감성 미디어아트
               </p>

               <a><img src="images/jejuday1.jpg"> <img alt=""
                  src="images/jejuday1-1.jpg"></a>
               <p>
                  <br>색을 주제로 만들어진 다양한 테마를 만날 수 있습니다. 스토리를 생각하여 즐긴다면 노형수퍼마켙의
                  미디어아트를 한층 더 몰입할 수 있습니다.
               </p>
               <br>
               <hr>
            </div>



            <div class="day-wrap">
               <h3 class="pl-5">Day 2 (10/15 토)</h3>
               <p>
                  <b style="font-size:large;">금오름</b><br> 최고의 풍광과 선셋을 자랑하는 작은 백록담
               </p>

               <a><img src="images/금오름1.jpg"> <img
                  src="images/금오름2.jpg"></a>
               <p>
                  <br>금오름은 제주 서부의 오름 중에서도 잘 알려지지 않은 나만 알고 싶은 오름입니다.<br>
                  이곳에서는 분화구에 직접 들어가는 놀라운 경험을 즐길 수 있습니다. 또한 코스가 쉽고 정상에 말들이 뛰놀고 있어 아이와
                  함께 가기에도 참 좋습니다.<br> 비가 온 뒤에는 분화구의 고인 물도 볼 수 있으며, 한 폭의 그림 같은
                  경관에 나도 모르게 감탄사가 나올지도 모릅니다.
               </p>
               <br>

               <p>
                  <b style="font-size:large;">성이시돌 목장</b><br> 광활한 들판과 멋진 제주 목장
               </p>

               <a><img src="images/jejuday2-3.jpg"> <img
                  src="images/jejuday2-4.jpg"></a>
               <p>
                  <br>제주도에서 단연코 멋진 목장을 꼽으라면 ? 보는것만으로도 자연이 주는 힐링이 가득한 성이시돌목장이에요!<br>
                  독특한 건축물 “테쉬폰”앞에서는 이색적인 인생샷은 덤!!
               </p>
               <br>

               <p>
                  <b style="font-size:large;">석부작테마공원</b><br> 돌,바람,여자 제주의 삼다가 여기에 '석부작 테마공원'
               </p>

               <a><img src="images/jejuday2-5.jpg"> <img
                  src="images/jejuday2-6.jpg"></a>
               <p>
                  <br>외국 관광객이 가장 인상적이라 말한 제주의 현무암. 석부작 테마공원은 그런 오묘한 3만 여 점의
                  현무암을 만나볼수 있는 테마공원입니다.<br> 힘찬 폭포 소리를 따라 야외 전시장으로 들어서면 복수초,돌단풍,
                  애인초 등 한라에서 백두를 망라한 천 여 종의 들꽃이 현무암에 뿌리를 내리고 있습니다.<br> 들꽃들의 강인한
                  생명의 터전이 되어주는 현무암. 야외전시장 전시실에는 음지,반음지 식물 석부작 1만 여 점이 전시되어 있다.
                  체험학습장에서는 직접 석부작을 만들어 볼 수도 있습니다.<br> 한라산에서 불어오는 바람, 자연스러운 현무암,
                  그리고 곳곳에 위치한 제주의 여인상. 삼다를 간직한 석부작 테마공원에서 제주의 멋을 느낄수 있습니다.
               </p>
               <br>

               <p>
                  <b style="font-size:large;">고등어조림</b><br> 제주를 대표하는 제주음식
               </p>

               <a><img src="images/jejuday2-7.jpg"> <img
                  src="images/jejuday2-8.jpg"></a>
               <p>
                  <br>제주바다 등 푸른 생선으로 단백질이 풍부하며, 건강에 좋은 음식으로 손꼽힙니다.<br> 싱싱한
                  고등어를 매콤달콤 짭짤하게 졸여서 국물과 함께 비벼 먹으면 밥도둑이 따로 없습니다.<br> 든든하게 한 끼
                  해결하실 수 있습니다.<br>
               </p>
               <br>

               <p><b style="font-size:large;">산방산 유람선</b></p>

               <a><img src="images/jejuday2-9.jpg"> <img
                  src="images/jejuday2-10.jpg"></a>
               <p>
                  <br>세계지질공원으로 인증된 산방산과 용머리해안을 따라 황홀한 바다 풍경을 감상할 수 있습니다.<br>
                  병풍처럼 펼쳐진 천혜의 비경을 바다 위에서 볼 수 있는 흔치 않는 경험을 할 수 있습니다.<br> 산방산
                  유람선은 화순해수욕장, 형제섬, 송악산, 주상절리, 박수기정 등 1시간 코스로 제주를 즐기실 수 있습니다.<br>
               </p>
               <br>

               <p>
                  <b style="font-size:large;">산양큰엉곶</b><br> 동화나라가 된 제주 곶자왈
               </p>

               <a><img src="images/jejuday2-11.jpg"> <img
                  src="images/jejuday2-12.jpg"></a>
               <p>
                  <br>꾸민 듯 안 꾸민 듯 자연을 훼손하지 않고 자연과 하나 된 생태숲길입니다.<br> 무엇보다 이
                  숲길은 유모차와 휠체어도 다닐 수 있는 무장애 길이며, 산책길 중간중간은 오롯이 혼자 걸을 수 있는 호젓한 숲길로도
                  통합니다.<br> 4.3사건 당시 삶의 터전을 잃은 주민들이 생계용으로 숯을 생산했던 숯가마 터와 마을
                  사람들이 피신했던 궤(동굴)도 볼 수 있어 제주의 아픈 역사를 느낄 수 있습니다. <br>
               </p>

               <p><b style="font-size:large;">한라수목원 야시장</b></p>

               <a><img src="images/jejuday2-13.jpg"> <img
                  src="images/jejuday2-14.jpg"></a>
               <p>
                  <br>한라수목원 길에 위치한 야시장으로, 다양한 먹거리와 플리마켓이 펼쳐지는 곳입니다.<br>
                  야시장 내에는 직접 만들어 판매하는 작품들, 포토존들이 있어서 다채롭게 즐기 실 수 있습니다.<br> 인근에는
                  수목원 테마파크 LED 공원도 있어 예쁜 사진도 남길 수 있습니다. <br>
               </p>
               <br> <br>
               <hr>
            </div>

            <div class="day-wrap">
               <h3 class="pl-5">Day 3 (10/16 일)</h3>
               <p>
                  <b style="font-size:large;">제주마방목지</b><br> 넓은 들판에서 한가로이 풀을 뜯는 말들이 있는 평화로운 풍경
               </p>

               <a><img src="images/jejuday3.jpg"> <img
                  src="images/jejuday3-1.jpg"></a>
               <p>
                  <br>5·16 도로를 이용하여 제주시에서 서귀포로 가다보면 산천단을 지나서 한라산 중턱쯤에 위치한 마방목지를
                  지나치게 됩니다.<br> 봉긋한 오름과 푸른 빛깔의 들판이 펼쳐져 있고, 그 곳에서 뛰어노는 말들의 모습에
                  가던 길도 잠시 멈추게 만드는 곳!<br> 마방목지의 말들은 순수한 제주의 혈통 조랑말로 1986년 이후
                  천연기념물 347호로 지정되어 보호되고 있습니다.<br> 142cm 미만의 아담한 몸집으로 성질이 지극히
                  온순해 사람을 많이 따르며, 추위와 각종 질병을 특히 잘 이겨내는 강인함을 지니고 있습니다.<br> 제주의
                  조랑말과 더 친해보고 싶다면 울타리 안으로 조심조심 들어가 풀을 주거나 사진을 찍어도 무방합니다. 하지만 말이 갑자기
                  예...<br>
               </p>
               <br>

               <p>
                  <b style="font-size:large;">사려니숲길</b><br> 청정한 공기를 마실 수 있는 숲길
               </p>

               <a><img src="images/jejuday3-2.jpg"> <img
                  src="images/jejuday3-3.jpg"></a>
               <p>
                  <br>사려니 숲길 양쪽을 따라 다양한 수종이 자라는 울창한 자연림이 넓게 펼쳐져 있는 사려니 숲길입니다.<br>
                  청정한 공기를 마시며 숲길을 걸으면 스트레스 해소에 좋고 장과 심폐 기능이 향상된다고 알려져 많은 사람들이 찾는
                  명소입니다.<br> 또한, 사려니 숲길은 제주시 숨은 비경 31 중 한 곳으로 선정되었습니다.
               </p>
               <br>

               <p>
                  <b style="font-size:large;">흑돼지불고기</b><br> 제주도 대표주자 흑돼지 불고기
               </p>

               <a><img src="images/jejuday3-4.jpg"> <img
                  src="images/jejuday3-5.jpg"></a>
               <p>
                  <br>토종돼지는 털이 검어 '흑돼지'라고 하는데 들판에 자연방목하기 때문에 육질이 쫄깃쫄깃합니다.<br>
                  제주 고사리가 들어가서 더욱 맛있게 즐기실 수 있습니다.<br> 흑돼지 주물럭을 싱싱한 야채들과 함께 볶아서
                  먹으면 밥 한 공기가 부족하게 될 것입니다.
               </p>
               <br>

               <p>
                  <b style="font-size:large;">보롬왓</b><br> 사계절에 어울리는 정원
               </p>

               <a><img src="images/jejuday3-6.jpg"> <img
                  src="images/jejuday3-7.jpg"></a>
               <p>
                  <br>'바람 부는 밭'이라는 뜻의 제주 방언인 보롬왓은 계절별로 알록달록 아름다운 꽃들도 만나 볼 수
                  있으며,<br> 다양한 동물들도 볼 수 있어 남녀노소에게 사랑받는 관광지입니다.<br> 설레는 나의
                  모습과 산도롱한 바람에 흔들리는 꽃향기를 사진에 담아가시는 것도 좋습니다.
               </p>
               <br>

               <p><b style="font-size:large;">안돌오름 비밀의 숲</b></p>

               <a><img src="images/jejuday3-8.jpg"> <img
                  src="images/jejuday3-9.jpg"></a>
               <p>
                  <br>안돌오름에 위치한 비밀의 숲은 인생 사진 찍기 좋은 곳으로 쭉쭉 뻗은 아름다운 편백나무 풍경과 <br>
                  민트색 트레일러는 뭔가 비밀스러운 일이 벌어질 거 같은 동화 속 그림들로 가득합니다.
               </p>
               <br> <br>
               <hr>
            </div>


            <table class="table">
               <tbody>
                  <tr>
                     <th scope="row">Departure Airport</th>
                     <td>
                        <p>김포공항 국내선출발 4번 Gate</p>
                     </td>
                     <td></td>
                  </tr>
                  <!-- END TR-->

                  <tr>
                     <th scope="row">Departure Time</th>
                     <td>
                        <p>에어부산 (BX8021)</p>
                        <p>15:05 ~ 16:15 (1시간 10분 소요)</p>
                     </td>
                     <td></td>
                  </tr>
                  <!-- END TR-->

                  <tr>
                     <th scope="row">Return Time</th>
                     <td>
                        <p>에어부산 (BX8018)</p>
                        <p>19:35 ~ 20:45 (1시간 10분 소요)</p>
                     </td>
                     <td></td>
                  </tr>
                  <!-- END TR-->

                  <tr>
                     <th scope="row">Included</th>
                     <td class="d-flex">
                        <ul>
                           <li>[교통] 왕복항공권</li>
                           <li>[제세금] 국내공항세, 관광진흥개발기금,<br> 전쟁보험료, 유류할증료</li>
                        </ul>
                        <ul>
                           <li>[숙박] 숙박비 : 스탠다드 객실 이용(2인1실)</li>
                           <li>[식사] 식사비 : 일정표상 식사</li>
                        </ul>
                     </td>
                     <td></td>
                  </tr>
                  <!-- END TR-->

                  <tr>
                     <th scope="row">Not Included</th>
                     <td class="d-flex">

                        <ul>
                           <li>[여행자보험] 국내 기본여행자보험</li>
                           <li>[가이드/기사] 가이드/기사 경비 :<br>인당 10,000원 (기사/가이드팁)</li>
                        </ul>
                        <ul>
                           <li>[기타] 기타 : 개인경비/선택관광</li>
                           <li>개인 여행경비(물값, 자유시간시 개인비용 등)</li>
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