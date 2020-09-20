package db.event;

import java.sql.*;
import java.util.Scanner;

public class EventRegist {
	
	// 전역 변수
	Scanner sc = new Scanner(System.in);
	String jdbcDriver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public EventRegist() {
		connectDB();
		System.out.println("# 이벤트 등록을 위해 이름과 이메일을 입력하세요.");
		System.out.print("이름 : ");
		String name = sc.next();
		System.out.print("이메일 : ");
		String email = sc.next();
		registerUser(name, email);
		printList();
	}
	
	public void connectDB() {
		
		try {
			Class.forName(jdbcDriver);
			System.out.println("데이터베이스 연결중...");
			con = DriverManager.getConnection(url, "root", "1234");
			System.out.println("데이터베이스 연결 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void registerUser(String name, String email) {
		String sql = "insert into event values(?,?)";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void printList() {
		System.out.println("# 등록자 명단 #");
		String sql = "select * from event";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				System.out.println(rs.getString(1) + "," + rs.getString(2));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
//		EventRegist er = new EventRegist();
		new EventRegist();
		
	}
	
}
