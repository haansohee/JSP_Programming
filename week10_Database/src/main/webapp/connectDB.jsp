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
<h3> 데이터베이스 연결 </h3>
<%
	// 1. JDBC 드라이버 로딩
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
	
	// 쿼리 실행 결과 출력 
	if (rs != null) {
		out.println("디비 연결 성공." + "<br>");
	} else {
		out.println("디비 연결 실패." + "<br>");
	}
	
	rs.close();
	stat.close();
	conn.close();
%>
</body>
</html>