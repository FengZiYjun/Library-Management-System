package DBconnect;

import java.sql.*;

public class DBconnect {
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver"; 
	static final String DB_URL = "jdbc:mysql://localhost:3306/db-book?useSSL=true";
	static final String USER = "root";
	static final String PASS = "2507630";
	
	private static Connection con = null;
	private static Statement stmt = null;
	public static ResultSet res = null;
	
    public DBconnect() {
		try {
			Class.forName(JDBC_DRIVER);
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
    }
    
    public void connect(){
    	System.out.println("Connecting to database...");
    	try {
			con = DriverManager.getConnection(DB_URL,USER,PASS);
			System.out.println(con);
		}catch(Exception e){
			System.out.println("fail to connect to database!\n"+e.getMessage());
		}
    }
    
    /*
     * SQL query return sql.ResultSet
     */
    public ResultSet query(String sql){

		System.out.println("Creating statement...");
		try {
			stmt = con.createStatement();
		} catch (SQLException e){
			e.printStackTrace();
		}
			
		System.out.println("Executing query...");
		try {
			res = stmt.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return res;
    }
    
    
    // close all connections
    public void close(){
    	try{
		    stmt.close();
		    con.close();
		}catch(SQLException se){
			se.printStackTrace();
		}
    }
    
}
