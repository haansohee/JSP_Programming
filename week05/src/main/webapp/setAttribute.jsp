<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--  기본 객체의 속성을 이용한 값 전달 예제 -->
<title>Insert title here</title>
</head>
<body>
이 페이지는 setAttribute.jsp가 생성한 것입니다.

<%
	request.setCharacterEncoding("utf-8");
	request.setAttribute("id", "admin");
	request.setAttribute("name", "홍길동");
	request.setAttribute("addr", "서울");
	request.setAttribute("email", "hgd@naver.com");
%>

<jsp:forward page = "/getAttribute.jsp"/>
</body>
</html>