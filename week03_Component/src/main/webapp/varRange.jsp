<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!--  스크립트 변수의 범위 실습. -->
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3> 변수의 범위 </h3>
<%!
// 선언문 - 선운문 내에서 정의된 변수는 전역 변수.
String strVar = "전역변수.";
%>

<%!
// 선언문 - 메서드 선언.
String getStr()
{
	return strVar;
}
%>

<%
// 스크립틀릿 - 스크립틀릿 내에서 정의된 변수는 지역 변수.
String strVar2 = "지역변수.";
%>

<br>
선언문에서 선언한 변수 strVar = <%= getStr() %> <br>
스클립트에서 언한 변수 strVar2 = <%= strVar2 %> <br>
</body>
</html>