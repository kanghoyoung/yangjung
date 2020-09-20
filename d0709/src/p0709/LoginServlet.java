package p0709;

import java.io.*;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        
    }
    
    /**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init() throws ServletException {
		System.out.println("init 메서드 호출");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		System.out.println("destroy 메서드 호출");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		System.out.println("아이디: "+user_id);
		System.out.println("비밀번호: "+user_pw);
		
		PrintWriter script = response.getWriter();
		script.println("<html>");
		script.println("<head>111");
		script.println("</head>");
		script.println("<body>");
		script.println("<h1>hello world</h1>");
		script.println("id:"+user_id+"<br>");
		script.println("password:"+user_pw);
		script.println("</body>");
		script.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		System.out.println("아이디1: "+user_id);
		System.out.println("비밀번호1: "+user_pw);
		
		PrintWriter script = response.getWriter();
		script.println("<html>");
		script.println("<head>111");
		script.println("</head>");
		script.println("<body>");
		script.println("<h1>hello world</h1>");
		script.println("id:"+user_id+"<br>");
		script.println("password:"+user_pw);
		script.println("</body>");
		script.println("</html>");
		
	}

}
