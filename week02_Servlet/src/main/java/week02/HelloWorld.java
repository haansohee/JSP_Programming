package week02;
// Servlet 호출 예제 1 - PServlet호출 예제 1 - Get방식 : 주소에 매개변수를 붙여서 호출하는 방식. HTML 문서에서 서블릿을 호출.
// Servlet호출 예제 2 -Post방식 : 매개변수를 본문에 포함시켜 호출하는 방식.
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HelloServlet")
public class HelloWorld extends HttpServlet {  // HttpServlet 상속받아짐. HttpServlet 메서드를 재정의(override)
	private static final long serialVersionUID = 1L;
       
    public HelloWorld() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset = utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h1> Hello World Servlet doGet() 페이지입니다. </h1>");
		out.println("</body></html>");
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// response.setContentType("text/html;charset = utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h1> Hello World Servlet doPost() 페이지입니다. </h1>");
		out.println("</body></html>");
		out.close();
	}

}
