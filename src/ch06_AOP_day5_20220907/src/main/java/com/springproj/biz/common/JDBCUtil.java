package com.springproj.biz.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class JDBCUtil {
	
	public static Connection getConnection() {
		Connection conn = null;	// 지역변수라서 null 선언.
		
		// 1. 연결
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");	// 여기에 정보를 담아둔다는 것을 알려줌. DB 회사에서 알려주는 것이기 때문에 넣어주기만 하면 됨.
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
		return null;
	}
	
	public static void close(PreparedStatement pstmt, Connection conn) {
		if(pstmt != null) {	
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
	}
}
