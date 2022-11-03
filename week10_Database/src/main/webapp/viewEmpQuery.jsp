<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "DBconn.jsp" %>

<%
	int empno = Integer.parseInt(request.getParameter("empno"));

	Statement stat = null;
	ResultSet rs = null;
	
	String sql = "select * from emp where empno = " + empno;
	
	stat = conn.createStatement();
	rs = stat.executeQuery(sql);
	
	while(rs.next()) {
		// rs객체에 있는 "empno" 을 읽어와서 request객체에 저장.
		request.setAttribute("empno", rs.getString("empno"));
		request.setAttribute("empname", rs.getString("empname"));
		request.setAttribute("empdept", rs.getString("empdept"));
		request.setAttribute("empjob", rs.getString("empjob"));
		request.setAttribute("empsal", rs.getString("empsal"));
	}
	
	rs.close();
	stat.close();
	conn.close();
%>
<jsp:forward page = "viewEmpResult.jsp"/>
</body>
</html>