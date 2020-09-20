package p0429;

import java.util.Scanner;

public class Exam09 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("성:");
		String s = sc.next();
		System.out.print("이름:");
		String s2 = sc.next();
		System.out.printf("안녕하세요. %s 씨.", s+s2);
	}

}
