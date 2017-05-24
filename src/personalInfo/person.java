package personalInfo;
import java.sql.ResultSet;
import java.sql.SQLException;

import DBconnect.DBconnect;

public class person {
	private static String user_name = null;
	private static String user_id = null;
	private static String email = null;
	
	public person(){
		
	}
	
	static public void  clear(){
		user_name = null;
		user_id = null;
		email = null;
	}
	
	public void get(String id){
		user_id = id;
		DBconnect con = new DBconnect();
		con.connect();
		
		ResultSet res = con.query("SELECT user_name FROM user WHERE user_id='" + id + "';");
		
		try {
			if(res.next()){
				user_name = res.getString("user_name");
				System.out.println(res.getString("user_name"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		res = con.query("SELECT email FROM user WHERE user_id='" + user_id + "';");
		try {
			if(res.next()){
				email = res.getString("email");
				System.out.println(res.getString("email"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		con.close();
	}
	
	public String getUserID(){
		return user_id;
	}
	
	public String getUserName(){
		return user_name;
	}
	
	public String getUserEmail(){
		return email;
	}
	
	public static void main(String[] args) {
		
	}
}
