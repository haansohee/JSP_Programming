<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 등록하려는 사원번호가 있다면 insert하면 안되고, 없으면 insert -->
<%@ include file = "DBconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String empno = request.getParameter("empno");
	String empname = request.getParameter("empname");
	String empdept = request.getParameter("empdept");
	String empjob = request.getParameter("empjob");
	int empsal = Integer.parseInt(request.getParameter("empsal"));
	
	/* Statement 객체는 한번 실행하면 그 후로 실행 못하는 정적 실행 객체.
	그래서! 동적 실행 객체를 사용해야 함. */
	PreparedStatement pstat = null;
	ResultSet rs = null;
	
	String sql1 = "select * from emp where empno=? ";
	pstat = conn.prepareStatement(sql1);
	pstat.setString(1, empno);  // ?의 index는 1부터 시작한다.
	rs = pstat.executeQuery();
	
	
	int empnoChk = 0;
	int result = 0;
	
	if(rs.next()) {
		// 이미 테이블에 있는 사원 번호 => 등록 불가능.
		empnoChk = 1;
	} else {
		// 테이블에 사원 번호가 없는 경우 => 등록 가능.
		String sql2 = "insert into emp values (?, ?, ?, ?, ?)";
		pstat = conn.prepareStatement(sql2);
		pstat.setString(1, empno);  // 1번째 ?에는 empno,
		pstat.setString(2, empname); // 2번째 ? empname
		pstat.setString(3, empdept);  // 3번째 ? empdept,
		pstat.setString(4, empjob);  // 4번째 ? empjob,
		pstat.setInt(5, empsal);  // 5번째 ? empsal 대입
		
		// 쿼리 실행
		result = pstat.executeUpdate();
	}
	
	// request객체 이용하아여 result와 empnoChk 넘기기
	request.setAttribute("result", result);
	request.setAttribute("empnoChk", empnoChk);
	
	
	rs.close();
	pstat.close();
	conn.close();
%> 

<!-- 페이지로 값 넘기기. -->

<jsp:forward page="inputEmpResult.jsp"></jsp:forward>
</body>
</html>