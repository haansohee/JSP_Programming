<%@ page import = "java.io.FileReader"%>
<%@ page import = "java.io.BufferedReader"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--  텍스트 파일의 내용을 읽어서 웹 브라우저로 출력하는 프로그램 (상대 경로 이용) -->
<title>Insert title here</title>
</head>
<body>
<h3> 상대 경로를 이용한 파일 읽기 </h3>
<%
	String real = application.getRealPath("test.txt");
	
	BufferedReader br = new BufferedReader(new FileReader(real));
	
	while(true)
	{
		String str = br.readLine();
		
		if (str == null)
		{
			break;
		}
		
		out.println(str + "<br>");
	}
	br.close();
%>
</body>
</html>