<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--  EL에서 기본 객체 사용 예제 2 -->
<title>Insert title here</title>
</head>
<body>
${param.id }님, 안녕하세요. <br>
회원님이 관심 있는 스포츠 : ${paramValues.sports[0] }
					  ${paramValues.sports[1] }
					  ${paramValues.sports[2] }
					  ${paramValues.sports[3] }  <!-- 4개 중에 선택된 애들만 찍어줌. 선택되지 않은 애들(스포츠)은 찍혀지지 않음. -->
</body>
</html>