<!--  객체 생성한 코어 태그 라이브러리 예제  -->
<%@ page import = "week09_JSTL.MemberInfo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MemberInfo member = new MemberInfo();
%>

<!-- 객체 생성 시 반드시 target. target에는 객체 이름 들어감. -->

<c:set var = "m" value = "<%=member %> scope = "request"/>
<c:set target = "${m }" property = "id" value = "admin"/>
<c:set target = "${m }" property = "password" value = "admin"/>
<c:set target = "${m }" property = "name" value = "김철수"/>

<jsp:forward page="jstlResult2.jsp"/>



</body>
</html>