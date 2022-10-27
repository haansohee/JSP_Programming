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

<!-- http://localhost:8181/week09_JSTL/chooseTag.jsp?name=홍길동&?age=25 -->  <!-- 이건 당신의 이름은 홍길동입니다. 가 출력됨. -->
<!-- http://localhost:8181/week09_JSTL/chooseTag.jsp?name=이순신&age=25 -->  <!--  이건 당신은 20세 이상입니다. 가 출력됨. -->
<h3> JSTL 코어 choose 태그 결과 </h3>
<ul>
	<c:choose>
	
		<c:when test = "${param.name ==  '홍길동' }">
			<li> 당신의 이름은 ${param.name }입니다. </li>
		</c:when>
		
		<c:when test = "${param.age > 20 }">
			<li>당신은 20세 이상입니다. </li>
		</c:when>
		
		<c:otherwise>
			<li> 당신은 홍길동이 아니며, 20세 이하입니다. </li>
		</c:otherwise>
		
	</c:choose>
</ul>
</body>
</html>