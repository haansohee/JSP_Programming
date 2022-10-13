<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 두 수를 입력받아 작은 수에서 큰 수까지의 합을 출력하는 예제. 입력 페이지 -> 처리 페이지 -> 출력 페이지 
		(3) 출력 페이지 -->
<title>Insert title here</title>
</head>
<body>
<!-- getAttribute로 값 가져오기. -->
<%
	int num1 = (int)request.getAttribute("num1");
	int num2 = (int)request.getAttribute("num2");
	int sum = (int)request.getAttribute("sum");

%>

<h3>
	<%= num1 %>부터 <%= num2 %> 까지의 합 구하기
</h3>

	결과 값 = <%= sum %>
</body>
</html>