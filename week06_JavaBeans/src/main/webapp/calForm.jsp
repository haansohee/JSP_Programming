<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--  사칙연산 계산기 만들기. - (2) 입력받는 폼 생성. -->
<title>Insert title here</title>
</head>
<body>
<h1> 계산기 - useBean 사용하기 </h1>
<hr>
<form action = "calResult.jsp">
	<input type = "text" name = "num1"  size = "10">
	
	<select name = "op">
		<option> + </option>
		<option> - </option>
		<option> * </option>
		<option> / </option>
	</select>
	
	<input type = "text" name = "num2" size = "10">
	<input type = "submit" value = "실행">
</form>
</body>
</html>