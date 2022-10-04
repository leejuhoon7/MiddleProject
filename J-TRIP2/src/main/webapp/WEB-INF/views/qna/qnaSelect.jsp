<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
form {
	display: inline;
}

#form {
	display: none;
}
</style>
</head>
<body>
	<div class="sidebar">
		<ul>
			<li><a class="menuLink" href="center.do">고객센터</a></li>
			<hr>
			<li><a class="menuLink" href="fnaSelectList.do">자주 찾는 질문</a></li>
			<li><a class="menuLink" href="로그인.do">1:1 게시판 문의</a></li>
			<li><a class="menuLink" href="noticeSelectList.do">공지사항</a></li>

		</ul>
	</div>



	<div align="center">

		<div>
			<h1>QnA</h1>
		</div>
		<hr>
		<br>
		<div>
			<table border="1">
				<tr>
					<td width="30">${vo.qnaNo }</td>
					<td width="100">${vo.qnaTitle }</td>
				</tr>

				<tr>
					<td colspan="2">${vo.qnaContent }</td>
				</tr>



			</table>


		</div>
	</div>
	<br>
	
	
		<div align ="center">
			<table border="1">
					<c:if test="${not empty list }">
						<c:forEach items="${list }" var="n">
						<tr>
							<td>${n.replyContent }</td>
							<td><button type="button" onclick="deletere('${n.replyNo}', '${vo.qnaNo }')">삭제</button></td>
						</tr>

					</c:forEach>


					</c:if>
			</table>
		</div>
		
		<p></p>
		
		
	<div align="center">
		<input type="hidden" id="id" name="id">
		<button type="button" onclick="location.href='qnaSelectList.do'">목록</button>



		<form id="frm" action="qnaDelete.do" method="post">
			<button type="submit" id="qnaNo" name="qnaNo" value="${vo.qnaNo }">글 삭제</button>
		</form>

		<button onclick="replyForm()">댓글</button>
		<form id="frm1" action="replyInsert.do" method="post">
			<p></p>
			<input type="hidden" id="id1" name="id1"> <label id="form">댓글
				쓰기 : <input type="text" id="replyContent" name="replyContent"
				required>
				<button type="button" onclick="qnaNo('${vo.qnaNo }')">등록</button>
			</label>
		</form>
		
		<form id="frm2" action="replyDelete.do" method="post">
			<input type="hidden" id="id2" name="id2">
			<input type="hidden" id="id3" name="id3">
		</form>
		<br>
		



	</div>

	<script type="text/javascript">
		function replyInsert(value) {
			if (value == 0) {
				location.href = ""
			}
		}

		function replyForm() {
			let a = document.getElementById("form");

			a.style.display = "block";

		}

		function qnaNo(id) {
			document.getElementById("id1").value = id;
			frm1.submit();
		}
		
		function deletere(id, id2){
			document.getElementById("id2").value = id;
			document.getElementById("id3").value = id2;
			frm2.submit();
			
		}
	</script>




</body>
</html>