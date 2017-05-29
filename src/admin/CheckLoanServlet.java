package admin;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBconnect.DBconnect;

/**
 * Servlet implementation class CheckLoanServlet
 */
@WebServlet("/CheckLoanServlet")
public class CheckLoanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	String[] info_name = { "user_id", "book_id", "title","borrow_time","author","publisher",
			"publish_year","tag","ISBN", "call_number" };
	
	//public static String[][] book_info;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckLoanServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		DBconnect con = new DBconnect();
		con.connect();
		String sql = "SELECT user_id, book_id, title, borrow_time, author, tag, publisher, publish_year, ISBN, call_number" + 
				" FROM book NATURAL JOIN loan;";
		ResultSet res = con.query(sql);
		int row = 0;
		try {
			while(res.next()){
				row++;
			}
			res.beforeFirst();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String[][] book_info;
		if(row > 0){
			book_info = new String[row][info_name.length];
			try {
				for(int i=0;res.next();i++){
					for(int j=0;j<info_name.length;j++){
						book_info[i][j] = res.getString(info_name[j]);
					}
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			book_info = null;
		}
		con.close();
		
		request.setAttribute("book_info", book_info);
		request.getRequestDispatcher("/admin-loan.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
