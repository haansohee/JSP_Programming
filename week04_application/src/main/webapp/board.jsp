<%@ page import = "java.io.*, java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--  게시판 화면에 입력된 내용을 저장하는 JSP 페이지 -->
<body>
<h3> 게시판 글쓰기 결과 화면 </h3>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	Date date = new Date();
	Long time = date.getTime();  // 현재 시작을 밀리세컨드 단위로 가져오는 메서드
	String fileName = time + ".txt";
	String filePath = application.getRealPath("WEB-INF/board/" + fileName);
	// 코드 입력 전에 반드시 이클립스 week04_application/webapp/WEB-INF 폴터 아래에 board 폴더를 먼저 생성해야함.
	
	FileWriter writer = new FileWriter(filePath);
	
	try
	{
		String str = "제목 : " +title + "\n";
		str += "글쓴이 : " + name + "\n";
		str += content;
		writer.write(str);
		out.println("저장되었습니다.");
	} catch (IOException e) {
		out.println("파일에 데이터를 저장할 수 없습니다.");
	} finally {
		writer.close();
	}
%>

<br><br>

<!-- 파일 입출력 확장하기. '내용 보기' 버튼을 클릭 하면 '게시판 내용' 보기 화면으로 넘어간다. -> <form> 태그를 이용.
	
저장된 내용을 읽어오기 위해서는 파일명을 넘겨줘야 함. -> <form>태그 내에서 <input type = "hidden" name = value = > 형식을 이용.
	
게시판 내용 - 자기가 가장 유용하게 쓰고 있는 앱 소개

type = "hidden" 사용하는 이유 : http 프로토콜의 비연결성 특성 때문. 이전 요청 처리에 대한 값을 다음 요청에서도 연속성을 갖기 위해 사용. 세션 등을 이용하면 대체 가능함. -->

<form action = "board2.jsp" method = "post">
<input type = "hidden" name = "fileName" value = "<%= fileName %>">  <!--  변수 넘겨줘야 하니까 표현식 사용. -->>
<input type = "submit" value = "내용 보기">
</form>
</head>
</body>
</html>