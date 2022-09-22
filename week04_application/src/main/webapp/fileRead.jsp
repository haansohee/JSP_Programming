<%@ page import = "java.io.FileReader"%>
<%@ page import = "java.io.BufferedReader"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--  텍스트 파일의 내용을 읽어서 웹 브라우저로 출력하는 프로그램 (절대 경로 이용) -->
<title>Insert title here</title>
</head>
<body>
<h3> 절대 경로를 이용한 파일 읽기 </h3>
<%
	// 같은 WebContent 폴더에 있다고 해서 바로 읽어 올 수 없음.
	// String path = "test.txt";

	// 반드시 worksapce 경로를 통해 프로젝트 폴더까지 지정해 주어야 한다.
	String path = "/Users/hansohee/inhatc/2학년 2학기/JSP/week04_application/src/main/webapp/test.txt";
	
	BufferedReader br = new BufferedReader(new FileReader(path));
	
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