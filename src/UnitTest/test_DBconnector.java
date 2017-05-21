package UnitTest;
import DBconnect.DBconnect;
import java.sql.ResultSet;
import java.sql.SQLException;

public class test_DBconnector {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//DBconnect con = new DBconnect();
		DBconnect con = new DBconnect();
		con.connect();
	    //ResultSet rs = abc.query("SELECT * FROM classroom;");
	    ResultSet res = con.query("SELECT user_name FROM user WHERE user_id='001';");
		try {
			System.out.println(res.getString("user_name"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		con.close();
	}

}
