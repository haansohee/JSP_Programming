<%-- jsp 실습. 두 수의 곱을 선언부를 이용하여 출력. --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <%-- 지시자 (directive) 
    jsp 페이지에 대한정보를 지정. 
    jsp가 생성하는 문서의 타입, 출력 버퍼의 크기, 에러 페이지 등.
    jsp 페이지에서 필요로 하는 정보 설정.--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!  
	public int multiply(int x, int y) {
	return (x * y);
	
}
%> <%-- 선언부.(declaration)
	사이에 저버 메서드 작성이 가능하고, 선언부의 함수는 자바 메서드 문법 구조와 동일. --%>

<h1> 두 수의 곱 구하기 </h1>
<h2> 13 * 19 = <%= multiply(13, 19) %> </h2>
<%--표현식 <%= %> 사이에 자바식이 들어갈 수 있고, 상수나 변수 이름 하나로 구성될 수도 있음.
연산자를 포함할 수 있고, 리턴값이 있는 메서드 호출이 가능함. --%>

</body>
</html>