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
	request.setCharacterEncoding("utf-8");
	String empno = request.getParameter("empno");
	
	Statement stat = null;
	ResultSet rs = null;
	
	String sql1 = "select * from emp where empno=? ";
	
	int result = 0;
	
	if(rs.next()) {
		result = 1;
		request.setAttribute("empno", rs.getString("empno"));
		request.setAttribute("empname", rs.getString("empname"));
		request.setAttribute("empdept", rs.getString("empdept"));
		request.setAttribute("empjob", rs.getString("empjob"));
		request.setAttribute("empsal", rs.getString("empsal"));
		
		
	}
	request.setAttribute("result", result);
	
	
	rs.close();
	stat.close();
	conn.close();
%> 
<jsp:forward page = "updateEmpForm.jsp"></jsp:forward>
</body>
</html>