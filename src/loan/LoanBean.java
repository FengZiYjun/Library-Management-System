package loan;

import java.awt.print.Book;
import java.sql.Array;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import DBconnect.DBconnect;

public class LoanBean {
	
	public boolean isLoaded = false;
	private String[][] BookInfo;
	
	public LoanBean(){
		
	}



	public void setBookInfo() {
		isLoaded = true;
		DBconnect con = new DBconnect();
		con.connect();
		ResultSet res = con.query("");
		try {
			int row_num = 0;  // how to get the number of rows using gdbc?
			int col_num = 0;  // the number of attributes is hard coded
			BookInfo = new String[row_num][col_num];
			for(int i=0;res.next();i++){
				for(int j=0;j<col_num;j++){
					BookInfo[i][j] = res.getNString("book_id");
					// .... 
				}
				
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
