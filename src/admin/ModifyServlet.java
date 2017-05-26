package admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBconnect.DBconnect;

/**
 * Servlet implementation class ModifyServlet
 */
@WebServlet("/ModifyServlet")
public class ModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static String[] info_name = {"publisher","author", "title", "ISBN", "call_number", "tag", "publish_year"};
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyServlet() {
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
		
		ModifyBean bean = new ModifyBean();
		
		String set = "SET";
		for(int i=0;i<info_name.length;i++){
			String old_value = bean.getBookInfo(info_name[i]);
			String new_value = request.getParameter(info_name[i]);
			if(!old_value.equals(new_value)){
				if(!set.equals("SET")){
					set = set + ",";
				}
				set = set + " " + info_name[i] + "='" + new_value + "'";
			}
		}
		
		// there are changes
		if(!set.equals("SET")){

			String where = " WHERE book_id='" + bean.getID() + "';";
			String sql = "UPDATE book " + set + where;
			
			DBconnect con = new DBconnect();
			con.connect();
			int ret = con.update(sql);
			if(ret > 0){
				System.out.println("successfully modify!");
			}
			con.close();
		}
		
		response.sendRedirect("administrator.jsp");
		
	}

}
