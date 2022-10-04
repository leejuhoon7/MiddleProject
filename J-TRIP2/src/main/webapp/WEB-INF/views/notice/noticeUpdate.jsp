<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align = "center"><h1>공지사항 수정</h1></div>
	<div align = "center">
		<form id="frm" action="noticeUpdate.do" method="post">
			
			<input type="hidden" value="${vo.noticeNo }" id="id" name="id" >
		
			<div>
				<table border="1">
							
					<tr>
						<th>제목</th>
						<td colspan="3">
							<input type="text" size="84" id="noticeTitle" name="noticeTitle" value="${vo.noticeTitle }" required="required">
						</td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3">
							<textarea rows="10" cols="80" id="noticeCotent" value="${vo.noticeContent }" name="noticeContent"></textarea>
						</td>
					</tr>

				</table>
			</div><br>
			<div>
				<input type="submit" value="등록"> &nbsp;&nbsp;&nbsp;
				<input type="reset" value="취소"> &nbsp;&nbsp;&nbsp;
				<input type="button" value="목록" onclick="location.href='noticeSelectList.do'"> 
			</div>
		</form>
	</div>
	
</body>
</html>