package week12_MVC;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = "*.do",
			initParams = {@WebInitParam(name = "config",
										value = "/WEB-INF/commandHandler.properties")})
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// mapping 정보를 저장하는 Map
	private Map<String, CommandHandler> commandHandlerMap = new HashMap<>();
	
	// 서블릿을 생성하고 초기화 할 때 제일 먼저 실행되는 메서드
	public void init(ServletConfig config) throws ServletException {
		String configFile = config.getInitParameter("config");
		Properties prop = new Properties();
		String configFilePath = config.getServletContext().getRealPath(configFile);
		
		try (FileInputStream fis = new FileInputStream(configFilePath)) {
			prop.load(fis);  // 설정 파일을 다 가져와서 load시키기.
		} catch (IOException e) {
			throw new ServletException(e);
		}
		
		// 속성 파일을 하나씩 읽어와서 Key(호출 패턴)와 실행 명령 클래스를 읽어서 Map에 저장.
		Iterator<Object> keyIter = prop.keySet().iterator();  // keySet() : Key값만 가져옴.	
		// key가 있으면 반복문 실행.
		while(keyIter.hasNext()) {
			String command = (String)keyIter.next();
			String handlerClassName = prop.getProperty(command);
			try {
				Class<?> handlerClass = Class.forName(handlerClassName);
				CommandHandler handlerInstance = (CommandHandler)handlerClass.newInstance();
				commandHandlerMap.put(command, handlerInstance);
			} catch (ClassNotFoundException e) {
				throw new ServletException(e);
			} catch (InstantiationException e) {
				throw new ServletException(e);
			} catch (IllegalAccessException e) {
				throw new ServletException(e);
			}
		}
	}
	
	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// URI = /week12_MVC/~.do
		String command = request.getRequestURI();
		
		// ContextPath = /week12_MVC
		command = command.substring(request.getContextPath().length()+1);
		// 위 명령어 실행 결과 command = ~.do 저장
		CommandHandler handler = commandHandlerMap.get(command);
		
		String viewPage = null;
		try {
			viewPage = handler.process(request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}
		
		if (viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage + ".jsp");
			dispatcher.forward(request, response);
		}
	}
		
	
	
//    public ControllerServlet() {
//        super();
//       
//    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			processRequest(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response) {
	// TODO Auto-generated method stub
		try {
			processRequest(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		processRequest(request, response);
		String command = request.getParameter("command");
		Object result = null;
		
		if (command.equals("greeting")) {
			result = "안녕하세요.";
		} else if (command.equals("date")) {
			result = new Date();
		} else {
			result = "Invalid type";
		}
		
		
		request.setAttribute("result", result);
		
		RequestDispatcher rd = request.getRequestDispatcher("simpleview.jsp");
		rd.forward(request, response);
	}

}
