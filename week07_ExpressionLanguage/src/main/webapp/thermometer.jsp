<%@ page import = "week07_ExpressionLanguage.Thermometer" %>
<%@ page import = "week07_ExpressionLanguage.FormatUtil" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--  EL에서 객체의 메서드 호출 예제 (1) : EL에서 메서드를 호출하는 jsp 파일 -->
<title>Insert title here</title>
</head>
<body>
<%
	Thermometer thermometer = new Thermometer();
	request.setAttribute("th", thermometer);
%>
<h3> 온도 변환 예제</h3>
${th.setCelsius("서울", 27.3) }
서울 온도 : 섭씨 ${th.getCelsius("서울") }도 / 화씨 ${th.getFahrenheit("서울") }
<br>
정보 : ${th.getInfo() }

<br><hr>

<!-- EL에서 정적 메서드 호출하기 예제 (1) : 정적 메서드 호출하는 jsp 파일 -->

가격은 ${FormatUtil.number(12345, '#,##0') }원입니다.

</body>
</html>