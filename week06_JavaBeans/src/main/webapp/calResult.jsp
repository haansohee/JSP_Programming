<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--  사칙연산 계산기 만들기. - (3) 결과 폼 생성. -->
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id = "calc" class = "week06_JavaBeans.Calculator"/>
<jsp:setProperty property = "*" name = "calc"/>

<h1> 계산기 - useBean 사용하기 </h1>
<hr>
결과 : <%= calc.cal() %>
</body>
</html>