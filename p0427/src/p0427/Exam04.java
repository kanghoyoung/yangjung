package p0427;

import java.util.Scanner;

public class Exam04 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("등급을 입력하세요 : ");
		char c = sc.next().charAt(0);
		switch(c) {
		case 'a':
		case 'A':
			System.out.print("우수 회원 입니다.");
		break;
		case 'b':
		case 'B':
			System.out.print("일반 회원 입니다.");
		break;
		default:
			System.out.print("손님입니다.");
		
		}
	}

}
