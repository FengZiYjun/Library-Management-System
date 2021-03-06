package admin;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DBconnect.DBconnect;

/**
 * Servlet implementation class RemoveServlet
 */
@WebServlet("/RemoveServlet")
public class RemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession(true);
		int row = (int) session.getAttribute("row");
		
		String book_id = ResultBean.get(row);
		ResultBean.clear();
		
		DBconnect con = new DBconnect();
		con.connect();
		String sql = "SELECT * FROM loan WHERE book_id='" + book_id + "';";
		ResultSet res = con.query(sql);
		
		try {
			if(!res.next()){
				sql = "DELETE FROM book where  book_id='" + book_id + "';";
				con.update(sql);
				con.close();
				
				System.out.println("successfully remove!");
				response.sendRedirect("admin-search.jsp");
			}else{
				
				con.close();
				System.out.println("fail to remove!");
				response.sendRedirect("admin-error.jsp");
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
