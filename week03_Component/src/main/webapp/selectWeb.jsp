<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!--  redirect 기능을 이용하여 페이지 이동 가능. 웹 서버가 웹 브라우저에게 다른 페이지로 이동하라고 응답하는 기능. -->
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String web = request.getParameter("web");
response.sendRedirect(web);
%>
</body>
</html>