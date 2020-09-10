package projectDAO;

import java.sql.*;
import java.util.*;

public class UserDAO {
	
	private static Connection getConnection() throws SQLException {
		Connection conn = null;
		
		try {
			String url = "jdbc:oracle:thin:@//localhost:1521/xe";
			String user = "system";
			String pwd = "1234";
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(url,user,pwd);
			System.out.println("드라이버 로딩 성공");
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패");
		}
		return conn;
	}

	
	public boolean insert(UserVO vo) {
		boolean result = false;
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			
			String sql = "INSERT INTO userTbl VALUES (?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getNo());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getEmail());
			pstmt.setString(4, vo.getPwd());
			int count = pstmt.executeUpdate();
			result = (count == 1);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(conn!=null) {
					conn.close();
				}
				if(pstmt!=null) {
					pstmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public static List<UserVO> selectAllUsers() {
		ArrayList<UserVO> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM userTbl";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int no = rs.getInt("no");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String pwd = rs.getString("pwd");
				UserVO vo = new UserVO(no, name, email, pwd);
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
}
