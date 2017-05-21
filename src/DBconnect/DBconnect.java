package DBconnect;

import java.sql.*;

public class DBconnect {
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver"; 
	static final String DB_URL = "jdbc:mysql://localhost:3306/library?useSSL=true";
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
			
		System.out.println("Executing query:\n  "+sql);
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
    
    public static void main(String[] args) {
    	/*
    	DBconnect con = new DBconnect();
    	con.connect();
    	ResultSet ret  = con.query("SELECT * FROM user WHERE user_id=001 AND password=2507630;");
    	try{
    		System.out.println(ret.getString("user_name"));
    	}catch(SQLException e){
    		System.out.println("shit");
    	}
    	con.close();*/
    	DBconnect connector = new DBconnect();
    	connector.connect();
    	ResultSet res = connector.query("SELECT * FROM user WHERE user_id=001 AND password=2507630;");
    	try {
			if(res.next()){
				System.out.println(res.getString("user_name"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	connector.close();
    }
}
