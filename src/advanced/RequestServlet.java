package advanced;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import loan.LoanBean;
import personalInfo.person;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBconnect.DBconnect;
import admin.ResultBean;

/**
 * Servlet implementation class RequestServlet
 */
@WebServlet("/RequestServlet")
public class RequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestServlet() {
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
		
		LoanBean.clear();
		
		String signal = request.getParameter("signal");
		System.out.println("Controller output signal: " + signal);
		
		int row = 0;
		try{
			row = Integer.parseInt(signal);
		}catch(NumberFormatException e){
			e.getMessage();
		}
	
		
		String book_id = ResultBean.get(row);
		ResultBean.clear();
		
		System.out.println("ctrl output book_id: " + book_id);
		
		DBconnect con = new DBconnect();
		con.connect();
		
		String sql = "SELECT * FROM loan WHERE book_id='" + book_id +  "';";
		ResultSet res = con.query(sql);
		
		boolean insertion = false;
		try {
			if(res.first() == false){ // haven't been borrowed yet
				person p = new person();
				String user_id = p.getUserID();
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
				String time = df.format(new Date());
				sql = "INSERT INTO loan(book_id,user_id,borrow_time) VALUE('" 
						+ book_id + "','" 
						+ user_id + "','"
						+ time
						+"');";
				con.update(sql);
				System.out.println("successfully insert!");
				insertion = true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		con.close();
		
		if(insertion==false){
			response.sendRedirect("RequestHeld.jsp");
		}else{
			LoanBean.clear();
			response.sendRedirect("bookInfo.jsp");
		}

	}

}
