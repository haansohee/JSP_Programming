<%@ page import = "week07_ExpressionLanguage.Member" %>
<%@ page import = "java.util.List"%> 
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- streamAPI 사용하기 예제. map() 메서드 활용. 회원 목록을 갖는 member라는 리스트에서 회원의 나이만 리스트로 추출할 경우 -->
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- StreamAP를 사용하려면 collect형태여야 하니까 list 사용하기.  -->

<%
// Member객체로 리스트 생성하기.
	List<Member> memberList = Arrays.asList(new Member("홍길동", 20),
											new Member("이순신", 54),
											new Member("유관순", 19),
											new Member("왕건", 42));
	request.setAttribute("member", memberList);
%>

${nameList = member.stream().map(m -> m.name).toList() ; '' } <br>
${nameList } <br>

<!--  40세 이상의 나이만 가져오기. filter() 사용하기. -->
${member.stream().map(m -> m.age).filter(x -> x >= 40).toList()} <br>

<!-- 나이순으로 정렬하기. sort() 사용하기. sort() 함수는 디폴트가 오름차순. 내림차순으로 정렬하고 싶을 땐 sorted() 메서드에 값을 비교할 때 사용할 람다식을 전달해야함. -->
${sortedMem =  member.stream().sorted((x1, x2) -> x1.getAge() > x2.getAge() ? 1 : -1).toList() ; '' }  <!-- 세미콜론 연산자 사용하고 빈 문자를 통해 출력이 안 되도록 구현. -->


<!-- sort된 것을 가지고 이름을 출력해 보자. -->  
${sortedMem.stream().map(m -> m.name).toList() } <br>
</body>
</html>