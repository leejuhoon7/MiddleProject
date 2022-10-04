<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeSelectList</title>
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
			<h1>공지사항</h1>
		</div>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th width="70">번호</th>
						<th width="300">제목</th>
						<th width="100">등록일</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty list}">
						<tr>
							<td colspan="6" align="center">게시글이 존재하지 않습니다.</td>
						</tr>
					</c:if>

					<c:if test="${not empty list }">
						<c:forEach items="${list }" var="n">
							<tr onclick="selectNotice('${n.noticeNo}')">
								<td align="center">${n.noticeNo }</td>
								<td>${n.noticeTitle }</td>
								<td>${n.noticeContent }</td> 
								<td align="center">${n.noticeDate }</td>

							</tr>
						</c:forEach>
					</c:if>

				</tbody>
			</table>
			<br>
		</div>	
		<br>
		
	</div>
	
	<script type="text/javascript">
		function selectNotice(id) {
			document.getElementById("id").value = id;
			frm.submit();
		}
	</script>


</body>
</html>