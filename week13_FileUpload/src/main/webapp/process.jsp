<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Enumeration" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MultipartRequest multi = new MultipartRequest(request, "/Users/hansohee/inhatc/2-2/JSP/week13_upload/",
													5*1024*1024,
													"utf-8",
													new DefaultFileRenamePolicy());  // IOException 에러 난다..

	String title1 = multi.getParameter("title1");
	String title2 = multi.getParameter("title2");
	
	Enumeration files = multi.getFileNames();
	
	String name1= (String)files.nextElement();
	String filename1 = multi.getFilesystemName(name1);
	String original1 = multi.getOriginalFileName(name1);
	
	String name2= (String)files.nextElement();
	String filename2 = multi.getFilesystemName(name2);
	String original2 = multi.getOriginalFileName(name2);
	/* String type = multi.getContentType(name); */
%>
<h3>
제목 : <%= title1 %> <br>
<hr>
요청 파라미터 : <%= name1 %> <br>
실제 파일 이름 : <%= original1 %> <br>
저장 파일 이름 :  <%= filename1 %> <br>
<%-- 파일 콘텐츠 유형 :  <%= type %> --%>
<br><br>
제목 : <%= title1 %> <br>
<hr>
요청 파라미터 : <%= name2 %> <br>
실제 파일 이름 : <%= original2 %> <br>
저장 파일 이름 :  <%= filename2 %> <br>
</h3>
</body>
</html>