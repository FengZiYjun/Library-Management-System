package history;

import java.sql.ResultSet;
import java.sql.SQLException;


import DBconnect.DBconnect;

public class HistoryBean {

	static private String user_id;
	static private String[][] BookInfo;
	static private int row_num = 0;
	
	private static boolean isLoaded = false;
	
	public HistoryBean(){
		
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

	/*
	 * user_id needed to call this function
	 */
	public void setBookInfo(String id) {
		isLoaded = true;
		setUserID(id);
		
		DBconnect con = new DBconnect();
		con.connect();
		String sql = "SELECT book_id, title, borrow_time, return_time, author, tag, publisher, publish_year, call_number" + 
		" FROM book NATURAL JOIN history WHERE user_id ='" + user_id + "';";
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
					BookInfo[i][0] = res.getNString("book_id");
					BookInfo[i][1] = res.getNString("title");
					BookInfo[i][2] = res.getNString("borrow_time");
					BookInfo[i][3] = res.getNString("return_time");
					BookInfo[i][4] = res.getNString("author");
					BookInfo[i][5] = res.getNString("tag");
					BookInfo[i][6] = res.getNString("publisher");
					BookInfo[i][7] = res.getNString("publish_year");
					BookInfo[i][8] = res.getNString("call_number");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HistoryBean h = new HistoryBean();
		h.setBookInfo("002");
		System.out.println(h.getBookInfo());
	}

}
