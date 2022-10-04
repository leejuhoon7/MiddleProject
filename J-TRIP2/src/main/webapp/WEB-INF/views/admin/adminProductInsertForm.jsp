<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
<!--  All snippets are MIT license http://bootdey.com/license -->
<title>Product Insert Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style type="text/css">
body {
   background: #eee;
}

.col-lg-8{
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

</style>

</head>
<body>
   <div class="container-fluid" style="margin-top: 100px">

      <div class="container">
         <!-- Title -->
         <div
            class="d-flex justify-content-between align-items-lg-center py-3 flex-column flex-lg-row">
            <h1 class="h5 mb-3 mb-lg-0" style="font-weight: bold; margin-left:auto; margin-right: auto;">
               <a href="../../pages/admin/customers.html" class="text-muted"><i
                  class="bi bi-arrow-left-square me-2"></i></a> 여행 상품 등록
            </h1>
            
         </div>

         <!-- Main content -->

            <!-- Left side -->
            <form id="frm" action="adminProductInsert.do" method="post" enctype="multipart/form-data">
            <div class="col-lg-8" >
               <!-- Address -->
               <div class="card mb-4"  >
                  <div class="card-body" style="padding: 0px -150px" >
                     <h3 class="h6 mb-4"></h3>
                     <div class="mb-3">
                        <label class="form-label">Product Date</label>
                         <input type="text" id="productDate" name="productDate" class="form-control" required="required">
                     </div>
                     <span class="select2-selection__arrow" role="presentation"><b
                        role="presentation"></b></span><span class="dropdown-wrapper"
                        aria-hidden="true"></span>
                     <div class="mb-3" style="margin-bottom: 50px">
                        <label class="form-label">Product Name</label> <input
                           type="text" id="productName" name="productName" class="form-control" required="required">
                     </div>
                     <span class="select2-selection__arrow" role="presentation"><b
                        role="presentation"></b></span><span class="dropdown-wrapper"
                        aria-hidden="true"></span>
                        <div class="mb-3" style="margin-bottom: 50px">
                        <label class="form-label">Product Price</label> <input
                           type="number" id="productPrice" name="productPrice" class="form-control" required="required">
                     </div>
                     <span class="select2-selection__arrow" role="presentation"><b
                        role="presentation"></b></span><span class="dropdown-wrapper"
                        aria-hidden="true"></span>
                        <div class="mb-3" style="margin-bottom: 50px">
                        <label class="form-label">Product Image</label> <input
                           type="file" class="form-control" id="file" name="file">
                     </div>
                     <span class="select2-selection__arrow" role="presentation"><b
                        role="presentation"></b></span><span class="dropdown-wrapper"
                        aria-hidden="true"></span>
                  </div>

               </div>
               
               <div id="btn-save" style=" margin-left:250px; ">
            <div >
            <p>               
               <button class="btn btn-primary btn-sm btn-icon-text"
               type="submit">
               
                  <i class="bi bi-save"></i><span class="text">등록</span>
               </button>
               
               <button class="btn btn-light btn-sm btn-icon-text"
               type="reset">
                  <i class="bi bi-x"></i> <span class="text">초기화</span>
               </button>
               

               <button class="btn btn-light btn-sm btn-icon-text"
               onclick="location.href='adminProductSelectList.do'">
                  <i class="bi bi-x"></i> <span class="text">목록</span>
               </button>
               </div>
            </div>
            </div>
      </form>
      </div>
      
   </div>
   

   

   

   <script type="text/javascript"></script>
   <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>