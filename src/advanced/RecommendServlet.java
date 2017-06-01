package advanced;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import personalInfo.person;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBconnect.DBconnect;

/**
 * Servlet implementation class RecommendServlet
 */
@WebServlet("/RecommendServlet")
public class RecommendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String[] info_name = { "book_id", "title", "author", "publisher", "publish_year", "tag", "ISBN", "call_number" };

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RecommendServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		/*
		 * query history and loan information
		 */
		person p = new person();
		String user_id = p.getUserID();
		String sql = "(SELECT book_id FROM loan WHERE user_id='" + user_id 
				+ "') UNION (SELECT book_id FROM history WHERE user_id='" + user_id + "');";

		DBconnect con = new DBconnect();
		con.connect();
		ResultSet res = con.query(sql);

		ArrayList<String> books = new ArrayList<String>();
		try {
			while (res.next()) {
				books.add(res.getString("book_id"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/*
		 * collect tags
		 */
		HashMap<String, Integer> tags = new HashMap<String, Integer>();
		for (int i = 0; i < books.size(); i++) {
			sql = "SELECT tag FROM book WHERE book_id='" + books.get(i) + "';";
			res = con.query(sql);
			try {
				if (res.next()) {
					String tag = res.getString("tag");
					if (!tags.containsKey(tag)) {
						tags.put(tag, 1);
					} else {
						int tmp = tags.get(tag);
						tags.put(tag, tmp + 1);
					}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		/*
		 * count the most tag
		 */
		Map.Entry<String, Integer> max_pair = null;
		for(Map.Entry<String, Integer> entry: tags.entrySet()){
			if(max_pair == null || entry.getValue().compareTo(max_pair.getValue()) > 0){
				max_pair = entry;
			}
		}
		
		String recommend = max_pair.getKey();

		/*
		 * query using this tag
		 */
		if (!recommend.equals("")) {
			sql = "SELECT book_id, title, author, tag, publisher, publish_year, ISBN, call_number FROM book";
			sql = sql + " WHERE tag='" + recommend + "';";
			res = con.query(sql);

			int row_num = 0;
			try {
				while (res.next()) {
					String id = res.getString("book_id");
					if (!books.contains(id)) {
						row_num++;
					}
				}
				res.beforeFirst();

				int col_num = info_name.length;
				String[][] book_info = new String[row_num][col_num];
				
				int i = 0;
				while(res.next()) {
					String id = res.getString("book_id");
					if (!books.contains(id)) {
						for (int j = 0; j < col_num; j++) {
							book_info[i][j] = res.getString(info_name[j]);
							
						}
						i++;
					}
				}
			
				request.setAttribute("book_info", book_info);

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		con.close();
		request.getRequestDispatcher("/Advanced-result.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
