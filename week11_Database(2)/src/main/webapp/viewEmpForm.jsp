<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function check() {
		if(!frm.empno.value) {
			alert("사원 번호를 입력하세요.");
			frm.empno.focus();
			return false;
		}
	}
</script>
<body>
<h3> 사원 정보 조회 화면 </h3>

<form action = "viewEmpQuery.jsp" name = "frm" onsubmit = "retur check()">

조회할 사원 번호를 입력하세요 : <input type = "number" name = "empno" autofocus = "autofocus">
<br><br>
<input type = "submit" value = "조회">
<input type = "reset" value = "취소">
</form>
<br><br>
<!-- 메뉴화면으로 돌아가는 버튼 -->
<form action = "menu.jsp">
	<input type = "submit" value = "메뉴 화면">
</form>
</body>
</html>