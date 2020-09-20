package p0428;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBDemo1 {

	public static void main(String[] args) {
		String jdbcDriver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost/sungjuk?serverTimezone=UTC";
		Connection conn = null;
		PreparedStatement pstmt = null; // 미리 준비한 sql
		ResultSet rs = null; // 데이터를 읽기위해 담아 놓는 변수
		String sql = "select * from student";
		try {
			Class.forName(jdbcDriver);
			System.out.println("데이터베이스 연결중...");
			conn = DriverManager.getConnection(url, "root", "1234");
			System.out.println("데이터베이스 연결 성공");
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) { // 하나 씩 읽어오기
				System.out.print(rs.getInt((1))+"\t");
				System.out.print(rs.getInt("hakgwa_hakgwacode")+"\t");
				System.out.print(rs.getString((3))+"\t");
				System.out.print(rs.getString((4))+"\t");
				System.out.print(rs.getString((8))+"\t");
				System.out.print(rs.getString("hp")+"\n");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("JDBC 드라이버를 찾지 못했습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("데이터베이스 연결 실패");
		}
	}

}
