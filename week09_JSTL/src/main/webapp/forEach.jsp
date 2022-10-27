<%@ page import = "java.util.Date" %>
<%@ page import = "java.util.HashMap" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	HashMap<String, Object> mapData = new HashMap<String, Object>();
	mapData.put("id", "admin");
	mapData.put("today", new Date());
	mapData.put("age", 25);
%>

<c:set var = "map" value = "<%=mapData %>"/>

<c:forEach var = "m" items = "${map }">
	${m.key } = ${m.value } <br>
</c:forEach>

<hr>

<c:set var = "intArray" value = "<%= new int[] {10, 20, 30, 40, 50} %>"/>
<c:forEach var = "aVal" items = "${intArray }" begin = "2" end = "4" varStatus = "status">
	${status.index } - ${status.count } - [${aVal }] <br>  <!-- status.index : 인덱스 값.  status.count : 읽은 개수.  ${aVal} : 실제 배열에서 읽은 값. -->
</c:forEach>

<hr>

<h3> 구구단 : 7단 </h3>
<ul>
	<c:forEach var = "num" begin = "1" end = "9">
		<li> 7  * ${num } = ${7 * num }</li>
	</c:forEach>
</ul>

</body>
</html>