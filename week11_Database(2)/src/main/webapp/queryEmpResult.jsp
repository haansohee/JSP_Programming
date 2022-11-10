<%@ page import = "week11.Emp" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border = "1" style = "text-align: center;">
	<tr> <td colspan="5"> 사원 목록 조회 </td> </tr>
	<tr bgcolor = "orange">
		<th> 사번 </th> <th> 이름 </th> <th> 부서코드 </th> <th> 업무 </th> <th> 급여 </th>
	</tr>
	<%
		response.setContentType("text/html;charset=utf8");
		request.setCharacterEncoding("utf-8");
		
		// Object타입으로 넘어오니까 캐스팅 해 주어야 함.
		ArrayList<Emp> list =  (ArrayList<Emp>)request.getAttribute("list");
	%>
	<c:forEach var = "emp" items="${list }">
	<tr>
		<td> ${emp.getEmpno() }</td>
		<td> ${emp.getEmpname() }</td>
		<td> ${emp.getEmpdept() }</td>
		<td> ${emp.getEmpjob() }</td>
		<td> ${emp.getEmpsal() }</td>
	</tr>
	</c:forEach>
</table>
<br><br>
<!-- 메뉴화면으로 돌아가는 버튼 -->
<form action = "menu.jsp">
	<input type = "submit" value = "메뉴 화면">
</form>
</body>
</html>