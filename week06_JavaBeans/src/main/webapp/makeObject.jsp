<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--  useBean 액션 태그를 사용하는 예제. MemberInfo객체 생성 후 forward 액션 태그를 사용하여 다른 페이지로 이동. -->
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id = "member" class = "week06_JavaBeans.MemberInfo" scope = "request"/>
<jsp:setProperty property = "id" name = "member" value = "admin"/>
<jsp:setProperty property = "name" name = "member" value = "홍길동"/>
<jsp:setProperty property = "email" name = "member" value = "admin@inhatc.ac.kr"/>

<jsp:forward page = "useObject.jsp"></jsp:forward> 
</body>
</html>