<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 액션 태그 예제 <jsp include> -->
</head>
<body>
<p> main.jsp에서 생성한 내용입니다. </p>

<jsp:include page="sub.jsp" flush="false"></jsp:include>
<!-- 파라미터 page 에는 포함할 jsp 페이지의 경로를 지정. flush에는 지정한 Jsp 페이지를 실행하기 전에 출력할 버퍼를 플러시 할지 여부를 결정함. -->

<p>include 이후의 내용입니다.</p>
</body>
</html>