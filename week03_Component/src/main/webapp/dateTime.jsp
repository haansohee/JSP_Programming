<%@ page import = "java.util.Calendar" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!--  page 지시자 속성 실습 - import 속성 : 스크립트 요소 안에서 사용할 자바 클래스와 인터페이스를 임포트 하기 위해 사용하는 속성. -->
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  오늘의 날짜와 현재 시각을 뿌려주는 코드. -->
<%
Date date = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("hh:mm:ss");
String time = sdf.format(date);
Calendar cal = Calendar.getInstance();
%>

<h1> 오늘은 <%= cal.get(Calendar.YEAR) %> 년 
			 <%= cal.get(Calendar.MONTH) + 1 %> 월 
			  <%= cal.get(Calendar.DATE) %> 일입니다. </h1>
<h2> 현재 시작은 <%= time %> 입니다. </h2>
</body>
</html>