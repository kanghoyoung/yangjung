package p0427;

import java.util.Scanner;

public class Exam05 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("혜택 등급을 입력하세요 : ");
		String s = sc.next();
		if(s.equals("A")) {
			System.out.print("VVIP 혜택을 받으실 수 있습니다.");
		}else if(s.equals("B")) {
			System.out.print("VIP 혜택을 받으실 수 있습니다.");
		}else if(s.equals("C")) {
			System.out.print("우수 회원 혜택을 받으실 수 있습니다.");
		}else if(s.equals("D")) {
			System.out.print("일반 회원 혜택을 받으실 수 있습니다.");
		}else {
			System.out.print("혜택이 없습니다.");
		}
	}

}
