<%@ page import = "java.util.ArrayList" %>
<%@ page import = "week11.Emp" %>
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
	Statement stat = null;
	ResultSet rs = null;
	
	ArrayList<Emp> list = new ArrayList<>();
	
	String sql = "Select * From emp";
	
	stat = conn.createStatement();
	rs = stat.executeQuery(sql);
	
	// rs를 한 행씩 읽어와서 처리하기, query실행 결과 출력.
	while(rs.next()) {
		Emp emp = new Emp();  // 리스트에 저장할 Emp 객체 생성.
		emp.setEmpno(rs.getString(1));
		emp.setEmpname(rs.getString(2));
		emp.setEmpdept(rs.getString(3));
		emp.setEmpjob(rs.getString(4));
		emp.setEmpsal(rs.getInt(5));
		
		list.add(emp);  // 생성된 Emp 객체를 리스트에 저장.
	}
	
	request.setAttribute("list", list);
	
	rs.close();
	stat.close();
	conn.close();
	
	// 출력 화면으로 넘기기
	RequestDispatcher rd = request.getRequestDispatcher("queryEmpResult.jsp");
	rd.forward(request, response);
%>
</body>
</html>