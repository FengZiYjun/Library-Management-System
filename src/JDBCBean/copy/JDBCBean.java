package JDBCBean.copy;

import java.sql.*;

/**
 *  Bean implementation class JDBCBean
 */
public class JDBCBean {

	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver"; 
	//static final String DB_URL = "jdbc:mysql://localhost:3306/db-book?useSSL=true";
	static final String DB_URL = "jdbc:mysql://localhost:3306/library?useSSL=true";
	static final String USER = "root";
	static final String PASS = "2507630";
	
	
	private static Connection con = null;
	private static Statement stmt = null;
	public static ResultSet res = null;
	
    public JDBCBean() {
        // TODO Auto-generated constructor stub
		try {
			Class.forName(JDBC_DRIVER);
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
    }
    
    
    // connect to database
    public void connectDB(){
    	try {
			System.out.println("Connecting to database...");
			con = DriverManager.getConnection(DB_URL,USER,PASS);
			System.out.println(con);
		}catch(Exception e){
			System.out.println("���ݿ�����ʧ��!!!"+e.getMessage());
		}
    }
    
    
    /*
     * SQL query return sql.ResultSet
     */
    public ResultSet query(String sql){

			//connectDB();
    	/*
    	try {
			System.out.println("Connecting to database...");
			con = DriverManager.getConnection(DB_URL,USER,PASS);
			System.out.println(con);
		}catch(Exception e){
			System.out.println("���ݿ�����ʧ��!!!"+e.getMessage());
		}*/
			
			System.out.println("Creating statement...");
			try {
				stmt = con.createStatement();
			} catch (SQLException e){
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			System.out.println("Executing query...");
			try {
				res = stmt.executeQuery(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
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