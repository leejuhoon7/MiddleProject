<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.comment-form-wrap pt-5{

	padding-right: 120px;
	padding-left: 120px;
	}

</style>

</head>
<body>
	<div class="comment-form-wrap pt-5" style="margin-top:100px; padding-right: 120px;
	padding-left: 120px; ">
		<h3 class="mb-5" style="text-align: center">QnA</h3>
		<h6 style="text-align: center; margin-top: -20px">문의 사항을 남겨주시면
			답변해드리겠습니다.</h6>
		<br>
		<form action="qnaInsert.do" class="p-5 bg-light">


			<div class="form-group">
				<label for="website">Title *</label> 
				<input type="text" class="form-control" id="qnaTitle" name="qnaTitle" required="required"> 
			</div>


			<div class="form-group">
				<label for="message">Content *</label>
				
					
					
				<textarea cols="30" rows="10"  id=qnaCotent" name="qnaContent" class="form-control"></textarea>
					
				
			</div>
			<div>
				
			</div>
			<div class="d-grid gap-2 d-md-flex justify-content-md-end">
			


				<input type="submit" value="등록" class="btn btn-outline-dark" > &nbsp;&nbsp;&nbsp; 
				<input type="button" value="취소" class="btn btn-outline-dark" style="margin-right: 30px", style=" border-color:grey" onclick="location.href='qna.do'">
			</div>



		</form>
	</div>
</body>
</html>