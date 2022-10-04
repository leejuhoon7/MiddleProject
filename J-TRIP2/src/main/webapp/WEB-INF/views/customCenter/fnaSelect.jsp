<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>


<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="comment-form-wrap pt-5" style="margin-top: 100px; padding-right:120px; padding-left:120px;">
		<h3 class="mb-5" style="text-align: center">FnA</h3>
		<h6 style="text-align: center; margin-top: -20px">자주 묻는 질문</h6>
		<br>
		
		<form action="#" class="p-5 bg-light">
			<div class="form-group" style="margin-top: -30px">
				<label for="name">Title</label> <input type="text"
					class="form-control" id="fnaTitle" name="fnaTitle" value="${vo.noticeNo }" readonly>
			</div>
			
			
			<div class="form-group">
				<label for="email">Date</label> <input type="email"
					class="form-control" id="fnaDate" name="fnaDate" value="${vo.noticeDate }" readonly>
			</div>
			
			
			<div class="form-group">
				<label for="website">Question</label> <input type="url"
					class="form-control" id="fnaQuestion" name="fnaQuestion" value="${vo.noticeTitle }" readonly>
			</div>



			<div class="form-group">
				<label for="message">Content</label>
				<textarea  name="fnaContent" id="fnaContent" cols="30" rows="10"
					class="form-control" readonly>${vo.noticeContent}</textarea>
			</div>


			<div class="d-grid gap-2 d-md-flex justify-content-md-end">
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					<button type="button" class="btn btn-outline-dark"
						onclick="location.href='fnaSelectList.do'" style="margin-right: 30px"
						, style=" border-color:grey">list</button>
		
				</div>
			</div>


		</form>
	</div>
	





</body>
</html>