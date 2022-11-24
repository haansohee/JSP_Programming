<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.util.List"%>
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
	String fileUploadPath = "/Users/hansohee/inhatc/2-2/JSP/week13_upload";

	DiskFileUpload upload = new DiskFileUpload();
	List items = upload.parseRequest(request);
	
	Iterator params = items.iterator();
	
	while(params.hasNext()) {
		FileItem item = (FileItem)params.next();
		if (item.isFormField()) {
			// 일반 데이터인 경우
			String title = item.getString("utf-8");
			out.println("<h3>" + title + "</h3>");
		} else {
			// 파일 데이터인 경우
			String fileName = item.getName();  // 여기에서 파일 네임은 내가 올릴 때의 경로까지 들어가 있으니까
			// 경로는 다 자르고 마지막 파일 이름만 가져오기
			fileName = fileName.substring(fileName.lastIndexOf("/"));
			File file = new File(fileUploadPath + "/" + fileName);
			item.write(file);
			out.println("파일 이름 : " + fileName + "<br>");
		}
	}
%>
</body>
</html>