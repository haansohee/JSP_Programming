<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 파일 업로드 하는 폼  -->
<form action = "processCommons.jsp" method = "post" enctype = "multipart/form-data">
	<p> 제목 : <input type = "text" name = "tite"> 
	<p> 파일 : <input type = "file" name = "fileName"> 
	<p> <input type = "submit" value = "submit"> 
</form>
</body>
</html>