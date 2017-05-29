package advanced;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBconnect.DBconnect;
import admin.ResultBean;

/**
 * Servlet implementation class AllBookServlet
 */
@WebServlet("/AllBookServlet")
public class AllBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	String[] info_name = {"book_id", "publisher","author", "title", "ISBN", "call_number", "tag", "publish_year"};
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllBookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
String sql = "SELECT book_id, title, author, tag, publisher, publish_year, ISBN, call_number FROM book;";
		
		DBconnect con = new DBconnect();
		con.connect();
		ResultSet res = con.query(sql);	
		try {
			/*
			 * count the total row number
			 */
			int row_num = 0;
			while(res.next()){
				row_num++;
			}
			res.beforeFirst();
			
			int col_num = info_name.length;
			String[][] book_info = new String[row_num][col_num];
			
			for(int i=0;res.next();i++){
				// load book_id into ResultBean
				ResultBean.set(res.getString("book_id"));
				
				for(int j=0;j<col_num;j++){
					book_info[i][j] = res.getString(info_name[j]);
				}
			}
			con.close();
			
			request.setAttribute("book_info", book_info);
			request.getRequestDispatcher("/Advanced-result.jsp").forward(request, response);
			
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
		
	}

}
