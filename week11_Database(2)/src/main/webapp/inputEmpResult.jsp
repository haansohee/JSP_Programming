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
<c:choose>
	<c:when test="${empnoChk > 0 }">
		<script type = "text/javascript">
			// 이미 등록되어 있는 것이니까 오류난 경우...
			alert("이미 등록된 사원 번호입니다.");
			history.go(-1);  // 현재 페이지에서의 바로 이전 페이지로 넘어감.
		</script>
	</c:when>
	
	<c:when test = "${result > 0 }">
		<script type = "text/javascript">
			// 등록 성공
			alert("사원 등록 성공.");
			location.href="queryEmp.jsp";
		</script>
	</c:when>
	
	<c:when test = "${result <= 0 }">
		<script type = "text/javascript">
			alert("사원 등록 실패.");
			history.go(-1);
		</script>
	</c:when>
	
</c:choose>

</body>
</html>