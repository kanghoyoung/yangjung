package p0429;

import java.util.Scanner;

public class Exam08 {

	public static void main(String[] args) {
		System.out.println("삼각형의 넓이를 구합니다.");
		Scanner sc = new Scanner(System.in);
		System.out.print("밑변:");
		float num = sc.nextFloat(); // 밑변
		System.out.print("높이:");
		float num2 = sc.nextFloat(); // 높이
		System.out.printf("넓이는 %.3f입니다.", (num*num2)/2.0);
	}

}
