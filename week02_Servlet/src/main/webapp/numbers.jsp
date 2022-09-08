<%-- jsp 실습2 - 화면에서 두수의 입력을 받음. 입력받은 두수를 이용하여 사칙연산 결과를 출력 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
%>
<h3> 사칙연산 결과 </h3>
<%= num1 %> + <%= num2 %> = <%= num1 + num2 %> <br>
<%= num1 %> - <%= num2 %> = <%= num1 - num2 %> <br>
<%= num1 %> * <%= num2 %> = <%= num1 * num2 %> <br>
<%= num1 %> / <%= num2 %> = <%= num1 / num2 %> <br>
</body>
</html>