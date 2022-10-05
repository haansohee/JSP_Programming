<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>202144020 한소희 - loginForm 페이지 </title>
<style>
	td { text-align : center; }
</style>
</head>
<body>
<p> 로그인 화면 </p>
<table border = "1">
<form action = "./loginResult.jsp" method = "post">
	<tr>
		<td> 아이디 </td> <td><input type = "text" name = "id"></td>
	 </tr>
	 
	 <tr>
	 	<td> 비밀번호 </td> <td><input type = "text" name = "password"> </td>
	 </tr>
	 <tr>
	 	<td colspan = "2"> <button type = "submit"> 로그인 </button> </td>	 		
	  </tr>	 
</form>
</table>
</body>
</html>
