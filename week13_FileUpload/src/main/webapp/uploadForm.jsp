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
<form action = "process.jsp" method = "post" enctype = "multipart/form-data">
	<p> 제목1 : <input type = "text" name = "title1"> 
	<p> 파일1 : <input type = "file" name = "fileName1"> 
	<p> <input type = "submit" value = "submit"> 
	<br>
	
	<p> 제목2 : <input type = "text" name = "title2"> 
	<p> 파일2 : <input type = "file" name = "fileName2"> 
	<p> <input type = "submit" value = "submit"> 
</form>
</body>
</html>