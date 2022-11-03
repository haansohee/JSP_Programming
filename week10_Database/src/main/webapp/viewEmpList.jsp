<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3> 사원 목록 보기</h3>
<table border = "1" width = "100%" style = "text-align : center;">
<tr>
	<th> 사원번호 </th>
	<th> 사원이름 </th>
	<th> 근무부서 </th>
	<th> 임무  </th>
	<th> 급여  </th>
</tr>

<%
	//1. JDBC 드라이버 로딩
	Class.forName("com.mysql.jdbc.Driver");

	String jdbcURL = "jdbc:mysql://localhost:3306/jspDB";
	String dbUser = "inhatc";
	String dbPass = "inhatc123";
	
	Connection conn = null;
	Statement stat = null;
	ResultSet rs = null;
	
	String sql = "select * from emp";
	
	// 데이터 베이스 커넥션 생성
	
	conn = DriverManager.getConnection(jdbcURL, dbUser, dbPass);
	
	// Statement 생성
	stat = conn.createStatement();
	
	// 쿼리 실행
	rs = stat.executeQuery(sql);
	
	// while문으로 처리함. 행을 한줄씩 읽어오니까...
	
	while(rs.next()) {
		out.println("<tr><td>");
		out.println(rs.getString("empno") + "</td><td>");
		out.println(rs.getString("empname") + "</td><td>");
		out.println(rs.getString("empdept") + "</td><td>");
		out.println(rs.getString("empjob") + "</td><td>");
		out.println(rs.getString("empsal") + "</td></tr>");
	}
	
	rs.close();
	stat.close();
	conn.close();
%>
</table> 
</body>
</html>