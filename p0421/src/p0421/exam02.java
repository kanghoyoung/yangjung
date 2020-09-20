package p0421;

import java.util.Scanner;

public class exam02 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.printf("두 개의 실수를 입력하세요.\n");
		double d = sc.nextDouble();
		double d2 = sc.nextDouble();
		
		System.out.printf("입력 받은 두 수를 int로 변환: %d %d\n", (int)d, (int)d2);
		int plus = (int)d + (int)d2; // 합계
		double x = plus / 2d; // 평균
		System.out.printf("두 수의 합은 " + (double)plus + " 입니다.\n");
		System.out.printf("두 수의 평균은 " + x + " 입니다.");

		sc.close();
	}

}
