package p0415;

import java.util.Scanner;

public class Exam05 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("학점을 입력하세요 ==> ");
		char ch = sc.next().charAt(0);
		if('A'==ch || 'B'==ch) {
			System.out.printf("참 잘 하였습니다.");
		}else if('C'==ch || 'D'==ch) {
			System.out.printf("좀 더 노력하세요.");
		}
//		String str = sc.next();
//		switch (str) {
//		case "A":
//		case "B":
//			System.out.println("참 잘 하였습니다.");
//			break;
//		case "C":
//		case "D":
//			System.out.println("좀 더 노력하세요.");
//			break;
//		case "F":
//			System.out.println("다음 학기에 다시 수강 하세요.");
//			break;
//		default:
//			System.out.println("잘못된 학점입니다.");
//		}
	}

}
