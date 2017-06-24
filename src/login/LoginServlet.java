package login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DBconnect.DBconnect;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    boolean loginCL(String user, String pawd) throws SQLException{
    	boolean ret = false;
    	DBconnect connector = new DBconnect();
    	connector.connect();
    	ResultSet res = connector.query("SELECT * FROM user WHERE user_id="+user+" AND password="+pawd+";");
    	if(res.next()){
    		System.out.println(res.getString("user_id")+" login!");
    		ret = true;
    	}
    	connector.close();
    	return ret;
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String user_id = request.getParameter("username");
		String password = request.getParameter("password");
		try {
			if(loginCL(user_id,password)){ 
				// need to improve to support more administrators
				if(user_id.equals("000")){
					//request.getRequestDispatcher("/WEB-INF/admin/administrator.jsp").forward(request, response);
					response.sendRedirect("admin/administrator.jsp");
				}else{
					request.setAttribute("id", user_id);
					request.getRequestDispatcher("/ui.jsp").forward(request, response);
				}
			}else{
				response.sendRedirect("index.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
