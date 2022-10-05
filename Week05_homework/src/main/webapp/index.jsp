<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>202144020 한소희 - index 페이지</title>
<style>
	.main { 
			background-color : #eeeeee;
			height : 400px;
			margin-top : 10px;
			margin-bottom : 10px;
			text-align : center;
			line-height : 400px; }
			
	p { text-align : center;}
</style>
</head>
<body>
<header>
<%@ include file = "menu.jsp" %>
</header>
<div class = "main">
	<h1> 웹 쇼핑몰에 오신 것을 환영합니다. </h1>
</div>
	
<p><b> Welcome to Web Market! </b></p>

<% 
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat ("yyyy년 MM월 dd일 hh:mm:ss");
%>

<p> 현재 접속 시각 : <%= sf.format(nowTime) %> </p>
</body>
<footer>
<%@ include file = "footer.jsp" %>
</footer>
</html>