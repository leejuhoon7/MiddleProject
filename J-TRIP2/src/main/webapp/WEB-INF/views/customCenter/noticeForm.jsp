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
	<div class="comment-form-wrap pt-5" style="margin-top: 100px; padding-right:120px; padding-left:120px;">
		<h3 class="mb-5" style="text-align: center">Notice</h3>
		<h6 style="text-align: center; margin-top: -20px">공지사항에 대해 안내드립니다.</h6>
		<br>
		<form action="noticeInsert.do" class="p-5 bg-light">

			<div class="form-group">
				<label for="noticeTitle">Title *</label> <input type="text"
					class="form-control" id="noticeTitle" name="noticeTitle">
			</div>


			<div class="form-group">
				<label for="message">Content *</label>
				<textarea name="noticeContent" id="noticeContent" cols="30" rows="10"
					class="form-control"></textarea>
			</div>
			
			<div class="d-grid gap-2 d-md-flex justify-content-md-end">
						<button type="submit" class="btn btn-outline-dark"  style="margin-right:30px", style=" border-color:grey">Write</button>
						<button type="button" class="btn btn-outline-dark" onclick="location.href='noticeSelectList.do'" style="margin-right:30px", style=" border-color:grey">Cancle</button>			
						
					</div>

		</form>
	</div>
</body>
</html>