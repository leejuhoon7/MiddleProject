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
	<div class="comment-form-wrap pt-5"
		style="margin-top: 100px; padding-right: 120px; padding-left: 120px;">
		<h3 class="mb-5" style="text-align: center">Notice</h3>
		<h6 style="text-align: center; margin-top: -20px">공지사항에 대해
			안내드립니다.</h6>
		<br>
		<form id="frm" action="noticeUpdateForm.do" class="p-5 bg-light"
			method="post">
			<div class="form-group" style="margin-top: -30px">
				<label for="name">No</label> <input type="text" class="form-control"
					id="noticeNo" name="noticeNo" value="${vo.noticeNo}" readonly>
			</div>


			<div class="form-group">
				<label for="email">Title</label> <input type="text"
					class="form-control" id="noticeTitle" name="noticeTitle"
					value="${vo.noticeTitle}" readonly>
			</div>
			
			
			<div class="form-group">
				<label for="website">Date</label> <input type="text"
					class="form-control" id="noticeDate" name="noticeDate"
					value="${vo.noticeDate}" readonly>
			</div>

			<div class="form-group">
				<label for="message">Content</label>
				<textarea cols="30" rows="10" class="form-control"
					id="noticeContent" name="noticeContent" readonly>${vo.noticeContent}</textarea>
			</div>


			<div class="d-grid gap-2 d-md-flex justify-content-md-end">

				<button type="button" class="btn btn-outline-dark" onclick="location.href='noticeSelectList.do'"
					style="margin-right: 30px" , style=" border-color:grey">list</button>


				<c:if test="${author == '0'}">
					<button type="submit" class="btn btn-outline-dark"
						style="margin-right: 30px" , style=" border-color:grey">Edit</button>
				</c:if>
		</form>




		<form id="frm1" action="noticeDelete.do" method="post">
			<input type="hidden" id="notictNo1" name="noticeNo1" value="${vo.noticeNo}">
			<c:if test="${author == '0'}">
				<button type="submit" class="btn btn-outline-dark"
					style="margin-right: 30px" , style=" border-color:grey">Delete</button>
			</c:if>
		</form>
	</div>

	</div>



</body>
</html>