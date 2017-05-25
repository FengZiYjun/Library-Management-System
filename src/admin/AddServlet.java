package admin;

import java.io.IOException;
import DBconnect.DBconnect;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet() {
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
		
		String book_id = request.getParameter("book_id");
		String publisher = request.getParameter("publisher");
		String author = request.getParameter("author");
		String title = request.getParameter("title");
		String ISBN = request.getParameter("ISBN");
		String call_number = request.getParameter("call_number");
		String tag = request.getParameter("tag");
		String publish_year = request.getParameter("publish_year");
		
		String sql = "INSERT INTO book(book_id,publisher,author,title,ISBN,call_number,tag,publish_year) value";
		sql = sql + "('" + book_id + "','" + publisher + "','" + author + "','" + title + "','" + ISBN + "','" +
		call_number + "','" + tag + "','" + publish_year + "');";
		
		int ret = 0;
		DBconnect con = new DBconnect();
		con.connect();
		con.update("INSERT INTO publisher value('" + publisher + "');");
		con.update("INSERT INTO author value('" + author + "');");
		ret = con.update(sql);
		con.close();
		
		if(ret > 0){
			System.out.println("successfully insert!");
			response.sendRedirect("administrator.jsp");
		}else{
			System.out.println("wrong insertion!");
			response.sendRedirect("admin-add.jsp");
		}
	}

}



