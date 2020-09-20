package p0427;

import java.util.Scanner;

public class Exam03 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.print("등급을 입력하세요 : ");
		char c = sc.next().charAt(0);
		if(c=='a' && c=='A') {
			System.out.print("우수 회원입니다.");
		}else if(c=='b' || c=='B') {
			System.out.print("일반 회원입니다.");
		}else{
			System.out.print("손님입니다.");
		}
	}

}
