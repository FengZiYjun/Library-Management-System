package loan;

import java.sql.ResultSet;
import java.sql.SQLException;
import DBconnect.DBconnect;

public class LoanBean {
	
	static private String user_id;
	static private String[][] BookInfo;
	static private int row_num = 0;
	
	private static boolean isLoaded = false;
	
	public LoanBean(){
		
	}
	
	public boolean isLoaded(){
		return isLoaded;
	}
	
	public static void clear(){
		user_id = null;
		BookInfo = null;
		row_num = 0;
		isLoaded = false;
	}
	
	public int getRowNum(){
		return row_num;
	}
	
	public String[][] getBookInfo(){
		return BookInfo;
	}
	
	public void setUserID(String id){
		user_id = id;
	}

	public void setBookInfo(String id) {
		isLoaded = true;
		setUserID(id);
		
		DBconnect con = new DBconnect();
		con.connect();
		String sql = "SELECT book_id, title, borrow_time, author, tag, publisher, publish_year, ISBN, call_number" + 
		" FROM book NATURAL JOIN loan WHERE user_id ='" + user_id + "';";
		ResultSet res = con.query(sql);
		try {
			
			/*
			 * try this 
			 */
			while(res.next()){
				row_num++;
			}
			res.beforeFirst();
			
			int col_num = 9;  // the number of attributes is hard coded
			BookInfo = new String[row_num][col_num];
			for(int i=0;res.next();i++){
					// Here this can be improved by abstraction. 
					// failed code
					BookInfo[i][0] = res.getNString("book_id");
					BookInfo[i][1] = res.getNString("title");
					BookInfo[i][2] = res.getNString("borrow_time");
					BookInfo[i][3] = res.getNString("author");
					BookInfo[i][4] = res.getNString("tag");
					BookInfo[i][5] = res.getNString("publisher");
					BookInfo[i][6] = res.getNString("publish_year");
					BookInfo[i][7] = res.getNString("ISBN");
					BookInfo[i][8] = res.getNString("call_number");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
}
