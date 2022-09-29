<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% int number = 10; %>
<%@ include file = "include2.jspf" %> <!-- jsp 라고 적어도 상관없지만, 포함되는 파일임을 알려주기 위해 jspf라고 지정해줌. -->
<!--  공통 변수 DATAFOLDER = "<%= dataFolder %>" -->
</body>
</html>