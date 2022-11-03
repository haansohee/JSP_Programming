<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "./DBconn.jsp" %>

<table border = "1" width = "100%" style = "text-align : center;">
<tr>
	<th> 부서코드 </th>
	<th> 부서이름 </th>
	<th> 근무지 </th>
</tr>

<%
	Statement stat = null;
	ResultSet rs = null;
	stat = conn.createStatement();
	
	String sql = "select * from dept";
	rs = stat.executeQuery(sql);
	
	while(rs.next()) {
		// 각각의 값을 변수에 저장해서 표현식으로 출력해 보자.
		String deptNo = rs.getString("deptNo");  // deptNo은 테이블에 있는 칼럼명. 헷갈리니까 칼럼명이랑 변수명이랑 똑같이 해 주자.
		String deptName = rs.getString("deptName");
		String deptLoc = rs.getString("deptLoc");
%>
	<!--  테이블 안에다가 출력 -->
	
	<tr>
		<td> <%= deptNo %> </td>
		<td> <%= deptName %> </td>
		<td> <%= deptLoc %> </td>
	</tr>
<%	}
	rs.close();
	stat.close();
	conn.close();
%>
</table>
</body>
</html>