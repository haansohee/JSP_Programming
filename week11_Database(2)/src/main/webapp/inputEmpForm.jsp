<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type = "text/javascript">
<!-- 간단한 데이터 유효성 검사  --> 
	function check() {
		/* 사원호가 들어왔는지 체크한다. */
		/* form태그를 거쳐서 접근가능함. */
		
		if (!frm.empno.value) { /* 값이 없다면 */
			alert("사원 번호를 입력하세요.");
			frm.empno.focus();  /* frm.empno으로 포커스를 맞춰준다. */
			return false;  /* return값이 false면 action으로 넘어가지 않고 form 태그를 다시 실행.*/
		}
		
		if (!frm.empname.value) {
			alert("이름을 입력하세요.");
			frm.empname.focus();
			return false;
		}
		
		if (!frm.empdept.value) {
			alert("부서 코드를 입력하세요.");
			frm.empdept.focus();
			return false;
		}
		
		if (!frm.empjob.value) {
			alert("업무를 입력하세요.");
			frm.empjob.focus();
			return false;
		}
		
		if (!frm.empsal.value) {
			alert("급여를 입력하세요.");
			frm.empsal.focus();
			return false;
		}
		
		return true;
	}
/* 데이터 유효성.. */
</script>
<body>
<!-- onsubmit => action으로 넘어가기 전에 먼저 실행됨. 그래서 보통 유효성 데이터 검사 함수를 정의함. -->
<form action = "inputEmpProc.jsp" name = "frm" onsubmit = "return check()">
	<table border = "1" style = "text-align: center;">
		<tr>
			<td bgcolor = "orange">  사원 번호 </td>
			<td> <input type = "text" name = "empno" autofocus = "autofocus"> </td>
		</tr>
		
		<tr>
			<td bgcolor = "orange">  이름 </td>
			<td> <input type = "text" name = "empname"> </td>
		</tr>
		
		<tr>
			<td bgcolor = "orange">  부서 코드 </td>
			<td> <input type = "text" name = "empdept"> </td>
		</tr>
		
		<tr>
			<td bgcolor = "orange">  업무 </td>
			<td> <input type = "text" name = "empjob"> </td>
		</tr>
		
		<tr>
			<td bgcolor = "orange">  급여 </td>
			<td> <input type = "text" name = "empsal"> </td>
		</tr>
		
		<tr>
			<td colspan = "2">
				<input type = "submit" value = "등록"> &nbsp; <input type = "reset" value = "취소">
			</td>
		</tr>
	</table>
</form>
<br><br>
<!-- 메뉴화면으로 돌아가는 버튼 -->
<form action = "menu.jsp">
	<input type = "submit" value = "메뉴 화면">
</form>
</body>
</html>