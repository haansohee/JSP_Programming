<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<!--  request Header 관련 메서드 실습. -->
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Enumeration headerEnum = request.getHeaderNames();
while (headerEnum.hasMoreElements())
{
	String hName = (String)headerEnum.nextElement();
	String hValue = request.getHeader(hName);
	out.println(hName + " = "+  hValue + "<br>");
}
%>
</body>
</html>