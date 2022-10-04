<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
#form {
	display: none;
}
</style>

</head>
<body>
	<div class="comment-form-wrap pt-5" style="margin-top: 100px;  padding-right:120px; padding-left:120px;">
		<h3 class="mb-5" style="text-align: center">QnA</h3>
		<h6 style="text-align: center; margin-top: -20px">QnA에 대해 안내드립니다.</h6>
		<br>
		<form id="frm" action="qnaUpdate.do" class="p-5 bg-light"
			method="post">
			<div class="form-group" style="margin-top: -30px">
				<label for="name">No</label> <input type="text" class="form-control"
					id="qnaNo" name="qnaNo" value="${vo.qnaNo}" readonly>
			</div>


			<div class="form-group">
				<label for="email">Title</label> <input type="text"
					class="form-control" id="qnaTitle" name="qnaTitle"
					value="${vo.qnaTitle}" readonly>
			</div>
			<div class="form-group">
				<label for="website">Date</label> <input type="text"
					class="form-control" id="qnaDate" name="qnaDate"
					value="${vo.qnaDate}" readonly>
			</div>

			<div class="form-group">
				<label for="message">Content</label>
				<textarea cols="30" rows="10" class="form-control" id="qnaContent"
					name="qnaContent" readonly>${vo.qnaContent}</textarea>
			</div>


			<div></div>

			<div class="d-grid gap-2 d-md-flex justify-content-md-end">

				<button type="button" class="btn btn-outline-dark"
					onclick="location.href='qnaSelectList.do'"
					style="margin-right: 30px" , style=" border-color:grey">list</button>

				
		</form>
		<form id="frm1" action="qnaDelete.do" method="post">
			<input type="hidden" id="qnaNo1" name="qnaNo1" value="${vo.qnaNo}">
			<c:if test="${author == '0'}">
			<button type="submit" class="btn btn-outline-dark"
				style="margin-right: 30px" , style=" border-color:grey">Delete</button>
		
			<button type="button" onclick="replyForm()"
				class="btn btn-outline-dark">댓글</button>
					</c:if>	
		</form>
	</div>
	<div style="background: #f8f9fa; margin-top: -20px; margin-bottom: -20px; padding-bottom: 20px;">
		<div style="margin-left: 50px;">
			<form id="frm2" action="replyInsert.do" method="post">
				<p></p>
				<c:if test="${author == '0'}">
				<input type="hidden" id="id1" name="id1"> <label id="form">댓글
					쓰기<input type="text" class="form-control" id="replyContent"
					name="replyContent" style="width: 95%; display: :inline-block;"
					required>

					<button type="button" class="btn btn-outline-dark"
						onclick="qnaNo('${vo.qnaNo }')">등록</button>
				</label>
				</c:if>
			</form>


			<form id="frm3" action="replyDelete.do" method="post">
				<c:if test="${not empty list }">
					<label for="email">Reply</label>
					<input type="hidden" id="id2" name="id2">
					<input type="hidden" id="id3" name="id3">
					<c:forEach items="${list }" var="n">

						<div class="form-group">
							<input type="text" class="form-control" id="qnaTitle"
								name="qnaTitle" value="${n.replyContent }" readonly
								style="width: 90%; display: :inline-block;">
						
						<c:if test="${author == '0'}">
							<button type="button" class="btn btn-outline-dark"
								style="display: :inline-block; text-align: center;"
								onclick="deletere('${n.replyNo}', '${vo.qnaNo }')">삭제</button>
						</c:if>		
						</div>
					</c:forEach>
				</c:if>
			</form>
		</div>

	</div>



	<script type="text/javascript">
		function replyForm() {
			let a = document.getElementById("form");

			a.style.display = "block";
		}

		function qnaNo(id) {
			document.getElementById("id1").value = id;
			frm2.submit();
		}

		function deletere(id, id2) {
			document.getElementById("id2").value = id;
			document.getElementById("id3").value = id2;
			frm3.submit();

		}
	</script>




</body>
</html>