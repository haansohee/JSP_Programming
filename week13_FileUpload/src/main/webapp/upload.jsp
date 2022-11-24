<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String fileSave = "/fileSave";

	// 실제 경로
	String real = application.getRealPath(fileSave);  // real저장이 됨. 그럼 서버쪽에 저장이 되겠죠
	
	// 파일 사이즈 지정
	int max = 1024 * 1024 * 10;  // KB, MB, GB 순서
	
	MultipartRequest mr = new MultipartRequest(request, real, max, "utf-8", new DefaultFileRenamePolicy());
	
	String title = mr.getParameter("title");
	String writer = mr.getParameter("writer");
	
	// 저장된 파일 이름 가져오기
	String filename = mr.getFilesystemName("file");
	
	// 원본 파일
	String original = mr.getOriginalFileName("file");
	
	// 파일의 사이즈 가져오기
	File file = new File(real + "/" + filename);  // 경로를 설정해서 경로 안에 있는 파일을 가져오고
	int size = (int)file.length();  // length사용해서 길이 가져오면 됨.
%>

<h3>
파일 업로드 결과
</h3>

제목 : <%= title %> <br>
작성자 : <%= writer %> <br>
파일명 : <%= filename %> <br>
파일 원본 :  <%= original %> <br>
파일 크기 : <%= size %> <br>

<button onclick = "location.href='uploadView.jsp?filename=<%=filename %>'"> 파일 보기 </button>
</body>
</html>