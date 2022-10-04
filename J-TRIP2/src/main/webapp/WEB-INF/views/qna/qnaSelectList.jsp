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



	<div align="center">
		<div>
			<h1>QnA</h1>
		</div>
		<table border=1>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>아이디</th>
				<th>등록일자</th>
			<tr>


				<c:forEach items="${list }" var="n">
					<tr onclick="qnaSelect('${n.qnaNo}')">
						<td align="center">${n.qnaNo }</td>
						<td>${n.qnaTitle }</td>
						<td align="center">${n.memberId }</td>
						<td align="center">${n.qnaDate }</td>

					</tr>
				</c:forEach>
		</table>

	</div>
	<br>
	<div align="center">

		<form id="frm" action="qnaSelect.do" method="post">
			<input type="hidden" id="id" name="id">
			<button type="button" onclick="location.href='qnaInsertForm.do'">글쓰기</button>
		</form>


	</div>

	<script type="text/javascript">
		function qnaSelect(id) {
			document.getElementById("id").value = id;
			frm.submit();
		}
	</script>


</body>
</html>