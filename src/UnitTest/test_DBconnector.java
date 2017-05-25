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
//		String sql = "SELECT book_id, title, borrow_time, author, tag, publisher, publish_year, ISBN, call_number" +
//		" FROM book NATURAL JOIN loan WHERE user_id =";
//		
//	    ResultSet res = con.query(sql + "'001';");
//		try {
//			while(res.next()){
//				System.out.println(res.getString("title"));
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		String sql = "insert into publisher value(\"star\");";
		System.out.println(con.update(sql));
		
		con.close();
		
	}

}
