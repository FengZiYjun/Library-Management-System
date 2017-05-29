package admin;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBconnect.DBconnect;

/**
 * Servlet implementation class ReturnServlet
 */
@WebServlet("/ReturnServlet")
public class ReturnServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReturnServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String book_id = request.getParameter("book_id");
		System.out.println("ReturnServlet outputs book_id: " + book_id);
		String user_id = request.getParameter("user_id");
		System.out.println("ReturnServlet outputs user_id: " + user_id);
		
		DBconnect con = new DBconnect();
		con.connect();
		String borrow_time = new String();
		String sql = "SELECT borrow_time FROM loan WHERE user_id='" + user_id + "' AND book_id='" + book_id + "';";
		ResultSet res = con.query(sql);
		try {
			if(res.next()){
				borrow_time = res.getString("borrow_time");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		sql = "DELETE FROM loan WHERE user_id='" + user_id + "' AND book_id='" + book_id + "';";
		con.update(sql);
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String return_time = df.format(new Date());
		sql = "INSERT INTO history(user_id, book_id, borrow_time, return_time) VALUE('" 
				+ user_id + "','"
				+ book_id + "','"
				+ borrow_time + "','"
				+ return_time
				+ "');";
		con.update(sql);
		
		con.close();
		
		response.sendRedirect("administrator.jsp");
	}

}
