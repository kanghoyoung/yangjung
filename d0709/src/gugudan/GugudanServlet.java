package gugudan;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GugudanServlet
 */
@WebServlet("/GugudanServlet")
public class GugudanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GugudanServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter script = response.getWriter();
		int num = Integer.parseInt(request.getParameter("gugu"));
		
		Gugudan g = new Gugudan(num);
		int result = g.getI();
		
		script.println("<html>");
		
		script.println("<head>");
		
		script.println("</head>");
		
		script.println("<body>");
		
		script.println("<table border=1>");
		
		script.println("<tr>");
		
		script.println("<td colspan=2>");
		
		script.println(num + " 단 출력");
		
		script.println("</td>");
		
		script.println("</tr>");
		
		script.println("<tr>");
		
		script.println("<td>");
		
		script.println(num + " * " + result);
		
		script.println("</td>");
		
		script.println("<td>");
		
		script.println(g.sum);
		
		script.println("</td>");
		
		script.println("</tr>");
		
		script.println("</table>");
		
		script.println("</body>");
		
		script.println("</html>");
	}

}
