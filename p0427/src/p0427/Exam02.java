package p0427;

import java.util.Scanner;

public class Exam02 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("아이디:");
		String id = sc.next();
		System.out.print("패스워드:");
		int password = sc.nextInt();
		if(id.equals("java") && password==12345) {
			System.out.print("로그인 성공");
		}else if(id.equals("java") && !(password==12345)){
			System.out.print("로그인 실패:패스워드가 틀림");
		}else if(!(id.equals("java")) && password==12345) {
			System.out.print("로그인 실패:아이디 존재하지 않음");
		}
	}

}
