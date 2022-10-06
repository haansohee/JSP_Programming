<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 회원 가입 입력 폼 만들기 예제  -->
<title>Insert title here</title>
</head>
<body>
<h3> * 회원 가입 *</h3>
<form action = "memberJoin.jsp" method = "post">
	<table border = "1">
			<tr><td> 아이디 </td>
				<td> <input type = "text" name = "id"></td>
			</tr>
			
			<tr><td> 비밀번호  </td>
				<td> <input type = "password" name = "password"> </td>
			</tr>
			
			<tr><td> 이름 </td>
				<td> <input type = "text" name = "name"> </td>
			</tr>
			
			<tr><td>이메일 </td>
				<td> <input type = "text" name = "email"> </td>
			</tr>
			
			<tr><td colspan = "2" align = "center">
				<input type ="submit" value = "회원가입">
				<!--  입력취소 버튼 -->
				<input type = "reset" value = "취소"></td>
			</tr>
			
	</table>
</form>
</body>
</html>