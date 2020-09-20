package p0427;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dbdemo {
	public static Connection makeConnection() {
		Connection con = null;
		String url =
			 "jdbc:mysql://localhost/sample?serverTimezone=UTC"; // sample 데이터베이스 이름
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("데이터베이스 연결중...");
			con = DriverManager.getConnection(url, "root", "1234");
			System.out.println("데이터베이스 연결성공");
		} catch (ClassNotFoundException e) {
			System.out.println("Jdbc 드라이버를 찾지 못했습니다.");
		} catch (SQLException e) {
			e.printStackTrace(); // 에러 메세지 출력
			System.out.println("데이터베이스 연결 실패");
		}
		
		return con;
	}
	
	
	public static void main(String[] args) {
		makeConnection();
	}

}
