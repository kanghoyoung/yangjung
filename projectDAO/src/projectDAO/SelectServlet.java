package projectDAO;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SelectServlet
 */
@WebServlet("/select")
public class SelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		try {
			listUser(request, response);
		} catch (SQLException e) {
			throw new ServletException(e);
		}
	}
	
	private void listUser(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<UserVO> listUser = UserDAO.selectAllUsers();
		request.setAttribute("listUser", listUser);
		PrintWriter out = response.getWriter();
		out.print("<h2 align=center>사용자 리스트</h2><br>");
		out.print("<html><head><title>hhh</title></head><body>");
		out.print("<center><table border=1 width=60%>");
		out.print("<tr><td> no </td> <td> name </td> <td> email </td> <td> pwd </td></tr><br>");
		for(int i=0; i<listUser.size(); i++) {
			UserVO userVO = (UserVO)listUser.get(i);
			int no = userVO.getNo();
			String name = userVO.getName();
			out.print("<tr><td>"+userVO.getNo()+"</td>");
			out.print("<td>"+userVO.getName()+"</td>");
			out.print("<td>"+userVO.getEmail()+"</td>");
			out.print("<td>"+userVO.getPwd()+"</td></tr><br>");
		}
		out.print("</table></center></body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
