<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<div><h1>질문 등록</h1></div>
	<div>
		<form id="frm" action="qnaInsert.do" method="post">
			<div>
				<table border="1">
							
					<tr>
						<th>제목</th>
						<td colspan="3">
							<input type="text" size="84" id="qnaTitle" name="qnaTitle" required="required">
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3">
							<textarea rows="10" cols="80" id=qnaCotent" name="qnaContent"></textarea>
						</td>
					</tr>

				</table>
			</div><br>
			<div>
				<input type="submit" value="등록"> &nbsp;&nbsp;&nbsp;
				<input type="reset" value="취소"> &nbsp;&nbsp;&nbsp;
				<input type="button" value="목록" onclick="location.href='qnaSelectList.do'"> 
			</div>
		</form>
	</div>
</div>
<br>






</body>
</html>