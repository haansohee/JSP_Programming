<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 데이터 관리 - Menu.jsp</title>
</head>
<body>
<table style = "paddig: 5px; margin: 10px; width: 33px; align-content: center;"> 
<tr> <th colspan="3" align = "center"> 메뉴 화면  </th> </tr>
<tr height = "10px"></tr>
<tr>
	<td> <button onclick = "location.href = 'queryEmp.jsp'"> 사원 목록 </button>
	<td> <button onclick = "location.href = 'inputEmpForm.jsp'"> 사원 등록 </button>
	<td> <button onclick = "location.href = 'viewEmpForm.jsp'"> 사원 조회 </button>
</tr>
</table>
</body>
</html>