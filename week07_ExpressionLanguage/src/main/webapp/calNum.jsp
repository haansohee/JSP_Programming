<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 두 수를 입력받아 작은 수에서 큰 수까지의 합을 출력하는 예제. 입력 페이지 -> 처리 페이지 -> 출력 페이지 
		(2) 처리 페이지 -->
<title>Insert title here</title>
</head>
<body>
<%
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	int sum = 0;
	for (int i = num1; i <= num2; i++) {
		sum += i;
	}
	
	request.setAttribute("num1", num1);
	request.setAttribute("num2", num2);
	request.setAttribute("sum", sum);  // 값 저장.  이 페이지는 실제 로직컬한 부분을 처리하는 것이기 때문에 따로 출력할 필요도 없음. 그러므로 jsp forward 액션 태그를 사용하여 값을 출력 페이지로 넘겨준다.
%>

<jsp:forward page = "calResult2.jsp"/>  <!-- 페이지로 넘겨질 때, request, response 값들을 같이 넘겨주는 forward. -->
</body>
</html>