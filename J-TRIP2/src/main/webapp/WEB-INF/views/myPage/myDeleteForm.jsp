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
                  class="bi bi-arrow-left-square me-2"></i></a> 회원탈퇴
            </h1>
         </div>

         <!-- Main content -->
         <form id="deleteFormF" action="myDelete.do" method="post">
            <input type="hidden" id="id" name="id"
               value="${vo.memberId}">

            <!-- Left side -->
            <div class="col-lg-8">
               <!-- Address -->

               <div class="card mb-4">
                  <div class="card-body" style="padding: 0px -150px">
                     <h3 class="h6 mb-4"></h3>
                     <div class="mb-3">
                        <label class="form-label">USER ID *</label> <input type="text"
                           id="id" name="id" value="${id }">


                        <div class="mb-3" style="margin-bottom: 50px">
                           <label class="form-label">PassWord *</label>
                           <input type="password" id="memberPassword" name="memberPassword"
                              value="" required="required" placeholder="비밀번호 입력">
                        </div>
                     </div>
                  </div>
                  <div id="btn-save" style="margin-left: 250px;"></div>
               </div>
               <div>
                  <p>
                     <button id="deletingInformation" class="btn btn-primary btn-sm btn-icon-text">
                        <i class="bi bi-save"></i><span class="text">탈퇴하기</span>
                     </button>
                     <button class="btn btn-light btn-sm btn-icon-text">
                        <i class="bi bi-x"></i> <span class="text">취소</span>
                     </button>
               </div>
            </div>
         </form>
      </div>
   </div>

</body>

<script>
   //수정하기 버튼 클릭시 이벤트 발생
   document.getElementById("deletingInformation").addEventListener('click', alertMessage);

   // 수정하기 버튼 클릭시 창 띄우기
   function alertMessage() {

      alert('회원탈퇴가 완료되었습니다!');
      location.href = 'home.do';
   }
</script>
</html>