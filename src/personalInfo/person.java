package personalInfo;
import java.sql.ResultSet;
import java.sql.SQLException;

import DBconnect.DBconnect;

public class person {
	private String user_name = null;
	private String user_id = null;
	private String email = null;
	
	public person(){
		
	}
	
	public void get(String id){
		this.user_id = id;
		DBconnect con = new DBconnect();
		con.connect();
		
		ResultSet res = con.query("SELECT user_name FROM user WHERE user_id='" + id + "';");
		
		try {
			if(res.next()){
				this.user_name = res.getString("user_name");
				System.out.println(res.getString("user_name"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		res = con.query("SELECT email FROM user WHERE user_id='" + this.user_id + "';");
		try {
			if(res.next()){
				this.email = res.getString("email");
				System.out.println(res.getString("email"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		con.close();
	}
	
	public String getUserName(){
		return user_name;
	}
	
	public String getUserEmail(){
		return email;
	}
	
	public static void main(String[] args) {
		person p = new person();
		p.get("001");
		System.out.println(p.getUserName());
	}
}
