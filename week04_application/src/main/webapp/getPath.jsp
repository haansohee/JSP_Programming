<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--  application 기본 객체를 이용하여 경로명 읽어오기 -->
</head>
<body>
<h3> application 기본 객체 </h3>

<!--  application 기본 객체에 대해 호출할 수 있는 getContextPath 메서드는 웹 어플리케이션의 URL 경로명을 return하는 메서드.

		application 기본 객체에 대해 호출할 수 있는 getRealPath 메서드는 웹 어플리케이션 내에서의 파일 경로명을 파일 시스템 전체에 대한	
		절대 경로명으로 바꾸는 메서드. -->

<%
	String realPath = application.getRealPath("/");
	String contPath = application.getContextPath();
%>

Root의 실제 파일 경로명 = <%= realPath %> <br>
Web application의 URL 경로명 = <%= contPath %> br>
</body>
</html>