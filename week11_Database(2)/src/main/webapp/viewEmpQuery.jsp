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
	
	Statement state = null;
	ResultSet rs = null;
	
	String sql = "select * from emp where empno = " + empno;
	state = conn.createStatement();
	rs = state.executeQuery(sql);
	
	// 결과 값이 잘 가져와졌다면 rs.next()에 값이 있겠지요...
	
	int result = 0;
	
	if(rs.next()) {
		// 값이 있다면 request객체에 저장해서 넘겨야 함
		result = 1;  // 값을 못 가져왔다면 result 값이 0이겠지요?!
		request.setAttribute("empno", rs.getString("empno"));
		request.setAttribute("empname", rs.getString("empname"));
		request.setAttribute("empdept", rs.getString("empdept"));
		request.setAttribute("empjob", rs.getString("empjob"));
		request.setAttribute("empsal", rs.getInt("empsal"));
	}
	
	// 값이 없을 수도 있으니까 result값도 넘겨주기
	request.setAttribute("result", result);
	
	rs.close();
	state.close();
	conn.close();
%>
<!--  페이지로 값 넘기기 -->
<jsp:forward page = "viewEmpResult.jsp"></jsp:forward>
</body>
</html>