<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>

<h3>  < 개인 정보 입력 결과 > </h3>

<!-- 테이블로 구현하였다.  -->

<table border = "2">
<thead>
<tr>
	<th> 구분 </th> <th> 내용 </th>
</tr>
</thead>

<tbody>
<tr>
	<th>이름</th>
	<!--   request.getParameter() 메서드 사용  -->
	<td><%= request.getParameter("name") %></td>
</tr>

<tr>
	<th>나이</th>
	<td><%= request.getParameter("age") %></td>
</tr>

<tr>
	<th>성별</th>
	<td> <%= request.getParameter("gendar") %> </td>
</tr>

<tr>
	<th>주소</th>
	<td> <%= request.getParameter("addr") %> </td>
</tr>

<tr>
	<th>좋아하는 운동</th>
	<td><%
	String[] favorite = request.getParameterValues("activity");  // 좋아하는 운동 값들을 favorite 배열에 저장하여 출력해 준다.

	if (favorite != null)
	{
		for (int i = 0; i < favorite.length; i++)
		{
			out.println(favorite[i]);
		}
	}
	%></td>
</tr>
</tbody>
</table>

</body>
</html>