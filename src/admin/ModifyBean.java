package admin;

import java.sql.ResultSet;
import java.sql.SQLException;

import DBconnect.DBconnect;

public class ModifyBean {
	
	private boolean isLoead = false;
	private static String book_id;
	private static String[] info_name = {"publisher","author", "title", "ISBN", "call_number", "tag", "publish_year"};
	private static String[] book_info;
	
	public boolean isLoad(){
		return isLoead;
	}
	
	public void set(String id){
		book_id = id;
	}
	
	public String getID(){
		return book_id;
	}
	
	public void loadBookInfo(){
		isLoead = true;
		book_info = new String[info_name.length];
		
		DBconnect con = new DBconnect();
		con.connect();
		String sql = "SELECT title, author, tag, publisher, publish_year, ISBN, call_number FROM book WHERE book_id='";
		sql = sql + book_id + "';";
		ResultSet res = con.query(sql);
		try {
			if(res.next()){
				for(int i=0;i<info_name.length;i++){
					book_info[i] = res.getString(info_name[i]);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		con.close();
	}
	
	public String getBookInfo(String info){
		String ret = null;
		for(int i=0;i<info_name.length;i++){
			if(info_name[i].equals(info)){
				ret = book_info[i];
				break;
			}
		}
		
		return ret;
	}
	
	public static void clear(){
		book_id = null;
		book_info = null;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
	
	}

}
