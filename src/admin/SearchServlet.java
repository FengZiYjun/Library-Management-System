package admin;

import java.io.IOException;
import admin.ResultBean;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBconnect.DBconnect;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	String[] info_name = {"book_id", "publisher","author", "title", "ISBN", "call_number", "tag", "publish_year"};
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
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
		
		String sql = "SELECT book_id, title, author, tag, publisher, publish_year, ISBN, call_number FROM book";
		String where = "WHERE";
		
		String para = new String();
		for(int i=0;i<info_name.length;i++){
			para = request.getParameter(info_name[i]);
			if(para != null && para.length() > 0){
				if(!where.equals("WHERE")){
					where = where + " AND";
				}
				where = where + " " + info_name[i] + " LIKE '%" + para + "%'";
			}
		}
		if(!where.equals("WHERE")){
			sql = sql + " " + where;
		}
		sql = sql + ";";
		System.out.println(sql);
		
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
			request.getRequestDispatcher("/admin-result.jsp").forward(request, response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args){
		
	}
}
