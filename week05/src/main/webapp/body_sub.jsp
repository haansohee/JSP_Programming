<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jsp param 태그의 동일 파라미터 예제  -->
<!--  parameter 값받기 -->
<title>Insert title here</title>
</head>
<body>
body_sub 에서 name 파라미터 값 : <%= request.getParameter("name") %>
<br>
name 파라미터 값 목록 : <!--  값을 배열처럼 갖고 있으니 -->
<ul>
<%
	String[] nameArray = request.getParameterValues("name");
	for (String name : nameArray) {
		out.println("<li>" + name + "</li>");
	}
%>
<%-- <%
	String[] nameArray = request.getParameterValues("name");
	for (String name : nameArray) {
%>
	<li> <%= name %> </li>
<%	}  %> --%>
</ul>
</body>
</html>