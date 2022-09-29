<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--  액션 태그를 이용한 중복 영역 처리 예제. -->
</head>
<body>
<table width = "400" border = "1" cellpadding = "0" cellspacig = "0">
	<tr><td colspan = "2">
		<jsp:include page = "/top.jsp" flush = "false"/>
		</td>
	</tr>
	<tr><td width = "100" valign = "top">
		<jsp:include page = "/left.jsp" flush = "false"/>
		</td>
		<td width = "300" valign = "top">
			<!--  내용 부분 : 시작 --> 
			레이아웃 내용 부분  <br><br><br>
			<jsp:include page = "info.jsp"/>
			<!--  내용 부분 ; 끝  -->
		</td>
	</tr>
	<tr><td colspan = "2">  <!-- 각각의 행의 column이 2개가 되겠죵.. -->
		<jsp:include page = "/bottom.jsp" flush = "false"/>
		</td>
	</tr>
</table>
</body>
</html>