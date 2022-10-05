<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>202144020 한소희 - loginResult 페이지 </title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pw = request.getParameter("password");

if(!id.equals("admin")) {
	out.println("아이디가 틀립니다.");
} else if (!pw.equals("1234")) {
	out.println("비밀번호가 틀립니다.");
} else {
	out.println("admin님, 안녕하세요!");
}

%>

<br><br>

<button onclick = "location = 'loginForm.jsp'"> 돌아가기 </button>
</body>
</html>