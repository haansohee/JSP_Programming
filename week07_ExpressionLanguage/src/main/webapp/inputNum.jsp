<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 두 수를 입력받아 작은 수에서 큰 수까지의 합을 출력하는 예제. 입력 페이지 -> 처리 페이지 -> 출력 페이지 
		(1) 입력 페이지 -->
<title>Insert title here</title>
</head>
<body>
<h3> 두 수를 입력하세요. </h3>
<form action = "calNum.jsp">
	작은 수 : <input type = "text" name = "num1" size = "10">
	큰 수 : <input type = "text" name = "num2" size = "10">	 <br><br>  <!-- 유효성 검사 따로 안 함. 반드시 작은 수가 먼저 들어온다는 가정 하에 만듦. -->
	<input type = "submit" value = "결과 보기">
</form>
</body>
</html>