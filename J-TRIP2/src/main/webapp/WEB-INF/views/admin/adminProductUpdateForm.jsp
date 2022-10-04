<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<title>상품 등록/수정/삭제</title>

<style type="text/css">
body {
   margin-top: 20px;
   background: #eee;
}

.ui-w-40 {
   width: 40px !important;
   height: auto;
}

.card {
   box-shadow: 0 1px 15px 1px rgba(52, 40, 104, .08);
}

.ui-product-color {
   display: inline-block;
   overflow: hidden;
   margin: .144em;
   width: .875rem;
   height: .875rem;
   border-radius: 10rem;
   -webkit-box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.15) inset;
   box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.15) inset;
   vertical-align: middle;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body style="margin-top: 80px">
   <div class="container px-3 my-5 clearfix" style="margin-top: 100px">
      <!-- Shopping cart table -->
      <div class="card">
         <div class="card-body">
            <div class="card-header py-3">
               <nav class="navbar navbar-expand-lg bg-light">
                  <div class="container-fluid">
                     <a class="navbar-brand" href="#">Admin</a>
                     <button class="navbar-toggler" type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                     </button>
                     <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                           <li class="nav-item"><a class="nav-link active"
                              aria-current="page" href="adminProduct.do">Product</a></li>
                           <li class="nav-item"><a class="nav-link active"
                              aria-current="page" href=""></a></li>

                        </ul>

                     </div>
                  </div>
               </nav>
            </div>


            <div class="table-responsive">
               <table class="table table-bordered m-0">
                  <thead>
                     <tr>
                        <!-- Set columns width -->
                        <th class="text-center py-3 px-4" style="min-width: 100px;">Product
                           No</th>
                        <th class="text-right py-3 px-4" style="width: 300px">Img</th>
                        <th class="text-center py-3 px-4" style="min-width: 100px;">
                           Date</th>
                        <th class="text-right py-3 px-4" style="width: 100px;">
                           Name</th>
                        <th class="text-center py-3 px-4" style="width: 100px;">
                           Price</th>
                        <th class="text-right py-3 px-4" style="width: 200px;">Edit
                           &amp; Delete</th>
                     </tr>
                  </thead>
                  <tbody>
                     <c:if test="${empty list }">
                        <tr>
                           <td colspan="6" align="center">게시글이 존재하지 않습니다.</td>
                        </tr>
                     </c:if>
                     <c:if test="${not empty list }">
                        <c:forEach items="${list }" var="p">


                           <tr>
                              <td class="admin-pro-name" align="center" id="aa">${p.productNo }</td>
                              <td align="center"><img src="./upload/${p.productImg }"
                                 style="width: 100px;"></td>
                              <td align="center">${p.productDate }</td>
                              <td align="center">${p.productName }</td>
                              <td align="center"><fmt:formatNumber
                                    value="${p.productPrice }" pattern="###,###,###원" /></td>

                              <td style="padding-left: 40px">

                                 <div class="hstack gap-3" style="float: center">

                                    <c:if test="${p.productNo != null }">
                                       <button class="btn btn-light btn-sm btn-icon-text"
                                          style="float: center" type="button"
                                          onclick="subCall('E',this)">
                                          <i class="bi bi-x"></i> <span class="text"> 수정</span>
                                       </button>

                                       <button class="btn btn-primary btn-sm btn-icon-text"
                                          type="button" onclick="subCall('D',this)">
                                          <i class="bi bi-save"></i> <span class="text">삭제</span>
                                       </button>
                                    </c:if>
                                 </div>

                              </td>
                           </tr>

                        </c:forEach>

                     </c:if>

                  </tbody>
               </table>
               <br> <br>
            </div>

            <div id="btn" style="margin-left: 500px">
               <input type="hidden" id="no" name="no" value="${vo.productNo }">

               <button type="button" class="btn btn-lg btn-primary mt-2"
                  onclick="location.href='adminProductInsertForm.do'">등록</button>

            </div>
            <div class="float-right" style="margin-top: 20px;"></div>
            <br>

         </div>
      </div>
   </div>


   <div>
      <form id="frm2" method="post">
         <input type="hidden" id="adminNo" name="adminNo" value="${vo.productNo }">
      </form>
   </div>


   <script type="text/javascript">
      function subCall(str,data) {

         let id = data.parentElement.parentElement.parentElement.children[0].innerText

         document.getElementById("adminNo").value = id;
         let a = document.getElementById("adminNo").value
         console.log(a)
         
         
         if(str == 'E') {
         frm2.action = "adminProductUpdateForm.do"; //수정
         }else {
            frm2.action = "adminProductDelete.do";  //삭제
         }

          frm2.submit(); 
      }
   </script>
</body>
</html>